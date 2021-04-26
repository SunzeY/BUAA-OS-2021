#include <env.h>
#include <pmap.h>
#include <printf.h>

/* Overview:
 *  Implement simple round-robin scheduling.
 *
 *
 * Hints:
 *  1. The variable which is for counting should be defined as 'static'.
 *  2. Use variable 'env_sched_list', which is a pointer array.
 *  3. CANNOT use `return` statement!
 */
/*** exercise 3.14 ***/
u_long count = 0;
int c_list = 0;
struct Env* e = NULL;
void sched_yield(void)
{  
    //return;
    //env_run(LIST_FIRST(env_sched_list));
    //return;
    //static int count = 0; // remaining time slices of current env
    static int point = 0; // current env_sched_list index
    
     /*  hint:
     *  1. if (count==0), insert `e` into `env_sched_list[1-point]`
     *     using LIST_REMOVE and LIST_INSERT_TAIL.
     *  2. if (env_sched_list[point] is empty), point = 1 - point;
     *     then search through `env_sched_list[point]` for a runnable env `e`, 
     *     and set count = e->env_pri
     *  3. count--
     *  4. env_run()
     *
     *  functions or macros below may be used (not all):
     *  LIST_INSERT_TAIL, LIST_REMOVE, LIST_FIRST, LIST_EMPTY
     */
    /* int i;
     static int pos = 0;
     static int times = 0;
     static struct Env *e;
     if (--count <= 0) {
        do {
            if (LIST_EMPTY(&env_sched_list[point])) {
                point = 1 - point;
            }
            e = LIST_FIRST(&env_sched_list[point]);
            LIST_FOREACH(e, &env_sched_list[point], env_sched_link) {
                if (e!=NULL && e->env_status == ENV_RUNNABLE)
                    break;
            }
            if (e!=NULL) {
                LIST_REMOVE(e, env_sched_link);
                LIST_INSERT_TAIL(&env_sched_list[1-point], e, env_sched_link);
                count = e->env_pri;
            }
         } while (e == NULL || e->env_status != ENV_RUNNABLE);
     }
     env_run(e);
     if (e == NULL) {
        panic("^^^^EMPTY POINTER E^^^^^");
     }*/

     e = curenv;
     if(count==0 || e == NULL ){ //|| e->env_status == ENV_NOT_RUNNABLE) {
        do {
            e = LIST_FIRST(&env_sched_list[c_list]);
            if (e==NULL) {
                if (LIST_EMPTY(&env_sched_list[c_list])) {
                    c_list = 1 - c_list;
                    e = LIST_FIRST(&env_sched_list[c_list]);
                } else 
                    panic("no runnable process\n");
            }
            count = e->env_pri;
            LIST_REMOVE(e, env_sched_link);
            LIST_INSERT_TAIL(&env_sched_list[1-c_list], e, env_sched_link);
            if (LIST_EMPTY(&env_sched_list[c_list])) {
                c_list = 1 - c_list;
            }
        } while (e == NULL);
     }
     count--;
     //e->env_runs++;
     /*if (e!=NULL) {
        printf("\npri:%d\n", e->env_pri);
        printf("pointer:%x\n", e);
        printf("status:%d\n", e->env_status);
     }*/
     env_run(e);
}
