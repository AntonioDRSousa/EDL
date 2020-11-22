#include<stdio.h>
#include<stdlib.h>

typedef struct comp{
	int re;
	int im;
}comp;

comp a,b;
char ch;

int main(){
	printf("a -> \n");
	printf("Re(a) = ");
	scanf("%d",&a.re);
	printf("Im(a) = ");
	scanf("%d",&a.im);
	printf("b -> \n");
	printf("Re(b) = ");
	scanf("%d",&b.re);
	printf("Im(b) = ");
	scanf("%d",&b.im);
	fflush(stdin);

	printf("\na = %d + %di\nb = %d + %di\n",a.re,a.im,b.re,b.im);
	
	
	while(1){
		printf("\nDigite um caracter\n");
		printf("a -> soma\ns -> subtrai\nm -> multiplica\noutro caracter -> termina execucao\n");
		scanf("%c",&ch);
		switch(ch){
			case 'a':
				printf("a+b = %d + %di\n",a.re+b.re,a.im+b.im);
				break;
			case 's':
				printf("a-b = %d + %di\n",a.re-b.re,a.im-b.im);
				break;
			case 'm':
				printf("a*b = %d + %di\n",((a.re*b.re)-(a.im*b.im)),((a.re*b.im)+(a.im*b.re)));
				break;
			default:
				exit(1);
		}
		fflush(stdin);
	}
	return 0;
}
