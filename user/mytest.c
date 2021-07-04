#include "lib.h"
void umain(){
    writef(">>>>>>>>>>>>>>>>>>>");
    //user_panic("aaa\n");
    char buff[100] = {0};
    int a = syscall_read_str(buff, 1);
    writef("\n%d\n", a);
    writef("%s\n", buff);
}
