#include "lib.h"
int c;
int d = 0;
int global_a;
void umain(){
    int b = 1;
    int f = 1;
    int id = 0;
    if (id = tfork()==0) {
        global_a+=3;
        writef("\n child : %d\n", global_a);
    }
    else {
        global_a+=5;
        writef("\n father : %d\n", global_a);
    }
    
    for (;;);
}
