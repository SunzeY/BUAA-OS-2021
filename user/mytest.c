#include "lib.h"
void umain(){
    writef(">>>>>>mytest_here:\n");
    writef("hello world!\n");
    syscall_putchar('c');
    syscall_putchar('d');
}
