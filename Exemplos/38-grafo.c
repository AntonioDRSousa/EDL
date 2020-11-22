#include<stdio.h>
#include<stdlib.h>

int g1[11][11];
int g2[11][11]; //g1 e' o grafo definido e principal, enquanto o g2 e' secundario

void initG(char c){//inicializa grafo, caracter '2' e' g2 e outro caracter e' g1 
	int i,j;
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			if(c=='2'){
				g2[i][j]=0;
			}
			else{
				g1[i][j]=0;
			}
		}
	}
}

void leG(int * n,char c){//le arestas e vertices do grafo, caracter '2' e' g2 e outro caracter e' g1 
	int x,y;
	printf("Grafo G%c\n",c);
	printf("Numero de vertices = ");
	fflush(stdin);
	scanf("%d",n);
	fflush(stdin);
	printf("Digite a aresta(exemplo: vertice 1 com vertice 2 -> 1 2). Para leitura com algum vertice menor ou igual a zero.\n");
	for(;;){
		fflush(stdin);
		scanf("%d %d",&x,&y);
		fflush(stdin);
		if((x<=0)||(y<=0)){
			break;
		}
		else if((x>(*n))||(y>(*n))){
			printf("Aresta Invalida, com vertices que nao pertencem ao conjunto de vertices do grafo\n");
		}
		else if(x==y){
			printf("Laco nao e invalido");
		}
		else{
			if(c=='2'){
				g2[x][y]=1;
				g2[y][x]=1;
			}
			else{
				g1[x][y]=1;
				g1[y][x]=1;
			}
		}
	}
}

void caminho(int k,int * n,char c){
	int i;
	for(i=1;i<=(k-1);i++){
		if(c=='2'){
			g2[i][i+1]=1;
			g2[i+1][i]=1;
		}
		else{
			g1[i][i+1]=1;
			g1[i+1][i]=1;
		}
	}
	(*n)=k;
}

void ciclo(int k,int * n,char c){
	caminho(k,n,c);
	if(c=='2'){
		g2[1][k]=1;
		g2[k][1]=1;
	}
	else{
		g1[1][k]=1;
		g1[k][1]=1;
	}
	(*n)=k;
}

void roda(int k,int * n,char c){
	int i;
	ciclo(k,n,c);
	for(i=1;i<=k;i++){
		if(c=='2'){
			g2[i][k+1]=1;
			g2[k+1][i]=1;
		}
		else{
			g1[i][k+1]=1;
			g1[k+1][i]=1;
		}
	}
	(*n)=k+1;
}

void completo(int k,int * n,char c){
	int i,j;
	for(i=1;i<=k;i++){
		for(j=1;j<=k;j++){
			if(i!=j){
				if(c=='2'){
					g2[i][j]=1;
					g2[j][i]=1;
				}
				else{
					g1[i][j]=1;
					g1[j][i]=1;
				}
			}
		}
	}
	(*n)=k;
}

void bipcomp(int k1,int k2,int * n,char c){
	int i,j;
	for(i=1;i<=k1;i++){
		for(j=(k1+1);j<=(k1+k2);j++){
			if(c=='2'){
				g2[i][j]=1;
				g2[j][i]=1;
			}
			else{
				g1[i][j]=1;
				g1[j][i]=1;
			}
		}
	}
	(*n)=k1+k2;
}

void estrela(int k,int * n,char c){
	int i;
	for(i=2;i<=k;i++){
		if(c=='2'){
			g2[1][i]=1;
			g2[i][1]=1;
		}
		else{
			g1[1][i]=1;
			g1[i][1]=1;
		}
	}
	(*n)=k+1;
}	
			
