#include <asm/asm.h>
#include <pmap.h>
#include <env.h>
#include <printf.h>
#include <kclock.h>
#include <trap.h>

void mips_init()
{
	printf("init.c:\tmips_init() is called\n");
	mips_detect_memory();
	
	mips_vm_init();
	page_init();
	env_init();
	env_check();
    struct Env* a;
    struct Env* b1e;
    struct Env* b2e;
    env_alloc(&a, 0);
    printf("^^^^finsh alloc\n");
    u_int b1 = fork(a);
    printf("^^^^finsh fork a\n");
    u_int b2 = fork(a);
    envid2env(b1, &b1e, 0);
    printf("^^finsh trans\n");
    fork(b1e);
    b2 = fork(b1e);
    envid2env(b2, &b2e, 0);
    lab3_output(b1);
    fork(b2e);
    lab3_output(a->env_id);
    printf("start 3^^^\n");
    printf(lab3_get_sum(b1));
    lab3_output(b1e);
    
	while(1);
	panic("init.c:\tend of mips_init() reached!");
	/*you can create some processes(env) here. in terms of binary code, please refer current directory/code_a.c
	 * code_b.c*/
    /*** exercise 3.9 ***/
	/*you may want to create process by MACRO, please read env.h file, in which you will find it. this MACRO is very
	 * interesting, have fun please*/
    ENV_CREATE_PRIORITY(user_A, 2);
    ENV_CREATE_PRIORITY(user_B, 1);
	
	trap_init();
	kclock_init();
    //env_run(envs);
	panic("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
	while(1);
	panic("init.c:\tend of mips_init() reached!");
}

void bcopy(const void *src, void *dst, size_t len)
{
	void *max;

	max = dst + len;
	// copy machine words while possible
	while (dst + 3 < max)
	{
		*(int *)dst = *(int *)src;
		dst+=4;
		src+=4;
	}
	// finish remaining 0-3 bytes
	while (dst < max)
	{
		*(char *)dst = *(char *)src;
		dst+=1;
		src+=1;
	}
}

void bzero(void *b, size_t len)
{
	void *max;

	max = b + len;

	//printf("init.c:\tzero from %x to %x\n",(int)b,(int)max);
	
	// zero machine words while possible

	while (b + 3 < max)
	{
		*(int *)b = 0;
		b+=4;
	}
	
	// finish remaining 0-3 bytes
	while (b < max)
	{
		*(char *)b++ = 0;
	}		
	
}
