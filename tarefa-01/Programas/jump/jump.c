#include<stdio.h>

int main(){
	int a,b;
	printf("a = ");
	scanf("%d",&a);
	printf("b = ");
	scanf("%d",&b);

	if(a<b) goto l1;
	l1:
		printf("a<b\n");
		goto l4;
	if(b<a) goto l2;
	l2:
		printf("a>b\n");
		goto l4;
	l3:
		printf("a=b\n");
	l4:
	return 0;
}
