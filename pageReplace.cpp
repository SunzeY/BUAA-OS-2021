#pragma GCC optimize (2)
#include "pageReplace.h"
#define MAX_PHY_PAGE 64
#define MAX_PAGE 12
#define true 1
#define false 0
#define GET_PAGE(x) ((x)>>MAX_PAGE)

//char lastuse[MAX_PHY_PAGE];
//char map[NUM_OF_PAGE];
/*
//with hashmap:
void pageReplace(long* physic_memory, long nwAdd)
{
    static int point = 0;
    static int cur_filled_num = 0;
    int page_num = GET_PAGE(nwAdd);
    if (map[page_num/32]&(1<<(page_num%32)) = 0) {
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
*/

//third_chance
/*
char lastuse[MAX_PHY_PAGE];
void pageReplace(long* physic_memory, long nwAdd)
{
    static char point = 0;

    static char cur_filled_num = 0;
    int page_num = GET_PAGE(nwAdd);
    for (char i = 0; i <MAX_PHY_PAGE; i++){
        if (page_num==physic_memory[i]) {
            if (lastuse[i]==true) {
                lastuse[i]=true_inforce;
            } else {
                lastuse[i] = true;
            }
        }
    }
    if (cur_filled_num<MAX_PHY_PAGE) {
        physic_memory[cur_filled_num++] = page_num;
    }
    else {
        while(lastuse[point]) {
            lastuse[point]--;
            point = (point+1) & (MAX_PHY_PAGE-1);
        }
        physic_memory[point] = page_num;
        point = (point+1) & (MAX_PHY_PAGE-1);
    }
}
*/

//second_chance

char lastuse[MAX_PHY_PAGE];
void pageReplace(long* physic_memory, long nwAdd)
{
    static int point  = 0;
    static int cur_filled_num = 0;
    int page_num = GET_PAGE(nwAdd);
    for (register int i = 0; i <MAX_PHY_PAGE; i++){
        if (page_num==physic_memory[i]) {
            lastuse[i]=true;
            return;
        }
    }
    if (cur_filled_num<MAX_PHY_PAGE) {
        physic_memory[cur_filled_num++] = page_num;
    }

    else {
        while(lastuse[point]) {
            lastuse[point]=false;
            point = (point+1) & (MAX_PHY_PAGE-1);
        }
        physic_memory[point] = page_num;
        point = (point+1) & (MAX_PHY_PAGE-1);
    }
}


//secont_chance_opt_search
/*
char lastuse[MAX_PHY_PAGE];
void pageReplace(long* physic_memory, long nwAdd)
{
    static char point = 0;
    static char last_point = 0;
    static char cur_filled_num = 0;
    int page_num = GET_PAGE(nwAdd);
    char temp_point = 0;
    for (char i = 0; i <=MAX_PHY_PAGE_HALF; i++){
        temp_point = (i+last_point)&(MAX_PHY_PAGE-1);
        if (page_num==physic_memory[temp_point]) {
            lastuse[temp_point]=true;
            last_point = temp_point;
            return;
        }
        temp_point = (last_point-i<0? last_point-i+MAX_PHY_PAGE : last_point-i)&(MAX_PHY_PAGE-1);
        if (page_num==physic_memory[temp_point]) {
            lastuse[temp_point]=true;
            last_point = temp_point;
            return;
        }
    }
    if (cur_filled_num<MAX_PHY_PAGE) {
        physic_memory[cur_filled_num++] = page_num;
    }
    else {
        while(lastuse[point]) {
            lastuse[point] = false;
            point = (point+1) & (MAX_PHY_PAGE-1);
        }
        physic_memory[point] = page_num;
        last_point = point;
        point = (point+1) & (MAX_PHY_PAGE-1);
    }
}
*/
