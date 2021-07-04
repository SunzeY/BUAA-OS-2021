/* The run time clock is hard-wired to IRQ8. */
#include <kcons.h>


extern void set_console();

//Overview:
//Use function set_timer to initialize clock interrupt.
//And the run time clock is hard-wired to IRQ8, you can see in handle_sys.
//
//Pre-condition:
//env_init should be executed  before this.
//
//Post-condition:
//You can't run any env directly before this being executed.

void
kcons_init(void)
{
	/* initialize 8253 clock to interrupt 100 times/sec */
	set_console();
}
