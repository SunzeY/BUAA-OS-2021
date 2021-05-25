#include "lib.h"
void umain(){
    writef(">>>>>>>>>>>>>>>>>>>");
    //user_panic("aaa\n");
    int a = syscall_get_time();
    writef("%d\n", a);
}
