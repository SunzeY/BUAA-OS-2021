#include "lib.h"

char buf[8192];

void
cat(int f, char *s)
{
	long n;
	int r;

	while((n=read(f, buf, (long)sizeof buf))>0)
		if((r=write(1, buf, n))!=n) {
			writef("write error copying %s: %e", s, r);
            return;
        }
	if(n < 0)
		writef("error reading %s: %e", s, n);
}

void
umain(int argc, char **argv)
{
	int f, i;

	if(argc == 1)
		cat(0, "<stdin>");
	else for(i=1; i<argc; i++){
		f = open(argv[i], O_RDONLY);
		if(f < 0) {
			writef("can't open %s: %e", argv[i], f);
            return;
        }
		else{
			cat(f, argv[i]);
			close(f);
		}
	}
}

