#include<stdio.h>

int * p;
int * q;
int x,y;
	
int main(){
	q=NULL;
	
	x=10;
	p=&x;
	printf("\nx = %d\n",x);
	printf("p endereco %p\n",p);
	printf("p valor %d\n",*p);
	
	*p=20;
	printf("\nx = %d\n",x);
	printf("p endereco %p\n",p);
	printf("p valor %d\n",*p);
	
	q=p;
	printf("\nq endereco %p\n",q);
	printf("q valor %d\n",*q);
	
	y=55;
	p=&y;
	printf("\ny = %d\n",y);
	printf("p endereco %p\n",p);
	printf("p valor %d\n",*p);

	return 0;
}
