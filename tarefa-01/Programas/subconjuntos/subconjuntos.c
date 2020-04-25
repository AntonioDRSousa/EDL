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

void impr(int * sb,int q){
	int i; 
	printf("{  ");
	for(i=1;i<=q;i++){
		if(i!=1){
			printf(" ; ");
		}
		printf("%d",sb[i]);
	}
	printf("  }\n");
}

void comb(int t,int * sb,int * np,int q,int * cont,int n,int * c){
	int i;
	for(i=t;i<=n;i++){
		(*np)++; 
		sb[*np]=c[i];
		if((*np)==(q)){
			(*cont)++;				
			impr(sb,q);
		}
		else{
			comb(i+1,sb,np,q,cont,n,c);
		}
		(*np)--;
	}
}

void subconjunto(int * c,int n){
	int sb[101];
	int np=0;
	int q=2;
	int cont=1;

	printf("\n{ vazio }\n");
	for(q=1;q<=n;q++)
		comb(1,sb,&np,q,&cont,n,c);
	printf("\n numero de subconjuntos = %d\n",cont);
}

void leConjunto(int * c,int * n){
	int x;
	*n=0;
	for(;;){
		printf("c[%d] = ",(*n)+1);
		scanf("%d",&x);
		if(x<0){
			break;
		}
		(*n)++;
		c[*n]=x;
		fflush(stdin);
	}
}

void imprConjunto(int * c,int n){
	int i;
	printf("\n");
	for(i=1;i<=n;i++){
		printf("%d ",c[i]);
	}
	printf("\n");
}
	
void prog(){
	int n,i;
	int c[101];
	int b=1;

	leConjunto(c,&n);
	quicksort(c,1,n-1);
	
	for(i=1;i<=n-1;i++){
		if(c[i]==c[i+1]){
			printf("Erro. Elementos repetidos...\n");
			b=0;
		}
	}
	if(b){
		imprConjunto(c,n);
		subconjunto(c,n);
	}
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
