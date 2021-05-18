#include <asm/regdef.h>
#include <asm/cp0regdef.h>
#include <asm/asm.h>

/*** exercise 4.1 ***/
LEAF(msyscall)
    // TODO: you JUST need to execute a `syscall` instruction and return from msyscall
    syscall
    jr ra
    nop
END(msyscall)

LEAF(get_sp)
    addu v0, sp, zero
    jr ra
    nop
END(get_sp)
