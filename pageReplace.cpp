#include "pageReplace.h"
#define MAX_PHY_PAGE 64
#define NUM_OF_PAGE 524288
#define MAX_PAGE 12
#define GET_PAGE(x) ((x)>>MAX_PAGE)

bool lastuse[MAX_PHY_PAGE];
long map[NUM_OF_PAGE];

//second chance:
void pageReplace(long* physic_memory, long nwAdd)
{
    static int point = 0;
    static int cur_filled_num = 0;
    unsigned long page_num = GET_PAGE(nwAdd);
    if (map[page_num]>0) {
        lastuse[map[page_num]] = true;
        return;
    }
    if (cur_filled_num<MAX_PHY_PAGE) {
        map[page_num] = cur_filled_num;
        physic_memory[cur_filled_num++] = page_num;
    }
    else {
        while(lastuse[point]) {
            lastuse[point] = false;
            point = (point+1)&(MAX_PHY_PAGE-1);
        }
        map[physic_memory[point]] = 0;
        map[page_num] = point;
        physic_memory[point] = page_num;
        point = (point+1) & (MAX_PHY_PAGE-1);
    }
}
