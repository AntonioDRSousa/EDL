#include<stdio.h>

int main(){
	int r,s,i;
	printf("base: ");
	scanf("%d",&r);
	s=0;
	for(i=1;i<=1000;i*=r){
		s+=i;
		printf("%d ",s);
	}
	return 0;
}
