#include "lib.h"


void umain()
{
	int a = 0;
	int id = 0;

	if ((id = fork()) == 0) {
        writef(">>>>>>>>>>>>>>>>>>envid:%d :fork finish\n", id);
		if ((id = fork()) == 0) {
            writef(">>>>>>>>>>>>>>>>>>>envid222222222222222222222222\n", id);
			a += 3;

			for (;;) {
				writef("\t\tenvid = %d, this is child2 :a:%d\n", syscall_getenvid(),  a);
			}
		}

		a += 2;

		for (;;) {
			writef("\tenvid = %d, this is child :a:%d\n", syscall_getenvid(), a);
		}
	}
    //return;
	a++;

	for (;;) {
		writef("envid = %d, this is father: a:%d\n", syscall_getenvid(), a);
	}
}
