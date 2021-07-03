#include "lib.h"
void
umain() {
    int i = 0;
    int k = 0;
    int r = 0;
    int u = 0;
    for (i = 0; i < 4; i++) {
        r = fork();
        if (r!=0) wait(r);
        for (k=0; k<1000; k++);
            fwritef(1, "[%d] env[%x], testorder: i = %d\n", k, r, i);
        for (k=0; k<100; k++) {
            for (u=0; u<10000; u++);
            //writef("[%d] env[%x], testorder: i = %d\n", k, r, i);
        }
        //if (r!=0) wait(r);
    }
    //if(r!=0) wait(r);
}
