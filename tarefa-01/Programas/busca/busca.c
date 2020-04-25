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

void leElemento(int * x){
	printf("elemento a buscar = ");
	fflush(stdin);
	scanf("%d",x);
	fflush(stdin);
}

int bin(int * v,int x,int i,int f){
	int m;
	if(i>f){
		return (-1);
	}
	else{
		m=(int)((i+f)/2);
		if(v[m]==x){
			return m;
		}
		else if(v[m]>x){
			return bin(v,x,i,m-1);
		}
		else if(v[m]<x){
			return bin(v,x,m+1,f);
		}
	}
}

void busca(int * v, int n, int x){
	int k=-1;
	k=bin(v,x,1,n);
	if(k==(-1)){
		printf("Elemento nao encontrado\n");
	}
	else{
		printf("Elemento esta na posicao %d\n",k);
	}
}
	
void prog(){
	int n,x;
	int v[10001];
	
	leVetor(v,&n);
	imprVetor(v,n);
	quicksort(v,0,n);
	imprVetor(v,n);
	leElemento(&x);
	busca(v,n,x);
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
