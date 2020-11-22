#include<stdio.h>
#include<stdbool.h>

bool p,q;
int x;

void input(bool * b,char ch){
	printf("%c = ",ch);
	scanf("%d",&x);
	if(x==0){
		*b=false;
	}
	else{
		*b=true;
	}
}

char * ConvString(bool b){
	if(b){
		return "TRUE";
	}
	else{
		return "FALSE";
	}
}

bool xor(bool a,bool b){
	return (a||b) && !(a&&b);
}

void impr(){
	printf("\np = %s\n",ConvString(p));
	printf("q = %s\n",ConvString(q));
	printf("not p = %s\n",ConvString(!p));
	printf("not q = %s\n",ConvString(!q));
	printf("p and q = %s\n",ConvString(p&&q));
	printf("p or q = %s\n",ConvString(p||q));
	printf("p xor q = %s\n",ConvString(xor(p,q)));
}

int main(){
	printf("Numeros diferentes de 0 -> TRUE\n");
	printf("Numeros iguais a 0 -> FALSE\n\n");
	input(&p,'p');
	input(&q,'q');
	impr();
	return 0;
}
