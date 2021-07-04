#include "lib.h"
#include "color.h"
void
umain(int argvn, char** argv) {
    if (argvn >= 3) {
        PRINT_COLOR("only create file supported( `-[mode]` not allowed!)\n", RED, 0);
        return;
    }
    else {
        //writef("touch : %s\n", argv[1]);
        user_create(argv[1], 2);
    }
}
