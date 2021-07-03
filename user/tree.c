#include "lib.h"

char space[100];

void
treePath(char* path, int offset) {
    int fd, n;
    struct File f;
    struct File lastf;
    if ((fd = open(path, O_RDONLY)) < 0) {
        writef("open %s: %e failed!\n", path, fd);
        return;
    } 
    space[offset] = '\0';
    writef("%s %s\n\033[1A", space, path);
    //writef("%s |\n", space);
    while ((n = readn(fd, &f, sizeof f))==sizeof f){
        if (f.f_name[0]!= 0){
            writef("%s ├──%s\n\033[1A",space, f.f_name);
            //writef("%s █\n\033[1A");
            //writef("%s |-%d\n",space, f.f_type);
            if (strcmp(f.f_name, "a") == 0) {
                f.f_type = FTYPE_DIR;
               //writef(">>>>>>>>\n");
            }
            if (f.f_type == FTYPE_DIR) {
                treePath(f.f_name, offset + 2);
            }
        lastf = f;
        }
    }
    space[offset] = ' ';  
}

void
umain(int argvn, char** argv) {
    int k = 0;
    for(k=0; k<100; k++) {
        space[k] = ' '; // \space;
    }
    //writef(">>>>%d\n", argvn);
    //writef(">>>>%s\n", argv[1]);
    if (argvn == 2 && strcmp(argv[1], "-a") == 0) {
        treePath("/", 0);
    }
    else {
        treePath("./", 0);
    }
}
