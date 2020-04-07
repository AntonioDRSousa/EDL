#include<stdio.h>

int a;

int divsuc(int * n,int i){
	int e=0;
	while(((*n)%i)==0){
		e++;
		*n=(int) (*n)/i;
	}
	return e;
}

void fat(int n){
	int i,x;
	for(i=2;i<=n;i++){
		x=divsuc(&n,i);
		if(x!=0){
			printf("%d^%d ",i,x);
		}
	}
}

int main(){
	printf("a = ");
	scanf("%d",&a);
	fat(a);
	return 0;
}
