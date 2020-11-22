#include<stdio.h>

char ch;
int numero;

void initBol(int n,int * s){
	int i;
	for(i=1;i<=n;i++){
		s[i]=0;
	}			
}

void impr(int n,int * p){
	int j;
	for(j=1;j<=(n);j++){
		printf("%d ",p[j]);
	}
	printf("\n");
}

void perm(int n,int * s,int * np,int * p,int * v){
	int i;
	for(i=1;i<=n;i++){
		if(s[i]==0){ 
			(*np)++;
			p[(*np)]=v[i];
			s[i]=1;
	
			if((*np)==n){
				impr(n,p);
				numero++;
			}
			else{
				perm(n,s,np,p,v);
			}
			(*np)--;
			s[i]=0;
		}
	}
}

void permut(int * v,int n){
	int np=0;
	int s[6];
	int p[6];
	
	numero++;
	initBol(n,s);
	perm(n,s,&np,p,v);
}

void leVetor(int * n,int * v){
	int x,i;
	(*n)=0;
	for(i=1;i<=5;i++){
		printf("v[%d] = ",(*n)+1);
		scanf("%d",&x);
		fflush(stdin);
		if(x<0){
			break;
		}
		(*n)++;
		v[(*n)]=x;
	}
}

void prog(){
	int n;
	int v[6];
	numero=0;
	leVetor(&n,v);
	permut(v,n);
	printf("\nnumero de permutacoes = %d\n",numero-1);
}
	
int main(){
	do{
		prog();
		printf("\nDeseja continuar(caracter s)? ");
		scanf("%c",&ch);
		fflush(stdin);
	}while(ch=='s');
	return 0;
}
