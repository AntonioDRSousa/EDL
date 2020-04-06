#include<stdio.h>

int n;

int fat(int x){
	if(x==1){
		return 1;
	}
	else{
		return x*fat(x-1);
	}
}

int main(){
	printf("n = ");
	scanf("%d",&n);
	printf("%d! = %d\n",n,fat(n));
	return 0;
}