void gEspecial(int * n,char c){
	int k1,k2,b,i,j;
	int op;
	
	for(;;){
		printf("\n-------------------------------------------------------------\n");
		printf("Digite uma opcao(string numerica inicial da opcao):\n");
		printf("1 - Caminho(Pk)\n");
		printf("2 - Ciclo(Ck)\n");
		printf("3 - Roda(Wk)\n");
		printf("4 - Completo(Kn)\n");
		printf("5 - Bipartido Completo(Kn1,n2)\n");
		printf("6 - Estrela(Sn)\n");
		printf("7 - Grafo Nulo\n");
		printf("8 - Petersen\n");
		printf("9 - Diamond\n");
		printf("10 - Butterfly\n");
		printf("11 - 3-Cubo\n");
		printf("12 - Sair\n");
		printf("-------------------------------------------------------------\n");
		scanf("%d",&op);
		printf("\n");
		switch(op){
			case 1:
				printf("k = ");
				scanf("%d",&k1);
				caminho(k1,n,c);
				break;
			case 2:
				printf("k = ");
				scanf("%d",&k1);
				ciclo(k1,n,c);
				break;
			case 3:
				printf("k = ");
				scanf("%d",&k1);
				roda(k1,n,c);
			case 4:
				printf("k = ");
				scanf("%d",&k1);
				completo(k1,n,c);
				break;
			case 5:
				printf("k1 = ");
				scanf("%d",&k1);
				printf("k2 = ");
				scanf("%d",&k2);
				bipcomp(k1,k2,n,c);
				break;
			case 6:
				printf("k = ");
				scanf("%d",&k1);
				estrela(k1,n,c);
				break;
			case 7:
				printf("k = ");
				scanf("%d",&k1);
				initG(c);
				(*n)=k1;
				break;
			case 8://petersen
				ciclo(5,n,c);
				for(i=1;i<=5;i++){
					if(c=='2'){
						g2[i][i+5]=1;
						g2[i+5][i]=1;
						g2[i+5][i+7]=1;
						g2[i+7][i+5]=1;
						g2[i+5][i+8]=1;
						g2[i+8][i+5]=1;
					}
					else{
						g1[i][i+5]=1;
						g1[i+5][i]=1;
						g1[i+5][i+7]=1;
						g1[i+7][i+5]=1;
						g1[i+5][i+8]=1;
						g1[i+8][i+5]=1;
					}
				}
				(*n)=10;
				break;
			case 9://diamond
				ciclo(4,n,c);
				if(c=='2'){
					g2[1][4]=1;
					g2[4][1]=1;
				}
				else{
					g1[1][4]=1;
					g1[4][1]=1;
				}
				(*n)=4;
				break;
			case 10://butterfly
				ciclo(3,n,c);
				if(c=='2'){
					g2[3][4]=1;
					g2[4][3]=1;
					g2[3][5]=1;
					g2[5][3]=1;
					g2[4][5]=1;
					g2[5][4]=1;
				}
				else{
					g1[3][4]=1;
					g1[4][3]=1;
					g1[3][5]=1;
					g1[5][3]=1;
					g1[4][5]=1;
					g1[5][4]=1;
				}
				break;
			case 11://3-cubo
				ciclo(4,n,c);
				for(i=5;i<=7;i++){
					if(c=='2'){
						g2[i][i+1]=1;
						g2[i+1][i]=1;
						g2[i-4][i]=1;
						g2[i][i-4]=1;
					}
					else{
						g1[i][i+1]=1;
						g1[i+1][i]=1;
						g1[i-4][i]=1;
						g1[i][i-4]=1;
					}
				}
				if(c=='2'){
						g2[5][8]=1;
						g2[8][5]=1;
						g2[4][8]=1;
						g2[8][4]=1;
				}
				else{
					g2[5][8]=1;
					g2[8][5]=1;
					g2[4][8]=1;
					g2[8][4]=1;
				}
				(*n)=8;
			case 12:
				b=1;
				break;
		}
		if(b==1){
			break;
		}
	}
}

void imprG(int n,char c){//imprime grafo
	int i,j;
	printf("\nG%c\n",c);
	for(i=1;i<=n;i++){
		for(j=1;j<=n;j++){
			if(c=='1'){
				printf("%d ",g1[i][j]);
			}
			else if(c=='2'){
				printf("%d ",g2[i][j]);
			}
		}
		printf("\n");
	}
}

void impr(int * p,int k){
	int j;
	printf("{ %d",p[1]);
	for(j=2;j<=k;j++){
		printf(" , %d",p[j]);
	}
	printf(" }\n");
}

int verifica(int * p,int k,char c){
	int i,j; 
	for(i=1;i<=k;i++){
		for(j=1;j<=k;j++){
			if(i!=j){
				if(((g1[p[i]][p[j]])==0)&&(c=='1')){
					return 0;
				}
				if(((g1[p[i]][p[j]])==1)&&(c=='2')){
					return 0;
				}
			}
		}
	}
	return 1;
}

void geraclique(int t,int * p,int k,char c,int * clq,int * np,int n){
	int i,b;
	for(i=t;i<=n;i++){
		(*np)++;
		p[(*np)]=i;
		if((*np)==k){
			b=verifica(p,k,c);
			if(b){
				(*clq)=1;
				impr(p,k);
			}
		}
		else{
			geraclique(i+1,p,k,c,clq,np,n);
		}
		(*np)--;
	}
}

int clique(int k, int n, char c){//caracter 1 obtem clique de tamanho k, caracter 2 obtem conjunto independente de tamanho k
	int np=0;
	int p[11];
	int clq=0;
	geraclique(1,p,k,c,&clq,&np,n);
	return clq;
}

void cliqueMaxima(int n,char c){//obtem numero de clique ou numero de independencia dependendo do caracter que recebe como paramatros
	int i,m,b;
	for(i=2;i<=n;i++){
		b=clique(i,n,c);
		if(b){
			m=i;
		}
	}
	if(c=='1'){
		printf("\nNumero de Clique = %d\n",m);
	}
	else if(c=='2'){
		printf("\nNumero de Independencia = %d\n",m);
	}
}

