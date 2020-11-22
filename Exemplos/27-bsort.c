#include<stdio.h>

char ch;

void swap(int * x,int * y){
		int tmp=*x;
		*x=*y;
		*y=tmp;
}

void troca(int * v,int i){
	if(i>=0){
		troca(v,i-1);
		if(v[i]>v[i+1]){
			swap(&v[i],&v[i+1]);
		}
	}
}

void buble(int * v,int n){
	if(n>=0){
		troca(v,n-1);
		buble(v,n-1);
	}
}

void leVetor(int * v,int * n){
	int x;
	*n=0;
	for(;;){
		printf("v[%d] = ",(*n)+1);
		scanf("%d",&x);
		if(x<0){
			break;
		}
		(*n)++;
		v[(*n)]=x;
	}
}

void imprVetor(int * v,int n){
	int i;
	printf("\n");
	for(i=1;i<=n;i++){
		printf("%d ",v[i]);
	}
	printf("\n");
}
	
void prog(){
	int n;
	int v[10001];
	
	leVetor(v,&n);
	imprVetor(v,n);
	buble(v,n);
	imprVetor(v,n);
}

int main(){
	do{
		prog();
		printf("\nDeseja continuar(caracter s)? ");
		fflush(stdin);
		scanf("%c",&ch);
	}while(ch=='s');
	return 0;
}
