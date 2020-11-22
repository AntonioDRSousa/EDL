#include<stdio.h>

int mat[3][2];
int i,j;

int main(){

	//leitura
	for(i=0;i<3;i++){ 
		for(j=0;j<2;j++){
			printf("A[%d,%d] = ",i,j);
			scanf("%d",&mat[i][j]);
		}
	}
	
	//impressao
	printf("\n");
	for(i=0;i<3;i++){
		for(j=0;j<2;j++){
			printf("%d ",mat[i][j]);
		}
		printf("\n");
	}
	return 0;
}
