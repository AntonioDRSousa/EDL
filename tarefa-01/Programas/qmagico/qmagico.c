#include<stdio.h>

char ch;

void swap(int * x,int * y){
		int tmp=*x;
		*x=*y;
		*y=tmp;
}

void troca(int * v,int i){
	if(i>0){
		troca(v,i-1);
		if(v[i]>v[i+1]){
			swap(&v[i],&v[i+1]);
		}
	}
}

void buble(int * v,int n){
	if(n>0){
		troca(v,n-1);
		buble(v,n-1);
	}
}

void initBol(int * s){
	int i;
	for(i=1;i<=9;i++){
			s[i]=0;		
	}
}

void impr(int * p){
	int j;
	printf("\n");
	for(j=1;j<=9;j++){
		printf("%d ",p[j]);
		if((j%3)==0){
			printf("\n");
		}
	}
	printf("\n");
}

int teste(int * p){
	int j,k;
	k=p[1]+p[5]+p[9];
	for(j=1;j<=3;j++){
		if(k!=(p[((j-1)*3)+1]+p[((j-1)*3)+2]+p[((j-1)*3)+3])){
			return 0;
		}
	}
	for(j=1;j<=3;j++){
		if(k!=(p[j]+p[j+3]+p[j+6])){
			return 0;
		}
	}
	if(k!=(p[3]+p[5]+p[7])){
		return 0;
	}
	return 1;
}
	
void magico(int * s,int * p,int * v,int * np,int * num,int * qtd){
	int i;
	
	for(i=1;i<=9;i++){
		if(s[i]==0){
			(*np)++;
			p[(*np)]=v[i];
			s[i]=1;
			(*qtd)++;
			if(((*np)==9)&&(teste(p)==1)){
				if((*num)==0){
					impr(p);
				}
				(*num)=1;
			}
			else{
				magico(s,p,v,np,num,qtd);
			}
			(*np)--;
			s[i]=0;
		}
	}
}

void quadrado(int * v){
	int np=0;
	int s[10];
	int p[10];
	int num=0;
	int qtd=0;

	initBol(s);
	magico(s,p,v,&np,&num,&qtd);
	if(num==0){
		printf("nao tem quadrado magico\n");
	}
}

void leVetor(int * v){
	int i;
	for(i=1;i<=9;i++){
		printf("v[%d] = ",i);
		scanf("%d",&v[i]);
	}
}

void prog(){
	int v[10];
	leVetor(v);
	buble(v,9);
	quadrado(v);
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
