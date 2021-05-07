#include "lib.h"
void umain(){
    writef(">>>>>>go to fork()\n");
    int a = fork();
    if (a==0) {
        while(1) {
            writef("\t, this is child\n");
        }
    }
    while(1) {
        writef("this is father\n");
    }
}
