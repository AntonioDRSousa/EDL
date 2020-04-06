#include<stdio.h>

void impr(const int a,const int b){//por valor
	printf("x=%d y=%d\n",a,b);
}

void swap1(int a,int b){//por valor
	int tmp;
	tmp=a;
	a=b;
	b=tmp;
}

void swap2(int * a, int * b){//por referencia
	int tmp;
	tmp=*a;
	*a=*b;
	*b=tmp;
}

void prog(){
	int x,y;
	x=10;
	y=20;
	impr(x,y);

	swap1(x,y);
	impr(x,y);

	swap2(&x,&y);
	impr(x,y);
}

int main(){
	prog();
	return 0;
}
