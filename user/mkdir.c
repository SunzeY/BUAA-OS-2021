#include "lib.h"
void
umain(int argvn, char** argv) {
    int off = 0;
    int r = 0;
    if (argvn == 3 && strcmp(argv[1], "-p")==0) {
        off = 1;
    }
    if ((r = user_create(argv[1+off], 1))<0) {
        writef("create path %s failed!\n", argv[1+off]);
    }
}
