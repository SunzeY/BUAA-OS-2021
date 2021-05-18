// implement fork from user space

#include "lib.h"
#include <mmu.h>
#include <env.h>

extern int get_sp();
u_int uget_sp(void) {
    u_int addr = get_sp();
    addr = ROUNDDOWN(addr, BY2PG);
    return addr;
}
/* ----------------- help functions ---------------- */

/* Overview:
 * 	Copy `len` bytes from `src` to `dst`.
 *
 * Pre-Condition:
 * 	`src` and `dst` can't be NULL. Also, the `src` area 
 * 	 shouldn't overlap the `dest`, otherwise the behavior of this 
 * 	 function is undefined.
 */
void user_bcopy(const void *src, void *dst, size_t len)
{
	void *max;

	//	writef("~~~~~~~~~~~~~~~~ src:%x dst:%x len:%x\n",(int)src,(int)dst,len);
	max = dst + len;

	// copy machine words while possible
	if (((int)src % 4 == 0) && ((int)dst % 4 == 0)) {
		while (dst + 3 < max) {
			*(int *)dst = *(int *)src;
			dst += 4;
			src += 4;
		}
	}

	// finish remaining 0-3 bytes
	while (dst < max) {
		*(char *)dst = *(char *)src;
		dst += 1;
		src += 1;
	}

	//for(;;);
}

/* Overview:
 * 	Sets the first n bytes of the block of memory 
 * pointed by `v` to zero.
 * 
 * Pre-Condition:
 * 	`v` must be valid.
 *
 * Post-Condition:
 * 	the content of the space(from `v` to `v`+ n) 
 * will be set to zero.
 */
void user_bzero(void *v, u_int n)
{
	char *p;
	int m;

	p = v;
	m = n;

	while (--m >= 0) {
		*p++ = 0;
	}
}
/*--------------------------------------------------------------*/

/* Overview:
 * 	Custom page fault handler - if faulting page is copy-on-write,
 * map in our own private writable copy.
 * 
 * Pre-Condition:
 * 	`va` is the address which leads to a TLBS exception.
 *
 * Post-Condition:
 *  Launch a user_panic if `va` is not a copy-on-write page.
 * Otherwise, this handler should map a private writable copy of 
 * the faulting page at correct address.
 */
/*** exercise 4.13 ***/
static void
pgfault(u_int va)
{
	u_int *tmp;
    int ret;
    //writef("fork.c:pgfault():\t va:%x\n",va);
    if ((((Pte*)(*vpt))[VPN(va)]&PTE_COW) == 0) {
        user_panic("User pgfault haddler facing a non-COW page\n");
    }
    va = ROUNDDOWN(va, BY2PG);

    //map the new page at a temporary place
    tmp = USTACKTOP;
    ret = syscall_mem_alloc(0, tmp, PTE_V|PTE_R);
    if (ret<0) {
        user_panic("User pgfault haddler mem_alloc faild\n");
    }
	//copy the content
    user_bcopy(va, tmp, BY2PG);

    //map the page on the appropriate place
	ret = syscall_mem_map(0, tmp, 0, va, PTE_V|PTE_R);
    if (ret<0) {
        user_panic("User pgfault haddler mem_map faild\n");
    }
    //unmap the temporary place
	ret = syscall_mem_unmap(0, tmp);
    if (ret<0) {
        user_panic("User pgfault haddler mem_unmap failed\n");
    }
    return;
}

/* Overview:
 * 	Map our virtual page `pn` (address pn*BY2PG) into the target `envid`
 * at the same virtual address.
 *
 * Post-Condition:
 *  if the page is writable or copy-on-write, the new mapping must be 
 * created copy on write and then our mapping must be marked 
 * copy on write as well. In another word, both of the new mapping and
 * our mapping should be copy-on-write if the page is writable or 
 * copy-on-write.
 * 
 * Hint:
 * 	PTE_LIBRARY indicates that the page is shared between processes.
 * A page with PTE_LIBRARY may have PTE_R at the same time. You
 * should process it correctly.
 */
/*** exercise 4.10 ***/
static void
duppage(u_int envid, u_int pn)
{
	u_int addr;
	u_int perm;

    addr = pn*BY2PG;
    
    perm = ((Pte*)(*vpt))[pn] & 0xfff;
    /*if (addr==0x407000) {
        user_panic("DEBUG: perm: %d, %d, %d, %d, %d", perm&PTE_LIBRARY, perm&PTE_V, perm&PTE_R, perm&PTE_COW);
    }*/
    if ((perm&PTE_R)==0) {
        if (syscall_mem_map(0, addr, envid, addr, perm)!=0) {
            user_panic("failed to dup read-only PTE\n");
        }
    }
    else if (perm&PTE_LIBRARY) {
        if (syscall_mem_map(0, addr, envid, addr, perm)!=0) {
            user_panic("failed to dup LIBARAY PTE\n");
        }
    }
    else if (perm&PTE_COW) {
        if (syscall_mem_map(0, addr, envid, addr, perm)!=0) {
            user_panic("failed to dup PTE which has been duplicated before\n");
        }
    }
    else {
         perm = perm | PTE_COW;
         int a = 0;
         //writef("chidid = %d\n addr = %x\n", envid, addr);
         if ((a=syscall_mem_map(0, addr, envid, addr, perm))!=0) {
            //writef("ERROR: %d\n", a);
            user_panic("failed to dup PTE with COW in child env\n");
         }
         if (syscall_mem_map(0, addr, 0, addr, perm)!=0) {
            user_panic("failed to dup PTE with COW in father env\n");
         }
    }
	//	user_panic("duppage not implemented");
}