void initBol(int * s,int n){
	int i;
	for(i=1;i<=n;i++){
		s[i]=0;
	}		
}

int teste(int * p,int n){
	int i,j;
	for(i=1;i<=n;i++){
		for(j=1;j<=n;j++){
			if(g1[i][j]!=g2[p[i]][p[j]]){
				return 0;
			}
		}
	}
	return 1;
}

void permut(int * p,int * s,int * v,int * np,int * iso,int n){
	int i,j;

	for(i=1;i<=n;i++){
		if(s[i]==0){
			(*np)++;
			p[(*np)]=i;
			s[i]=1;
				
			if(((*np)==n)&&(teste(p,n))){
				(*iso)=1;
				for(j=1;j<=n;j++){
					v[j]=p[j];
				}
				break;
			}
			else{
				permut(p,s,v,np,iso,n);
			}
				
			(*np)--;
			s[i]=0;
		}
	}
}

int isomorfismo(int n){//verifica se dois grafos sao isomorfos
	int np=0;
	int s[11];
	int p[11];
	int v[11];
	int i;
	int iso=0;

	initBol(s,n);
	permut(p,s,v,&np,&iso,n);
	if(iso){
		printf("\nG1 e G2 sao isomorfos\n");
		printf("funcao de isomorfismo f : V(G1) -> V(G2) \n");
		for(i=1;i<=n;i++){
			printf("f(%d) = %d\n",i,v[i]);
		}
	}
	else{
		printf("\nG1 e G2 nao sao isomorfos\n");
	}	
}

void complementar(int n1,int * n2){//obtem grafo complementar de g1
	int i,j;
	(*n2)=n1;
	for(i=1;i<=n1;i++){
		for(j=1;j<=n1;j++){
			if(i==j){
				g2[i][j]=0;
			}
			else if(g1[i][j]==0){
				g2[i][j]=1;
			}
			else if(g1[i][j]==1){
				g2[i][j]=0;
			}
		}
	}
}

int testeCor(int * v,int n){
	int i,j;
	for(i=1;i<=n;i++){
		for(j=1;j<=n;j++){
			if((g1[i][j]==1)&&(v[i]==v[j])){
				return 0;
			}
		}
	}
	return 1;
} 

void cor(int * v,int * p,int * col,int * np,int n,int k){
	int i,j;
	for(i=1;i<=k;i++){
		(*np)++;
		v[(*np)]=i;
		if((*np)==n){
			if(testeCor(v,n)){
				if(!(*col)){
					for(j=1;j<=n;j++){
						p[j]=v[j];
					}
					(*col)=1;
					break;	
				}
			}
		}
		else{

			cor(v,p,col,np,n,k);
		}			
		(*np)--;
	}
}

int coloracao(int n,int k){//verifica se o grafo g1 possui uma k-coloracao
	int v[11];
	int p[11];
	int i;
	int np=0;
	int col=0;
	
	cor(v,p,&col,&np,n,k);
	
	if(col){
		printf("\nG1 possui %d-coloracao\n",k);
		printf("f : V(G1) -> {numeros naturais menores ou iguais a %d'}\n",k);
		for(i=1;i<=n;i++){
			printf("f(%d) = %d\n",i,p[i]);
		}
		printf("\n");
	}
	else{
		printf("\nG1 nao possui %d-coloracao\n",k);
	}
	return col;
}

int numeroCromatico(int n){//obtem o numero cromatico
	int i,num;
	for(i=1;i<=n;i++){
		if(coloracao(n,i)){
			num=i;
			break;
		}
	}
	return num;
}

void imprHalm(int * p,int n){
	int j;
	printf("ciclo hamiltoniano -> ( ");
	for(j=1;j<=n-1;j++){
		printf("%d , ",p[j]);
	}
	printf("%d )\n",p[n]);
}

int verificaHalm(int * p,int n){
	int i;
	for(i=1;i<=n-1;i++){
		if(g1[p[i]][p[i+1]]==0){
			return 0;
		}
	}
	if(g1[p[1]][p[n]]==0){
		return 0;
	}
	return 1;
}

void halm(int t,int * p,int * np,int * hlm,int n){
	int i,b;
	
	for(i=t;i<=n;i++){
		(*np)++;
		p[(*np)]=i;
		if((*np)==n){
			b=verificaHalm(p,n);
			if(b){
				(*hlm)=1;
				imprHalm(p,n);
			}
		}
		else{
			halm(i+1,p,np,hlm,n);
		}
		(*np)--;
	}
}

int hamiltoniano(int n){//verifica se o grafo e' hamiltoniano
	int np=0;
	int p[11];
	int hlm=0;
	halm(1,p,&np,&hlm,n);
	return hlm;
}

