#include<stdio.h>

int v[11];
int i;

int main(){

	int i=1;
	do{
		v[i]=i*3;
		i++;
	}while(i<11);

	for(i=1;i<=10;i++){
		printf("%d ",v[i]);
	}
	printf("\n");

	for(i=10;i>=1;i--){
		printf("%d ",v[i]);
	}
	printf("\n");

	i=1;
	while(i<=10){
		printf("%d ",v[i]);
		i++;
	}

	return 0;
}
