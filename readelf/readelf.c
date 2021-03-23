/* This is a simplefied ELF reader.
 * You can contact me if you find any bugs.
 *
 * Luming Wang<wlm199558@126.com>
 */

#include "kerelf.h"
#include <stdio.h>

#define r_32(v) (((v&0xff)<<24)|((v&0xff00)<<8)|((v>>8)&0xff00)|((v>>24)&0xff))
#define r_16(v) (((v&0xff)<<8)|(v>>8)&0xff)
/* Overview:
 *   Check whether it is a ELF file.
 *
 * Pre-Condition:
 *   binary must longer than 4i byte.
 *
 * Post-Condition:
 *   Return 0 if `binary` isn't an elf. Otherwise
 * return 1.
 */
int is_elf_format(u_char *binary)
{
        Elf32_Ehdr *ehdr = (Elf32_Ehdr *)binary;
        if (ehdr->e_ident[EI_MAG0] == ELFMAG0 &&
                ehdr->e_ident[EI_MAG1] == ELFMAG1 &&
                ehdr->e_ident[EI_MAG2] == ELFMAG2 &&
                ehdr->e_ident[EI_MAG3] == ELFMAG3) {
                return 1;
        }

        return 0;
}

/* Overview:
 *   read an elf format binary file. get ELF's information
 *
 * Pre-Condition:
 *   `binary` can't be NULL and `size` is the size of binary.
 *
 * Post-Condition:
 *   Return 0 if success. Otherwise return < 0.
 *   If success, output address of every section in ELF.
 */
/*
    Exercise 1.2. Please complete func "readelf". 
*/
int readelf(u_char *binary, int size)
{
        Elf32_Ehdr *ehdr = (Elf32_Ehdr *)binary;

        int Nr;
	char ident;
	ident = ehdr -> e_ident[5];

        // check whether `binary` is a ELF file.
        if (size < 4 || !is_elf_format(binary)) {
                printf("not a standard elf format\n");
                return 0;
        }

	if (ident == 1) { //little endian

       		Elf32_Phdr *phdr = NULL;
        	u_char *ptr_ph_table = NULL;
        	Elf32_Half ph_entry_count;
        	Elf32_Half ph_entry_size;

       		// get section table addr, section header number and section header size.
		ptr_ph_table = ehdr -> e_phoff + binary;
		ph_entry_count = ehdr -> e_phnum;
		ph_entry_size = ehdr -> e_phentsize;

        	// for each section header, output section number and section addr. 
        	// hint: section number starts at 0.
		for (Nr=0;Nr<ph_entry_count;Nr++) {
			shdr = (Elf32_Phdr*)( ptr_ph_table + ph_entry_size*Nr);
			printf("%d:0x%x,0x%x\n", Nr, phdr -> p_filesz, phdr -> p_memsz);
		}
	} else { //big endian

        	u_char *ptr_sh_table = NULL;
        	Elf32_Half sh_entry_count;
        	Elf32_Half sh_entry_size;

       		// get section table addr, section header number and section header size.
		ptr_sh_table = ehdr -> e_shoff + binary;
		sh_entry_count = ehdr -> e_shnum;
		sh_entry_size = ehdr -> e_shentsize;

        	// for each section header, output section number and section addr. 
        	// hint: section number starts at 0.
		for (Nr=0;Nr<sh_entry_count;Nr++) {
			shdr = (Elf32_Shdr*)( ptr_sh_table + sh_entry_size*Nr);
			printf("%d:0x%x\n", Nr,r_32(shdr -> sh_addr));
		}
	}

        return 0;
}

