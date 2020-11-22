#include<stdio.h>
#include<math.h>

float a,b,c,d,x1,x2;
char ch;

int main(){
	do{
		printf("a = ");
		scanf("%f",&a);
		printf("b = ");
		scanf("%f",&b);
		printf("c = ");
		scanf("%f",&c);

		d=pow(b,2)-(4*a*c);
	
		if(d>0){
			d=sqrt(d);
			x1=((-b)+d)/(2*a);
			x2=((-b)-d)/(2*a);
			printf("x1 = %f\n",x1);
			printf("x2 = %f\n",x2);
		}
		else if (d<0){
			printf("Raizes Complexas\n");
		}
		else{
			x1=(-b)/(2*a);
			printf("x = %f\n",x1);
		}

        fflush(stdin);
		printf("Se Deseja Continuar Escreva 's'(outras teclas terminam a execucao): ");
		scanf("%c",&ch);
		printf("\n");	
	}while(ch!='s');
	return 0;
}
