#include<stdio.h>

int v[10];
int i,x;

int max(){
	int m=0;
	for(i=0;i<10;i++){ 
		if(v[i]>m){
			m=v[i];
		}	
	}
	return m;
}
int min(){
	int m=v[0];
	for(i=0;i<10;i++){ 
		if(v[i]<m){
			m=v[i];
		}	
	}
	return m;
}

int dist(){
	return max()-min();
}

int main(){
	for(i=0;i<10;i++){
		printf("v[%d] = ",i);
		scanf("%d",&v[i]);
	}
	printf("\n\ndistancia entre o maximo e o minimo: %d\n",dist());
	return 0;
}
