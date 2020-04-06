#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

char legMenu[9][30];

void initMenu1(){//cria menu
	strcpy(legMenu[0],"Somar");
	strcpy(legMenu[1],"Subtrair");
	strcpy(legMenu[2],"Multiplicar");
	strcpy(legMenu[3],"Dividir");
	strcpy(legMenu[4],"Divisao Inteira");
	strcpy(legMenu[5],"Resto");
	strcpy(legMenu[6],"Potenciacao");
	strcpy(legMenu[7],"Raiz Quadrada");
	strcpy(legMenu[8],"Sair");
}

void textMenu1(){//printa menu
	int i;
	for(i=0;i<9;i++){
		printf("%d - %s\n",i+1,legMenu[i]);
	}
	printf("\n\n");
}

void inputVar(int * a,int * b){//obtem o input de 2 variaveis
	printf("a = ");
	scanf("%d",a);
	printf("b = ");
	scanf("%d",b);
}

int soma(int x,int y){//soma
	return x+y;
}

int sub(int x,int y){//subtracao
	return x-y;
}

int mul(int x,int y){//multipĺicacao
	return x*y;
}

float division(int x,int y){//divisao	
	return x/y;
}

int divint(int x,int y){//divisao inteira
	return (int) x/y;
}

int resto(int x,int y){//resto
	return x%y;
}

float pot(int n,int e){//potenciacao
	int i;
	int p=1;
	if(e<0){
		e*=(-1);
		for(i=1;i<=e;i++){
		 	p/=n;
		 }
	}	
	else{ 
		for(i=1;i<=e;i++){
		 	p*=n;
		 }
	}
	return p;
}

void Menu1(){ 
	int a,b,op;
	while(1){
		textMenu1();
		printf("Digite uma opcao: ");
		scanf("%d",&op);
		switch(op){
			case 1://soma
				inputVar(&a,&b);
				printf("%d + %d = %d\n",a,b,soma(a,b));
				break;
			case 2://subtracao
				inputVar(&a,&b);
				printf("%d - %d = %d\n",a,b,sub(a,b));
				break;
			case 3://multiplicacao
				inputVar(&a,&b);
				printf("%d * %d = %d\n",a,b,mul(a,b));
				break;
			case 4://divisao
				inputVar(&a,&b);
				if(b==0){
					printf("Erro. Divisao por Zero.....\n");
				}
				else{
					printf("%d / %d = %0.5f\n",a,b,division(a,b));
					printf("%d / %d = %0.5f\n",a,b,division(a,b));
				}
				break;
			case 5://divisao inteira
				inputVar(&a,&b);
				if(b==0){
					printf("Erro. Divisao por Zero.....\n");
				}
				else{
					printf("%d // %d = %d\n",a,b,divint(a,b));
				}
				break;
			case 6://resto
				inputVar(&a,&b);
				if(b==0){
					printf("Erro. Divisao por Zero.....\n");
				}
				else{
					printf("%d mod %d = %d\n",a,b,resto(a,b));
				}
				break;
			case 7://potenciacao
				inputVar(&a,&b);
				printf("%d ^ %d = %0.5f\n",a,b,pot(a,b));
				break;
			case 8://raiz quadrada
				printf("a = ");
				scanf("%d",&a);
				if(a<0){
					printf("Nao existe raiz quadrada real de numero negativo.\n");
					printf("O valor pertence aos numeros complexos\n");
					printf("sqrt(%d) = %0.5f i\n",a,sqrt(-a));
				}
				else{
					printf("sqrt(%d) = %0.5f i\n",a,sqrt(-a));
				}
				break;
			case 9:
				printf("Saindo\n");
				exit(1);
			default:
				printf("Opcao invalida!\n");
		}
	}
}

int main(){
	initMenu1();
	Menu1();
	return 0;
}
