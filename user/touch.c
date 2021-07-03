#include "lib.h"
void
umain(int argvn, char** argv) {
    if (argvn >= 3) {
        writef("only create file supported( `-[mode]` not allowed!)\n");
        return;
    }
    else {
        user_create(argv[1], 2);
    }
}
