#include<stdio.h>

typedef struct stack{
	int v[101];
	int * top;
	int n;
}stack;


stack s;
char ch;
int x,i;

void cria(stack * p){
	p->top=NULL;
	p->n=0;
}

void empilha(stack * p,int x){
	if(p->n==0){
		p->n=1;
		p->v[p->n]=x;
		p->top=&(p->v[p->n]);
	}
	else if(p->n<100){
		(p->n)++;
		p->v[p->n]=x;
		(p->top)++;
	}
	else{
		printf("Pilha cheia\n");
	}
}

int tamanho(stack * p){
	return p->n;
}

int topo(stack * p){
	return *(p->top);
}

void desempilha(stack * p){
	if(p->n==1){
		printf("%d desempilhado\n",topo(p));
		p->n=0;
		p->top=NULL;
	}
	else if(p->n>1){
		printf("%d desempilhado\n",topo(p));
		(p->n)--;
		(p->top)--;
	}
	else{
		printf("Pilha vazia\n");
	}
}

int main(){
	for(;;){
		printf("\nDigite um caracter\n");
		printf("e -> empilha\n");
		printf("d -> desempilha\n");
		printf("s -> tamanho\n");
		printf("t -> topo\n");
		printf("l -> lista pilha inteira\n");
		printf("outro caracter -> sai\n\n");
		scanf("%c",&ch);
		
		if(ch=='e'){
			printf("Digite um inteiro: ");
			scanf("%d",&x);
			empilha(&s,x);
		}
		else if(ch=='d'){
			desempilha(&s);
		}
		else if(ch=='s'){
			printf("tamanho %d\n",tamanho(&s));
		}
		else if(ch=='t'){
			if(tamanho(&s)==0){
				printf("pilha vazia\n");
			}
			else{
				printf("topo %d\n",topo(&s));
			}
		}
		else if(ch=='l'){
			printf("pilha -> ");
			for(i=tamanho(&s);i>=1;i--){
				printf("%d ",s.v[i]);//write(s.v[i],' ');
			}
		}
		else{
			break;
		}
		fflush(stdin);
	}
	return 0;
} 
