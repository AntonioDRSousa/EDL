#include<stdio.h>

long n,i;
long v[1000];

int main(){
	printf("n = ");
	scanf("%ld",&n);
	v[0]=1;
	v[1]=1;
	printf("%ld %ld",v[0],v[1]);
	for(i=2;i<n;i++){
		v[i]=v[i-1]+v[i-2];
		printf("  %ld",v[i]);
	}
	return 0;
}
