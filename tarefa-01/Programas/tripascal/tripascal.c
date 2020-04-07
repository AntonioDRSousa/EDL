#include<stdio.h>

int v[1000];
int i,j,n;
int x,y;

int main(){
	printf("Linhas a exibir triangulo de pascal: ");
	scanf("%d",&n);

	//primeiras 2 linhas
	printf("1\n");
	v[0]=1;
	v[1]=1;
	
	for(i=2;i<=n;i++){
		v[0]=1;
		v[i-1]=1;
		printf("1 ");
		y=v[0];
		
		for(j=1;j<i-1;j++){
			x=y;
			y=v[j];
			v[j]=v[j]+x;
			printf("%d ",v[j]);
		}
		printf("1\n");
	}
	return 0;	
}
