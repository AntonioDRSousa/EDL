#include<stdio.h>

int n,q,s,i;

void leN(){
	printf("n = ");
	scanf("%d",&n);
}

int quadrado(int n){
	s=0;
	for(i=1;i<=n;i++){
		s+=2*i-1;
		printf("%d ",s);
	}
	return s;
}

void impr(){
	leN();
	q=quadrado(n);
	printf("\nquadrado -> %d",q);
}
																																														
int main(){
	impr();
	return 0;
}


