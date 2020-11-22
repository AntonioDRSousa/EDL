#include<stdio.h>

int v[5];
int * p;

int main(){
	v[0]=10;
	v[1]=20;
	v[2]=30;
	v[3]=40;
	p=v;
	
	printf("p endereco %p\n",p);
	
	p+=2;
	printf("p+2 endereco %p\n",p);
	
	p-=2;
	printf("p-2 endereco %p\n",p);
	
	p++;
	printf("incremento de p endereco %p\n",p);
	
	p--;
	printf("decremento de p endereco %p\n",p);

	if(p==NULL){
		printf("p =/= nulo\n");
	}
	if(p<&v[2]){
		printf("p < &v[2]\n");
	}
	return 0;
}
