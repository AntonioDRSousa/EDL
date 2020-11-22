#include<stdio.h>
#include<string.h>

char b[100];//numero binario
int d;//numero decimal
int k;
char ch;

void init(){
	int i;
	for(i=0;i<strlen(b);i++){
		b[i]=' ';
	}
}

void inputBin(){
	int i;
	int bol;//bol:boolean;
	for(;;){
		bol=1;
		printf("Digite um numero binario: ");
		scanf("%s",b);
		
		for(i=0;i<strlen(b);i++){
			if((b[i]!='1') && (b[i]!='0')){
				printf("Nao e numero binario\n");
				bol=0;
				break;
			}
		}
		
		if(bol){
			break;
		}
	}
}

void inputDec(){
	printf("Digite um numero decimal: ");
	scanf("%d",&d);
}

int pot(int n,int e){//potenciacao
	int j;
	int p=1;
	for(j=1;j<=e;j++){
		p*=n;
	}
	return p;
}

void BinToDec(){//converte de binario para decimal
	int i;
	d=0;
	for(i=strlen(b)-1;i>=0;i--){
		if(b[i]=='1'){
			d+=pot(2,strlen(b)-i-1);
		}
	}
}

void DecToBin(int n){//converte de decimal para binario
	if(n>0){
		DecToBin(n/2);
		
		if(n%2==0){
			b[k]='0';
		}
		else{
			b[k]='1';
		}
		k++;
	}
}

int main(){
	while(1){
		printf("\nDigite um caracter");
		printf("\nb -> converte de binario para decimal");
		printf("\nd -> converte de decimal para binario");
		printf("\noutros caracteres -> sai\n");
		scanf("%c",&ch);
		init();
		if(ch=='b'){
			inputBin();
			BinToDec();
			printf("%d\n",d);
		}
		else if(ch=='d'){
			inputDec();
			DecToBin(d);
			printf("%s\n",b);
		}
		else{
			break;
		}
		fflush(stdin);
	}
	return 0;
}
