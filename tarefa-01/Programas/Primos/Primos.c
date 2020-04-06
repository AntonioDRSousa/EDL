#include<stdio.h>
#include<math.h>

long p[100000000];
long n,max; 

void input(){
	printf("Numeros primos ate: ");
	scanf("%ld",&max);
	printf("\n");
}

void calc(){
	long i,j;
	int b;//b: boolean;
	p[0]=2; //inicializa com o primeiro primo
	n=1;

	for(i=3;i<=max;i++){
		b=1;	
		j=0;
		while(p[j]<=sqrt(i) && p[j]!=0){//p[j]!=0 verifica se tem numero primo nessa posicao
			if(i%p[j]==0){;
				b=0;
				break;
			}
			j++;
		}		
		if(b){
			p[n]=i;
			n++;
		}		
	}
}
	
void impr(){
	long i;
	for(i=0;i<n;i++){//imprime os primos
		printf("%ld ",p[i]);
		if(i%10==0){//pula de linha a cada 10 primos
			printf("\n");
		}
	}

	printf("\n\nn = %ld\n",n);//numero de primos
}
		
int main(){
	input();
	calc();
	impr();
	return 0;								
}
