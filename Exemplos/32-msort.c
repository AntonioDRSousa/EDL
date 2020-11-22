#include<stdio.h>

char ch;

void cpArray(int * v,int * t,int i,int f){
	int j;
	for(j=i;j<=f;j++){
		v[j]=t[j];
	}
}

void Merge(int * v,int i,int f,int m){
	int t[10001];
	int r,s,k;

	r=i;
	s=m+1;
	for(k=i;k<=f;k++){
		if((s>f) || ((r<=m) && (v[r]<v[s]))){
			t[k]=v[r];
			r++;
		}
		else{
			t[k]=v[s];
			s++;
		}
	}
	cpArray(v,t,i,f);
}

void MergeSort(int * v,int i,int f){
	int m;
	if((f-i)>0){
		m=(int)((f+i)/2);
		MergeSort(v,i,m);
		MergeSort(v,m+1,f);
		Merge(v,i,f,m);
	}			
}

void leVetor(int * v,int * n){
	int x;
	*n=0;
	for(;;){
		printf("v[%d] = ",(*n)+1);
		scanf("%d",&x);
		if(x<0){
			break;
		}
		(*n)++;
		v[(*n)]=x;
	}
}

void imprVetor(int * v,int n){
	int i;
	printf("\n");
	for(i=1;i<=n;i++){
		printf("%d ",v[i]);
	}
	printf("\n");
}
	
void prog(){
	int n;
	int v[10001];
	
	leVetor(v,&n);
	imprVetor(v,n);
	MergeSort(v,0,n-1);
	imprVetor(v,n);
}

int main(){
	do{
		prog();
		printf("\nDeseja continuar(caracter s)? ");
		fflush(stdin);
		scanf("%c",&ch);
	}while(ch=='s');
	return 0;
}
