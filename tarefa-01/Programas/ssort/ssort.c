#include<stdio.h>

char ch;

void swap(int * x,int * y){
	int tmp;
	tmp=(*x);
	(*x)=(*y);
	(*y)=tmp;
}

void selection(int * v,int n){
	int pmax,i;
	if(n>0){
		pmax=0;
		for(i=1;i<=n;i++){
			if(v[i]>v[pmax]){
				pmax=i;
			}
		}
		swap(&v[pmax],&v[n]);
		selection(v,n-1);
	}
}

void leVetor(int * v, int * n){
	int x;
	(*n)=0;
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
void imprVetor(int * v, int n){
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
	selection(v,n);
	imprVetor(v,n);
}

int main(){
	do{
		prog();
		printf("\nDeseja continuar(caracter s)? ");
		fflush(stdin);
		scanf("%c",&ch);
		fflush(stdin);
	}while(ch=='s');
	return 0;
}