/* Overview:
 * 	User-level fork. Create a child and then copy our address space
 * and page fault handler setup to the child.
 *
 * Hint: use vpd, vpt, and duppage.
 * Hint: remember to fix "env" in the child process!
 * Note: `set_pgfault_handler`(user/pgfault.c) is different from 
 *       `syscall_set_pgfault_handler`. 
 */
/*** exercise 4.9 4.15***/
extern void __asm_pgfault_handler(void);
int
fork(void)
{
	// Your code here.
	u_int newenvid;
	extern struct Env *envs;
	extern struct Env *env;
	u_int i;
    //writef("DEBUG: >>>>>fork_begin\n");
	//The parent installs pgfault using set_pgfault_handler
    set_pgfault_handler(pgfault);
    //writef("DEBUG: >>>>>finsih pgfault\n");

	//alloc a new alloc
    newenvid = syscall_env_alloc();
    //writef("DEBUG: >>>>>finsh env_alloc\n");
    if (newenvid == 0) { //in child env
        env = &envs[ENVX(syscall_getenvid())];
        return 0;
    }
    //writef("DEBUG: start duppage with COW setting ...\n");
    for (i=0; i < USTACKTOP; i+=BY2PG) {
        if ((((Pde*)(*vpd))[i>>PDSHIFT]&PTE_V) &&
            (((Pte*)(*vpt))[i>>PGSHIFT]&PTE_V)) {
                duppage(newenvid, VPN(i));
            }
    }
    //set_pgfault_handler(pgfault);
    
    //printf(">>>>>>>>finsh copy and try to set child env<<<<<<<\n");
    //in parent env
    int ret = 0;
    ret = syscall_mem_alloc(newenvid, UXSTACKTOP-BY2PG, PTE_V | PTE_R);
    if (ret<0) {
        user_panic("fork alloc mem failed\n");
    }
    ret = syscall_set_pgfault_handler(newenvid, __asm_pgfault_handler, UXSTACKTOP);
    if (ret<0) {
        user_panic("fork set pgfault_handler failed\n");
    }
    ret = syscall_set_env_status(newenvid, ENV_RUNNABLE);
    if (ret<0) {
        user_panic("fork set status failed\n");
    }
	return newenvid;
}


static int
myduppage(u_int envid, u_int pn)
{
	u_int addr;
	u_int perm;

    addr = pn*BY2PG;
    
    perm = ((Pte*)(*vpt))[pn] & 0xfff;
    /*if (addr==0x407000) {
        user_panic("DEBUG: perm: %d, %d, %d, %d, %d", perm&PTE_LIBRARY, perm&PTE_V, perm&PTE_R, perm&PTE_COW);
    }*/
    int ret = 0;
    if (perm&PTE_COW) {
        pgfault(addr);
        addr = pn*BY2PG;
        perm = ((Pte*)(*vpt))[pn] & 0xfff;
        if ((ret = syscall_mem_map(0, addr, envid, addr, perm))<0) {
            return ret;
            user_panic("failed to dup PTE which has been duplicated before\n");
        }
    }
    else {
         if ((ret = syscall_mem_map(0, addr, envid, addr, perm))!=0) {
         return ret;
            user_panic("failed to dup PTE with COW in father env\n");
         }
    }
	//	user_panic("duppage not implemented");
}
int
tfork(void)
{
	// Your code here.
	u_int newenvid;
	extern struct Env *envs;
	extern struct Env *env;
	u_int i;
    u_int critical_point = uget_sp();
    //writef("DEBUG: >>>>>fork_begin\n");
	//The parent installs pgfault using set_pgfault_handler
    set_pgfault_handler(pgfault);
    //writef("DEBUG: >>>>>finsih pgfault\n");

	//alloc a new alloc
    newenvid = syscall_env_alloc();
    //writef("DEBUG: >>>>>finsh env_alloc\n");
    if (newenvid == 0) { //in child env
        env = &envs[ENVX(syscall_getenvid())];
        return 0;
    }
    int ret = 0;
    //u_int critical_point = uget_sp();
   // writef("DEBUG: uget_sp is %x\n", critical_point);
    for (i=0; i < USTACKTOP-100*BY2PG; i+=BY2PG) {
        if ((((Pde*)(*vpd))[i>>PDSHIFT]&PTE_V) &&
            (((Pte*)(*vpt))[i>>PGSHIFT]&PTE_V)) {
               if(myduppage(newenvid, VPN(i)) < 0) {
                    return ret;
               };
            }
    }
    for (i=critical_point-100*BY2PG; i < USTACKTOP; i+=BY2PG) {
        if ((((Pde*)(*vpd))[i>>PDSHIFT]&PTE_V) &&
            (((Pte*)(*vpt))[i>>PGSHIFT]&PTE_V)) {
                duppage(newenvid, VPN(i));
            }
    }
    //duppage(newenvid, VPN(USTACKTOP-BY2PG));
    //set_pgfault_handler(pgfault);
    
    //printf(">>>>>>>>finsh copy and try to set child env<<<<<<<\n");
    //in parent env
    ret = syscall_mem_alloc(newenvid, UXSTACKTOP-BY2PG, PTE_V | PTE_R);
    if (ret<0) {
        return ret;
        user_panic("fork alloc mem failed\n");
    }
    ret = syscall_set_pgfault_handler(newenvid, __asm_pgfault_handler, UXSTACKTOP);
    if (ret<0) {
        return ret;
        user_panic("fork set pgfault_handler failed\n");
    }
    ret = syscall_set_env_status(newenvid, ENV_RUNNABLE);
    if (ret<0) {
        return ret;
        user_panic("fork set status failed\n");
    }
	return newenvid;
}
// Challenge!
int
sfork(void)
{
	user_panic("sfork not implemented");
	return -E_INVAL;
}
