#include<stdio.h>
int main()
{
	int n;
	scanf("%d",&n);
	int rev = 0;
	int  b = n;
	while(b!=0) {
		rev  = rev * 10 + b % 10;
		b = b / 10;
	}
	if(rev == n){
		printf("Y");
	}else{
		printf("N");
	}
	return 0;
}
