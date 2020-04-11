#include<stdio.h>

char ch;

void swap(int * x,int * y){
		int tmp=*x;
		*x=*y;
		*y=tmp;
}

void particao(int * v,int * i,int * j,int e,int d){
	int t;
	*i=e;
	*j=d;
	t=v[(int)((e+d)/2)];
	while((*i)<=(*j)){
		while(v[(*i)]<t){
			(*i)++;
		}
		while(v[(*j)]>t){
			(*j)--;
		}
		if((*i)<=(*j)){
			swap(&v[(*i)],&v[(*j)]);
			(*i)++;
			(*j)--;
		}
	}
}

void quicksort(int * v,int e,int d){
	int i;
	int j;
	if(d>e){
		particao(v,&i,&j,e,d);
		quicksort(v,e,j);
		quicksort(v,i,d);
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
	quicksort(v,0,n);
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
