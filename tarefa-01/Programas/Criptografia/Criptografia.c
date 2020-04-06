#include<stdio.h>
#include<string.h>

char s[100];
char ch;
int chave[100];

void leMensagem(){
	printf("Digite a mensagem: ");
	scanf("%s",s);
}

void initChave(){
	int i;
	char t[100];
	int b;//b:boolean;
	for(;;){
		b=1;
		printf("Chave -> ");
		scanf("%s",&t);
		for(i=0;i<100;i++){
			if(i>=strlen(t)){//zera todas as posicoes da chave que vao alem da string
				chave[i]=0;
			}
			else if((t[i]>='1') && (t[i]<='9')){//verifica se e' digito numerico
				chave[i]=t[i]-48;
			}
			else{
				printf("Chave Invalida\n\n");
				b=0;
				break;
			}
		}
		if(b){//flag
			break;
		}
	}
}

void Encript(){
	int i,j,x;
	j=0;
	for(i=0;i<strlen(s);i++){
		if(chave[j]==0){
			j=0;
		}
		x=(chave[j]+s[i])%256;
		s[i]=(char)x;
		j++;
	}
}

void Decript(){
	int i,j,x;
	j=0;
	for(i=0;i<strlen(s);i++){
		if(chave[j]==0){
			j=0;
		}
		x=(s[i]-chave[j])%256;
		s[i]=(char)x;
		j++;
	}
}

int main(){
	for(;;){
		printf("Digite um caracter\n");
		printf("e -> encriptar mensagem\n");
		printf("d -> decriptar mensagem\n");
		printf("t -> testar encripatacao e decriptacao\n");
		printf("outro caracter -> sai\n");
		scanf("%c",&ch);
		if(ch=='e'){
			leMensagem();
			initChave();
			Encript();
			printf("mensagem encriptada -> %s\n\n\n",s);
		}
		else if(ch=='d'){
			leMensagem();
			initChave();
			Decript();
			printf("mensagem decriptada -> %s\n\n\n",s);
		}
		else if(ch=='t'){
			leMensagem();
			initChave();
			Encript();
			printf("mensagem encriptada -> %s\n",s);
			Decript();
			printf("mensagem decriptada -> %s\n\n\n",s);
		}
		else{
			break;
		}
		fflush(stdin);
	}
	return 0;
}
