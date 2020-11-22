#include<stdio.h>

char ch;

int main(){
	printf("Digite o caracter a ou b: \n");
	scanf("%c",&ch);
	switch(ch){//nao colocando o comando break, todos os case sao executados no C
		case 'a':
			printf("caso a\n");
		case 'b':
			printf("caso b\n");
		default:
			printf("nao foi digitado nem a e nem b\n");
	}
	return 0;
}
