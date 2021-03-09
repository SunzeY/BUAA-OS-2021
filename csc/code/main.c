#include <stdio.h>
#include <fibo.h>
int main()
{
	int n,i;
	int fnow = 1;
	int fpre = 0;
	scanf("%d",&n);
	for(i=1;i<=n;i++){
		fpre = fnow;
		fnow = fnow + fpre;
	}
	prinf("%d", fnow);
	return 0;
}
