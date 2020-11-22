#include<stdio.h>

float v[100];
float m,x;
int i,n;

int main(){

	n=0;
	m=0;
	
	do{
		printf("v[%d] = ",n+1);
		scanf("%f",&x);
		printf("%f\n",x);
				
		v[n+1]=x;
		n++;
	}while(x>=0);

	n--;

	for(i=1;i<n+1;i++){
		m+=v[i];
	}
	
	if(n<=0){
		printf("Erro no Calculo da Media.....\n");
	}
	else{
		printf("Media -> %0.3f\n",m/n);
	}
	
	return 0;
}
