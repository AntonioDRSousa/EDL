#include<stdio.h>
	
int main(){
	int i,n;
	char ch;

	goto l1;	
	l1:
		printf("n = ");
		scanf("%d",&n);
		if(n>=0) goto l2;
		goto l1;

		i=0;
	l2:
		if(i<10) goto l3;
		goto l4;
		l3:
			printf("%d ",n);
			i++;
			n*=n;
			goto l2;
		l4:
			if(1) goto l5;
			l5:
				printf("\nPressione o caracter s para sair.....\n");
				scanf("%c",&ch);
				fflush(stdin);
				if(ch=='s') goto l6;
				goto l5;
			l6:
	return 0;
}

