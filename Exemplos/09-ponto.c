#include<stdio.h>

typedef struct point{
	int x,y;
	char simbolo;
}point;

point p1,p2;

int main(){
	printf("ponto 1\n");
	printf("x = ");
	scanf("%d",&(p1.x));
	printf("y = ");
	scanf("%d",&(p1.x));
	fflush(stdin);
	printf("simbolo: ");
	scanf("%c",&(p1.simbolo));

	p2.x=10;
	p2.y=20;
	p2.simbolo='b';

	printf("\n\np1 -> x=%d y=%d simbolo=%c\n",p1.x,p1.y,p1.simbolo);
	printf("p2 -> x=%d y=%d simbolo=%c\n",p2.x,p2.y,p2.simbolo);

	return 0;
}
