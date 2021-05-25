#include <printf.h>

void handle_cons_ir(char c, int status)
{
    static int time = 0;
    time++;
    if (time==1) {
        printf("CP0 STATUS: %x, 1st interrupt: %d\n", status, time);
    }
    static char buffer[70];
    static int len = 0;
    //printf("cp0 status: %x\n", status);
    if (c!='\r') {
        buffer[len] = c;
        len++;
    }
    else {
        buffer[len] = '\0';
        printf("length: %d\n", len);
        printf("content: %s\n", buffer);
        len = 0;
    }
}