void prog(){
	int op;
	int n1,n2,k,b;
	
	initG('1');
	n1=10;
	
	for(;;){
		printf("\n-------------------------------------------------------------\n");
		printf("Digite uma opcao(string numerica inicial da opcao):\n");
		printf("1 - Novo Grafo\n");
		printf("2 - Imprimir Grafo\n");
		printf("3 - Encontrar Cliques com tamanho k\n");
		printf("4 - Encontrar Conjuntos Independentes de tamanho k\n");
		printf("5 - Encontrar Numero de Clique(tamanho da Clique maxima)\n");
		printf("6 - Encontrar Numero de Independencia(tamanho do Conjunto Independente Maximo)\n");
		printf("7 - Isomorfismo entre dois Grafos\n");
		printf("8 - Obter Grafo Complementar\n");
		printf("9 - Verificar se o Grafo e autocomplementar\n");
		printf("10 - Obter uma k-coloracao\n");
		printf("11 - Obter o numero cromatico\n");
		printf("12 - Verificar se o Grafo e Hamiltoniano\n");
		printf("13 - Sair\n");
		printf("-------------------------------------------------------------\n");
		fflush(stdin);
		scanf("%d",&op);
		fflush(stdin);
		printf("\n");
		switch(op){
			case 1://novo grafo
				b=0;
				initG('1');
				for(;;){
					printf("\n-------------------------------------------------------------\n");
					printf("Digite uma opcao(string numerica inicial da opcao):\n");
					printf("1 - Criar Grafo\n");
					printf("2 - Grafo Especial\n");
					printf("3 - Voltar\n");
					printf("\n-------------------------------------------------------------\n");
					scanf("%d",&op);
					printf("\n");
					switch(op){
						case 1:
							leG(&n1,'1');
							break;
						case 2:
							gEspecial(&n1,'1');
							break;
						case 3:
							b=1;
							break;
					}
					if(b==1){
						break;
					}					
				}
				imprG(n1,'1');
				break;
			case 2://imprime grafo
				imprG(n1,'1');
				break;
			case 3://obtem clique de tamanho k
				printf("\nk = ");
				fflush(stdin);
				scanf("%d",&k);
				fflush(stdin);
				printf("\n");
				if(clique(k,n1,'1')==0){
					printf("Nao tem clique de tamanho %d\n",k);
				}
				break;
			case 4://obtem conjunto independente de tamanho k
				printf("\nk = ");
				fflush(stdin);
				scanf("%d",&k);
				fflush(stdin);
				printf("\n");
				if(clique(k,n1,'2')==0){
					printf("Nao tem conjunto independente de tamanho %d\n",k);
				}				
				break;
			case 5://obtem o numero de clique
				cliqueMaxima(n1,'1');
				break;
			case 6://obtem o numero de independencia
				cliqueMaxima(n1,'2');
				break;
			case 7://verifica se dois grafos sao isomorfos
				b=0;
				initG('2');
				for(;;){
					printf("\n-------------------------------------------------------------\n");
					printf("Digite uma opcao(string numerica inicial da opcao):\n");
					printf("1 - Criar Grafo\n");
					printf("2 - Grafo Especial\n");
					printf("3 - Voltar\n");
					printf("\n-------------------------------------------------------------\n");
					scanf("%d",&op);
					printf("\n");
					switch(op){
						case 1:
							leG(&n2,'2');
							break;
						case 2:
							gEspecial(&n2,'2');
							break;
						case 3:
							b=1;
							break;
					}
					if(b==1){
						break;
					}						
				}
				imprG(n2,'2');
				break;
				if(n1==n2){
					isomorfismo(n1);
				}
				else{
					printf("G1 e G2 nao sao isomorfos\n");
				}
				break;
			case 8://obtem o complementar de um grafo
				initG('2');
				complementar(n1,&n2);
				imprG(n2,'2');
				break;
			case 9://verifica se g1 e' autocomplementar
				initG('2');
				complementar(n1,&n2);
				if(isomorfismo(n1)){
					printf("G1 e autocomplementar\n");
				}
				else{
					printf("G1 nao e autocomplementar\n");
				}
				break;
			case 10://colore o grafo com k cores se for possivel
				printf("k = ");
				scanf("%d",&k);
				coloracao(n1,k);
				break;		
			case 11://obtem o numero cromatico
				k=numeroCromatico(n1);
				printf("numero cromatico = %d\n",k);
				break;
			case 12://verifica se o grafo e' hamiltoniano
				if(hamiltoniano(n1)){
					printf("G1 hamiltoniano\n");
				}
				else{
					printf("G1 nao hamiltoniano\n");
				}
				break;
			case 13:
				printf("sair\n");
				exit(1);
		}
	}				
}
				
int main(){
	prog();
	return 0;
}	
