#include "lib.h"
#define MAXSHOW 32

char* path = "/.history";

int historyget(int i, char* p)
{
    int fd = open(path, O_RDONLY);
    int k = 0;
    int len = 0;
    //writef("good till now\n");
    for (k=0; k<=i; k++) {
        len = read_line(fd, p, MAXLINE);
    }
    return len;
}

void
umain(int argvn, char** argv)
{   
    int len = 0;
    if (argvn != 1) {
        return;
    }
    char p[MAXLINE];
    int fd = open(path, O_RDONLY);
    int history_size = 0;
    while (1) {
        read_line(fd, p, MAXLINE);
        if (p[0] == '\0') {
            break;
        }
        //writef(">>>>>>readline with %s\n", p);
        history_size++;
    }
    close(fd);

    //writef(">>>>>>>>>>>history size is %d\n", history_size);
    int i = (MAXSHOW < history_size) ? history_size - MAXSHOW : 0;
    //writef(">>>>>%d", i);
    while (i < history_size) {
        len = historyget(i, p);
        //writef("[%d] %s\n", i+1, p);
        if (p[0] == '\0') {
            break;
        }
        writef("[%d] %s\n", i+1, p);
        //writef("len = %d\n", len);
        //writef(">>%c<<<\n", p[len-1]);
        i++;
    }
}
