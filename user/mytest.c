#include "lib.h"
void umain(){
    writef(">>>>>>mytest_here:\n");
    writef("hello world!\n");
    syscall_putchar('c');
    syscall_putchar('d');
    writef("cur_envid is %d\n", syscall_getenvid);

}
