#include<stdio.h>

double e;
int x;

int fat(int x){
	if(x==0){
		return 1;
	}
	else{
		return x*fat(x-1);
	}
}

void calc(int i){
	if(i>=0){
		e+=(1/((double)fat(i)));
		calc(i-1);
	}
}

int main(){
	e=0;
	printf("Digite o numero de iteracoes: ");
	scanf("%d",&x);
	calc(x);
	printf("e = %0.20lf\n",e);
	return 0;
}
