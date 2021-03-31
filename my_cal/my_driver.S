#include <asm/regdef.h>
#include <asm/cp0regdef.h>
#include <asm/asm.h>

			.text
LEAF(_my_getchar)
	.set mips2
	.set reorder
	li t2, 0
	li t3, 0x10
	li t4, 29
	lb t1, 0x10000000(t2)
	beq t4, t1, app
	j end
	nop
	app:
	sb t4, 0x10000000(t2)
	end:
	sb t1, 0x10000000(t2)
END(_my_getchar)                       
	
