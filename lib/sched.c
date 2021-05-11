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
struct Env* e = NULL;
void sched_yield(void)
{  
    //return;
    //env_run(LIST_FIRST(env_sched_list));
    //return;
    static int count = 0; // remaining time slices of current env
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

     // method 1 loop;
     e = curenv;
     if(count==0 || e == NULL || e->env_status == ENV_NOT_RUNNABLE) {
        do {
            e = LIST_FIRST(&env_sched_list[point]);
            if (e==NULL) {
                if (LIST_EMPTY(&env_sched_list[point])) {
                    point = 1 - point;
                    e = LIST_FIRST(&env_sched_list[point]);
                } 
                //else  panic("no runnable process\n");
                if (LIST_EMPTY(&env_sched_list[point])) {
                    //panic("no runnable process\n");
                    continue;
                }
            }
            count = e->env_pri;
            LIST_REMOVE(e, env_sched_link);
            LIST_INSERT_TAIL(&env_sched_list[1-point], e, env_sched_link);
            if (LIST_EMPTY(&env_sched_list[point])) {
                point = 1 - point;
            }
        } while (e == NULL || e->env_status == ENV_NOT_RUNNABLE);
     }
     count--;
     env_run(e);
    
    //method 2 run curenv;
     /*count--;
     if (count <= 0 || curenv == NULL) {
        if (curenv != NULL) {
            //curenv->env_pri--;
            //if (curenv->env_pri == 0) {
            //    env_destroy(curenv);
            //    panic("sched_yield_new use env_destroy and returned!\n");
            //}
            LIST_INSERT_HEAD(&env_sched_list[!point], curenv, env_sched_link);
        }
        if (LIST_EMPTY(&env_sched_list[point])) {
            point = 1 - point;
        }
        if (LIST_EMPTY(&env_sched_list[point])) {
            panic("^^^^No env is RUNNABLE!^^^^\n");
        }
        e = LIST_FIRST(&env_sched_list[point]);
        LIST_REMOVE(e, env_sched_link);
        count = e->env_pri;
        env_run(e);
     }
     //if (e!=NULL) {
     //   printf("\npri:%d\n", e->env_pri);
     //   printf("pointer:%x\n", e);
     //   printf("status:%d\n", e->env_status);
     //}
     env_run(curenv);
     panic("^^^^sched_yield func reach end!^^^^\n");*/
}
