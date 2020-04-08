# PASCAL

## INDICE

- [Introdução](#Introdução)
- [Origens](#Origens)
- [Influências](#Influências)
- [Linha do Tempo](#Linha-do-Tempo)
- [Classificação](#Classificação)
- [Programação Estruturada](#Programação-Estruturada)
	- [Algumas linguagens que têm como principio a programação estruturada](#Algumas-linguagens-que-têm-como-principio-a-programação-estruturada)
		- [Pascal](#Pascal)
		- [C](#C)
		- [ALGOL 60](#ALGOL-60)
		- [ALGOL 68](#ALGOL-68)
- [Comparação de Pascal com outras linguagens](#Comparação-de-Pascal-com-outras-linguagens)
	- [C](#C)
		- [Estruturas de Seleção](#Estruturas-de-Seleção)
		- [Estruturas de Iteração](#Estruturas-de-Iteração)
		- [Subrotinas](#Subrotinas)
		- [Variaveis Locais](#Variaveis-Locais)		
	- [ALGOL 68](#ALGOL-68)
		- [Estruturas de Seleção](#Estruturas-de-Seleção)
		- [Estruturas de Iteração](#Estruturas-de-Iteração)
		- [Subrotinas](#Subrotinas)
		- [Variaveis Locais](#Variaveis-Locais)
	- [ALGOL 60](#ALGOL-60)
		- [Estruturas de Seleção](#Estruturas-de-Seleção)
		- [Estruturas de Iteração](#Estruturas-de-Iteração)
		- [Subrotinas](#Subrotinas)
		- [Variaveis Locais](#Variaveis-Locais)
- [Exemplos](#Exemplos)
	- [Exemplos Simples](#Exemplos-Simples)
		- [Exemplo 1](#Exemplo-1)
		- [Exemplo 2](#Exemplo-2)
		- [Exemplo 3](#Exemplo-3)
		- [Exemplo 4](#Exemplo-4)
		- [Exemplo 5](#Exemplo-5)
		- [Exemplo 6](#Exemplo-6)
		- [Exemplo 7](#Exemplo-7)
		- [Exemplo 8](#Exemplo-8)
		- [Exemplo 9](#Exemplo-9)
		- [Exemplo 10](#Exemplo-10)
		- [Exemplo 11](#Exemplo-11)
	- [Exemplos Interessantes](#Exemplos-Interessantes)
		- [Programa interessante 1](#Programa-interessante-1)
		- [Programa interessante 2](#Programa-interessante-2)
		- [Programa interessante 3](#Programa-interessante-3)
		- [Programa interessante 4](#Programa-interessante-4)
- [Referências](#Referências)

## Introdução

**Pascal** é uma linguagem de programação **imperativa**, **procedural** e que tem como principio a **programação estruturada**. Seu nome é uma homenagem ao físico, matemático e filósofo francês Blaise Pascal. Foi criada em 1970 por **Niklaus Wirth**, para sua fábrica de software e para ensinar programação estruturada, como uma linguagem eficiênte e que encoraja boas práticas de programação. Tem  como origem a linguagem **ALGOL 60**, que tem como paradigma a **programação estruturada**, posteriormente sucedida por **ALGOL 68**, linguagem mais complexa que sua antecessora.

## Origens

**Pascal** foi criado por **Niklaus Wirth** em 1970, influenciado pelo padrão do **ALGOL 60**, sucessora do **ALGOL 58**. **ALGOL 60** foi a linguagem que introduziu o paradigma da **programação estruturada**. **Niklaus Wirth** estava envolvido no desenvolvimento de **ALGOL X** e propôs **ALGOL W**. O desenvolvimento de **ALGOL X** foi abandonado pela decisão de escolha de **ALGOL 68**, uma linguagem mais complexa. Em 1968, **Niklaus Wirth** decide desenvolver mais o **ALGOL W** e cria linguagem **Pascal** em 1970. Portanto, temos como principal origem da linguagem Pascal as linguagens **ALGOL**,
principalmente a linguagem **ALGOL W**.

## Influências

Várias foram as linguagens influênciadas por **Pascal**: Ada, Java, Oberon, Oberon-2, **Object Pascal**, Oxygene e etc. **Object Pascal**, extensao da linguagem pascal com orientacao a objetos. Além disso, **Pascal** deu origem a diversos dialetos. Academicamente seus sucessores são **Modula-2** e **Oberon**, linguagens criadas pelo mesmo criador de **Pascal**, **Niklaus Wirth**.

## Linha do Tempo

![logo](graphic.png "logo")

## CLASSIFICAÇÃO

* **Linguagem de Alto Nível**
* **Linguagem Compilada**
* **Linguagem Imperativa**: paradigma de programação que usa *comandos* para mudar o *estado* do programa.
* **Linguagem Procedural**: tipo de programação **imperativa** que o programa é constituido de uma ou mais *subrotinas*.
* **Linguagem Estática**
* **Tem como principio a programação estruturada**
* **Tem tipagem forte**
* **Não é case sensitive**: Diferentemente de linguagens como o **C**, **Pascal** não diferencia o uppercase do lowercase dos caracteres do nome de uma variavel, função ou comando. Desse modo o comando "write" é o mesmo que "Write" e não ocorre erro de compilação por isso, a variavel "letra" é o mesmo que "LETRA" e etc.

## Programação Estruturada

**Programação Estruturada** é uma paradigma de programação com enfase em **decisão**, **iteração** e **sequência**. Surgiu no final da decada de 1950 com linguagens como **ALGOL 58** e **ALGOL 60**. Algumas linguagens que têm como principio a programação estruturada são o **ALGOL**, **Pascal**, **C** e etc. Se sustenta teoricamente pelo **teorema do programa estruturado** de 1966. Segundo o **teorema do programa estruturado**, qualquer *funcao computavel* pode ser expressa por 3 *estruturas de controle*: **sequência**, **seleção** e **iteração**. Em **Programação Estruturada**, programas são vistos como compostos de *estruras de controles*:

* **Sequência**: *comandos* e *subrotinas* são todos executados em sequência
* **Seleção ou Decisão**: *comandos* são executados dependendo do *estado* do programa, a partir de um teste lógico
* **Iteração**: um *comando* ou *bloco de comandos* é executado até o programa chegar a certo *estado*
* **Recursão**: uma *função* que chama a si mesma. Essa estrutura já era usada em linguagens **funcionais**

Além disso, possuem estruturas como *subrotinas*, também conhecidos como *funções* ou *procedimentos*, que dividem o código em *subprogramas* e evitam a repetição dos mesmos trechos de código. Existe também a estrutura de *bloco*, que basicamente trata um conjunto de *comandos* como se fosse um único *comando*. Estruturas como **sequência**, **seleção**, **iteração**, **recursão**, **subrotinas** e **blocos** tornam a programação muito mais organizada e eficiente, além de tornar o código mais manutenível. Antes da **programação estruturada**, os códigos eram muito mais desorganizados com muitos *jumps*, tornando a programação confusa.  De modo simplificado **programação estruturada** pode ser descrita como *programação sem goto*. Esse *comando* basicamente equivale a *jumps* nas linhas do código, ou seja, o *goto* está associado uma *label* que existe em uma parte do código e quando é executado a execução passa para o comando a seguir a essa *label* ao que o *goto* se refere. O uso de *goto* torna muitas vezes o código desorganizado e confuso. Foi fortemente atacado por muitos dos defensores da **programação estruturada** embora existem aqueles como **Donald Knuth** que defendem seu uso em certas situações. Muitas linguagens que seguem o principio da **programação estruturada** não possuem *goto*, de modo a impedir a programação não estruturada. A maioria das linguagens que seguem o paradigma da **programação estruturada** não o seguem totalmente. Muitas delas possuem o comando *goto*, como a linguagem **C** e o **Pascal**. Além disso, grande parte das linguagens que seguem esse paradigma possuem *comandos* como *break*, *continue*, *return* que exercem funcionadades similares ao *goto*.

### Algumas linguagens que têm como principio a programação estruturada

#### Pascal

**Pascal** possui as três **estruturas de controle** que o caracterizam como uma linguagem que tem como principio a **programação estruturada**:
* **sequência**: os *comandos* em **Pascal** são executados de modo sequencial
* **seleção**: **Pascal** possui *comandos* como *if*, *then*, *else*, *case* que são partes constituintes de **estruturas de seleção*
* **iteração**: **Pascal** possui *comandos* como *for*, *repeat*, *until*, *while* que são partes constituintes de **estruturas de iteração**

#### C

**C** possui as três **estruturas de controle** que o caracterizam como uma linguagem que tem como principio a **programação estruturada**:
* **sequência**: os *comandos* em **C** são executados de modo sequencial
* **seleção**: **C** possui *comandos* como *if*, *else*, *switch* que são partes constituintes de **estruturas de seleção**
* **iteração**: C possui *comandos* como *for*, *do*, *while* que são partes constituintes de **estruturas de iteração**

#### ALGOL 60

**ALGOL 60** possui as três **estruturas de controle** que o caracterizam como uma linguagem que tem como principio a **programação estruturada**:
* **sequência**: os *comandos* em **ALGOL 60** são executados de modo sequencial
* **seleção**: **ALGOL 60** possui *comandos* como *if*, *else*, *then*, *switch* que são partes constituintes de **estruturas de seleção**
* **iteração**: **ALGOL 60**  possui *comandos* como *for*, *while*, *until*, *do* que são  partes constituintes de **estruturas de iteração**

#### ALGOL 68

**ALGOL 68** possui as três **estruturas de controle** que o caracterizam como uma linguagem que tem como principio a **programação estruturada**:
* **sequência**: os *comandos* em **ALGOL 68** são executados de modo sequencial
* **seleção**: **ALGOL 68** possui *comandos* como *if*, *else*, *then*, *case*, *fi* que são partes constituintes de **estruturas de seleção**
* **iteração**: **ALGOL 68**  possui *comandos* como *for*, *while*, *by*,*from*, *to*, *do* que são partes constituintes de **estruturas de iteração**

## Comparação de Pascal com outras linguagens

As duas linguagens possuem muitas semalhanças já que ambas foram influênciadas pela linguagem ALGOL e suas versões, além de possuirem como paradigma a programação estruturada. No entanto possuem diferenças.
### C

#### Estruturas de Seleção

No *switch* do **C**, cada *case* do *switch* senão terminar com o *comando* *break* o próximo *case* é executado, ou seja, o *break* impede a execução de **blocos** de *comandos* de outros *case* que não eram para ser executados. Em **Pascal** a ausência de *comando* *break* em algum desses **blocos** não faz com que a execução do **bloco** de *comandos* do caso *case*(*switch* no **C**) seguinte seja executado.

#### Estruturas de Iteração

**Pascal** apenas permite que um *laço for* tenha dois tipos de comportamento:
* percorre um valor inicial até um valor final incrementando 1 na *variavel de controle* de *laço for*
* percorre um valor inicial até um valor final decrementando 1 na *variavel de controle* de *laço for* 
Já em **C**, temos a possibilidade de criar varios tipos de *laço for* além desses. Podemos criamos um *laço* com valor inicial para a *variavel de controle*, um teste lógico e a mudança de valor da *variavel de controle* com qualquer expressão aritemética. Além disso, o *laço for* pode possuir mais que uma *variavel de controle* em **C**, existindo portanto vários tipos de *laços for* na linguagem. Em **Pascal** o *laço for* tem um comportamento mais limitado que em **C**, tornando por vezes necessario a utilização de outras **estruturas de iteração**, como *while..do* e *repeat..until*, para executar a mesma tarefa que seria utilizada em **C** utilizando um *laço for*. A condição logica presente no *comando until* do **Pascal** é a condição de parada do *loop*, enquanto em **C** a condição lógica presente no *while* é a condição para continuar o *loop*.

#### Subrotinas

**Pascal** possui *procedimentos* e *funções*, enquanto **C** possui apenas *funções*. Isso ocorre porque a linguagem **C** tem o tipo *void* e **Pascal** não tem. Desse modo o que seria um *procedimento* em **Pascal** é uma *função void* no **C**. **Pascal** possui duas formas de passar *argumentos* para uma *função*: *por referência*(usa-se *var*) ou *por valor*(usa-se *const*). **C** apenas possui passagem de *argumentos por valor*, mas com o uso de *ponteiros* pode-se emular uma passagem de argumentos por *referência*. Esse é um dos motivos porque a utilização de *ponteiros* é tão necessaria em **C**. Em **C** é possivel ter *ponteiros de funções*, emquanto em **Pascal** isso não é possivel. **C** permite retorno de *struct* nas *funções*. Em **Pascal** isso não é permitido.

##### Funções/procedimentos aninhados

Uma *função/procedimento aninhado* é uma *função/procedimento* definida dentro de uma *função*, ou seja, a *função/procedimento aninhada* é encapsulada dentro da *função* de nível superior. Fora do *escopo da função* de nível superior a *função aninhada não é detectada. Além disso, a *função aninhada* usa as *variaveis locais* da *função* de nível superior. Uma das razões de sua utilização, é a utilidade de dividir *subrotinas* em outras *subrotinas* e encapsular-las. *Funções/procedimentos aninhadas* são usadas tipicamente como *funções* auxiliares ou *funções recursivas* dentro de outra *função*. Têm como vantagem organizar melhor o código, evitando poluir o *escopo*, e compartilham *variaveis* dentro do *escopo* facilmente sem o uso de *parametros* ou usar uma *variavel global*. **ALGOL**, **Pascal**, **Simula 67** são algumas das linguagens que possuem *funções/procedimentos aninhados*. **C** e sua familia de linguagens não possuem *funções/procedimentos aninhados*, sendo essa uma das diferenças entre **C** e **Pascal**. Um dos motivos é que **C** não possui *escopo lexico*. *Funções aninhadas* são tratadas como *escopo lexico*, que não é valido em **C** porque o *compilador* não consegue acessar a localização na *memoria* da *função* interna a outra *função*. Em **C** existem apenas dois *escopos*: o *local* e o *global*. **C** tem como alternativas às *funções aninhadas* o uso de *variaveis static*, além de poder passar a *referência(endereço)* de *variaveis* de um certo *escopo* às *funções que deveriam ser aninhadas*, algo que aumenta a complexidade da *chamada de funções*.
				 
#### Variáveis Locais

Em **C** *variaveis locais* podem ser alocadas em qualquer *bloco* e em qualquer parte de um *bloco de comandos*. Em **Pascal** não é possivel realizar esse tipo de declaração, sendo só permitida a declaração de *variaveis* antes do começo de um bloco de *comandos* de *procedimentos/funções* ou antes do *bloco "main"(programa principal)*.

### ALGOL 68

#### Estruturas de Seleção

Em **ALGOL 68** o *case* deve ter um indice inteiro não negativo e a ordem dos casos é essencial. O índice de valor inteiro i seleciona o i-ésimo caso do *case*.

#### Estruturas de Iteração

Em **ALGOL 68** combina o comando *for* e *while* em um único *comando*, já em **Pascal** eles são comandos distintos. Os *comandos for*, *from*, *by*, *to* e *while* são individualmente opcionais, exceto que se o *comando for* é omitido não há nenhuma *variável de controle*, e consequentemente o *loop* pode não funcionar como o esperado. Em **ALGOL 68** o *laço for* possui mais possibilidades que o *for..do* do **Pascal**, como por exemplo pode-se definir o número de passos a incrementar variavel de controle. A *variável de controle* no **ALGOL 68** é implicitamente declarada pelo *comando for* e atribuições a ela são ilegais. O *escopo* da *variável de controle* está no *loop*, tornando ela inacessível fora do *laço*. Desse modo, se uma *variável* fora do *loop for* declarada com o mesmo nome, ela não afeta a *variável de controle*. Além disso, a *variável de controle* é declarada como um inteiro. Já em **Pascal** a *variável de controle* deve ser declarada, e o seu tipo não precisa ser necessariamente um inteiro, pode ser um real também. A *variável de controle* em **Pascal** é acessível fora do *loop*. Em **ALGOL 68** as expressões depois de *by* e *to* são avaliadas antes do começo do *loop*, permitindo desse modo a alteração das *variáveis* que compoem esse comando. **Pascal** tem o *comando repeat*, enquanto **ALGOL 68** utiliza apenas o *while*, também existente no **Pascal**. 

#### Subrotinas

No **ALGOL 68** *procedimentos* podem ser elementos de *arrays*, *campos de estruturas*, *retorno* de *funções* e etc. Além disso, pode existir *ponteiro para procedimentos* no **ALGOL 68**. Já no **Pascal**, *procedimentos* apenas podem ser chamados ou passados como *argumentos*. Todo *procedimento* em **ALGOL 68** retorna algum valor. Em **Pascal**, *procedimentos* por definição não retornam nada. *Funções* em **ALGOL 68** podem retornar qualquer tipo dado existente na linguagem. Em **Pascal** nem todos os tipos são permitidos como retorno de uma função. Arrays e structs não podem ser retorno de uma função. Desse modo, existe uma coleção de tipos restrita no **Pascal** que podem ser retorno de *funções*. Em **ALGOL 68** existe um único tipo de *parâmetro*, aquele que é chamado por valor. Já em **Pascal** existem três tipos de *parâmetros*: por *valor*, por *referência*, *procedure*(incluindo *function*).

#### Variaveis Locais

No **ALGOL 68** é possível declarar *variáveis locais* em qualquer *bloco* e em qualquer parte de um *bloco*. As *variáveis* passam a existir quando a execução entra no *bloco* e deixam de existir quando sai do *bloco*. Em **Pascal** só é permitida a declaração de *variáveis locais* dentro do *nível de procedimento*, ou seja, não é permitida a declaração de *variáveis locais* em outros tipos de *bloco* que não o de *procedimentos/funções* ou o do *programa "main"*. Além disso, **Pascal** só permite a declaração de *variáveis locais* antes do comando de *inicio bloco BEGIN*.

### ALGOL 60 

#### Estruturas de Seleção

Em **ALGOL 60** o *SWITCH* deve ter um índice inteiro não negativo e a ordem dos casos é essencial. O índice de valor inteiro i seleciona o i-ésimo caso do case. Em **Pascal** o índice pode ser char, integer ou boolean.

#### Estruturas de Iteração

**ALGOL 60** usa como **estrutura de iteração** o *for*, que combinado com *step..until..do* ou *while..do* possibilita criar mais tipos de *laço* que em **Pascal**. No caso de *for..step..until..do*, *step* são os passos que podem ser um numero inteiro a escolha e o *until* a condição de parada do *loop*. Sendo assim, *for..step..until* tem muito mais possibilidades do que o *laço for* no **Pascal**. Já no caso de *for..while..do*, *while* é seguido de uma expressão lógica que faz com que o *bloco de comandos* do *loop* seja repetido se a expressão for verdadeira e e não é repetido quando a expressão for falsa. O comando *for..while..do* equivale quase ao *while* do **Pascal**, com a diferença que *for..while..do* inicializa uma *variável*, enquanto o *while* não.

#### Subrotinas
#### Variáveis Locais

## Exemplos

### Exemplos Simples

#### Exemplo 1

Comparação de um programa básico entre **Pascal** e **C**. É printado na tela a frase: Ola, Mundo!

**Pascal**:
``` pascal
	program OlaMundo;  
	begin
	   writeln('Ola, Mundo!');
	end.
```

**C**:
``` C
	#include<stdio.h>

	int main(){
		printf("Ola, Mundo!\n");
		return 0;
	}
```

#### Exemplo 2

Esse programa basicamente lê um conjunto de valores reais e calcula a média aritemética. É interessante notar o uso da estrutura em **Pascal** *repeat..until* em contraste com a estrutura *do..while* do **C**, e como a expressão booleana a seguir do *until* é uma condição de parada, enquanto a seguir ao *while* é uma condição de continuação do *loop*.

**Pascal**:
``` pascal
	program Media;
	var v: array[1..100] of REAL;
	var m,x: real;
	var i,n: integer;

	begin
		n:=0;
		m:=0;
		repeat
		begin
			write('v[',(n+1),'] = ');
			readln(x);			
			v[n+1]:=x;
			n:=n+1;
		end;
		until x<0;
		n:=n-1;
		for i:=1 to n+1 do
		begin
			m:=m+v[i];
		end;
		if n<=0 then
		begin
			writeln('Erro no Calculo da Media.....');
		end
		else
		begin
			writeln('Media -> ',m/n:0:3);
		end;
	end.
```

**C**:
``` C
	#include<stdio.h>

	float v[100];
	float m,x;
	int i,n;

	int main(){
		n=0;
		m=0;
		do{
			printf("v[%d] = ",n+1);
			scanf("%f",&x);
			printf("%f\n",x);
			v[n+1]=x;
			n++;
		}while(x>=0);
		n--;
		for(i=1;i<n+1;i++){
			m+=v[i];
		}
		if(n<=0){
			printf("Erro no Calculo da Media.....\n");
		}
		else{
			printf("Media -> %0.3f\n",m/n);
		}
		return 0;
	}
```

#### Exemplo 3

Programa que implementa uma *função* que troca o valor entre duas *variáveis*, ou seja, uma *variável* adquire o valor da outra e vice-versa. No código em **Pascal** estam definidos três tipos de *procedimento*: com *passagem de parâmetros por valor*, *por referência* e um com *parâmetros* sendo *ponteiros*. A *função* swap1 e swap2 têm a mesma funcionalidade de trocar o valor das *variáveis*. Já no código em **C** temos dois tipos de *funções*: a *passagem por valor* e uma com os *parâmetros* sendo *ponteiros*. No caso do swap1 nada acontece com o valor das *variáveis*, já o swap2 do **C** tem a mesma funcionadade que o swap1 e swap2 do **Pascal**, e o valor das *variáveis* são trocados. Isso demonstra que enquanto o **Pascal** tem um recurso próprio que permite a *passagem de argumentos por referência*, o **C** não possui, tornando muito necessário o uso de *ponteiros* na linguagem **C**.

**Pascal**:
``` pascal
	program swap;
	type
		pint=^integer;
	procedure impr(const a,b:integer);//por valor
	begin
		writeln('x=',a,' ','y=',b);
	end;
	procedure swap1(var a,b:integer);//por referencia, uso de 'var'
	var
		tmp:integer;
	begin
		tmp:=a;
		a:=b;
		b:=tmp;
	end;

	procedure swap2(a,b:pint);//por referencia, uso de ponteiros
	var
		tmp:integer;
	begin
		tmp:=a^;
		a^:=b^;
		b^:=tmp;
	end;

	procedure prog();
	var
		x,y:integer;
	begin
		x:=10;
		y:=20;
		impr(x,y);
		swap1(x,y);
		impr(x,y);
		swap2(@x,@y);
		impr(x,y);
	end;
	
	begin
		prog();
	end.
```

**C**:
``` C
	#include<stdio.h>

	void impr(const int a,const int b){//por valor
		printf("x=%d y=%d\n",a,b);
	}
	void swap1(int a,int b){//por valor
		int tmp;
		tmp=a;
		a=b;
		b=tmp;
	}
	void swap2(int * a, int * b){//por referencia
		int tmp;
		tmp=*a;
		*a=*b;
		*b=tmp;
	}
	void prog(){
		int x,y;
		x=10;
		y=20;
		impr(x,y);
		swap1(x,y);
		impr(x,y);
		swap2(&x,&y);
		impr(x,y);
	}
	int main(){
		prog();
	return 0;
	}
```

#### Exemplo 4

Programa que é uma calculadora de números complexos que realiza três operações: adição, subtração e multiplicação. É importante notar a necessidade do uso do *comando break* em cada *case* do *switch* do **C**, enquanto em **Pascal** esse *comando* não é necessário.

**Pascal**:
``` pascal
	program complexo;

	type 
		comp=record
			re:integer;
			im:integer;
		end;

	var a,b:comp;
	var ch:char;

	begin
		writeln('a -> ');
		write('Re(a) = ');
		readln(a.re);
		write('Im(a) = ');
		readln(a.im);
		writeln('b -> ');
		write('Re(b) = ');
		readln(b.re);
		write('Im(b) = ');
		readln(b.im);
		writeln(#10,#10,'a = ',a.re,' + ',a.im,'i',#10,'b = ',b.re,' + ',b.im,'i');
		while true do
		begin
			writeln(#10,'Digite um caracter');
			writeln('a -> soma',#10,'s -> subtrai',#10,'m -> multiplica',#10,'outro caracter -> termina execucao');
			readln(ch);
			case ch of
				'a':
					writeln('a+b = ',a.re+b.re,' + ',a.im+b.im,'i');
				's':
					writeln('a-b = ',a.re-b.re,' + ',a.im-b.im,'i');
				'm':
					writeln('a*b = ',((a.re*b.re)-(a.im*b.im)),' + ',((a.re*b.im)+(a.im*b.re)),'i');
				else
					break;
			end;
		end;
	end.
```

**C**:
``` C
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
```

#### Exemplo 5

Programa que basicamente demonstra a necessidade do uso do *comando break* ao fim de cada *case* no *switch* do **C**, enquanto no **Pascal** isso não é necessário. Enquanto no código em **Pascal** só será executado o caso do caracter digitado correspondente, no **C** ou todas as opções são executadas ou duas opções são executadas, respectivamente, se o caracter digitado for 'a' todas são executadas, se o caracter digitado for 'b' o caso b e o default é executado.

**Pascal**:
``` pascal
	program flow;

	var ch:char;

	begin
		writeln('Digite o caracter a ou b: ');
		readln(ch);
		case ch of
			'a':
				writeln('caso a');
			'b':
				writeln('caso b');
			else
				writeln('nao foi digitado nem a e nem b');
		end;
	end.
```

**C**:
``` C
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
```

#### Exemplo 6

Programa que printa uma série de números formados apartir de operações de multiplicação. Tem como objetivo demonstrar a versatilidade do *comando for* no **C** em constraste com o *for..do* do Pascal que é bem restrito, de tal modo que é mais interessante usar um *while..do* nesse caso.

**Pascal**:
``` pascal
	program serie;

	var r:integer;
	var s,i:integer;

	begin
		write('base: ');
		readln(r);
		s:=0;
		i:=1;
		while i<=1000 do
		begin
			s:=s+i;
			i:=i*r;
			write(s,' ');
		end;
	end.
```

**C**:
``` C
	#include<stdio.h>
	int main(){
		int r,s,i;
		printf("base: ");
		scanf("%d",&r);
		s=0;
		for(i=1;i<=1000;i*=r){
			s+=i;
			printf("%d ",s);
		}
		return 0;
	}
```

#### Exemplo 7

Programa que calcula a diferença entre o elemento máximo e o mínimo num conjunto de valores inteiros. Tem a presença de *função aninhada* no código **Pascal**, onde se observa como o código fica mais organizado e o escopo global menos poluido perante o código em **C**.

**Pascal**:
``` pascal
	program distancia;

	var v:array[1..10] of integer;
	var i,x:integer;

	function dist():integer;
	var
		m:integer;
		function max():integer;
		begin
			m:=0;
			for i:=1 to 10 do
			begin
				if v[i]>m then
				begin
					m:=v[i];
				end;	
			end;
			max:=m;
		end;
		function min():integer;
		begin
			m:=v[1];
			for i:=2 to 10 do
			begin
				if v[i]<m then
				begin
					m:=v[i];
				end;	
			end;
			min:=m;
		end;
	begin
		dist:=max()-min();
	end;

	begin
		for i:=1 to 10 do
		begin
			write('v[',i,'] = ');
			readln(v[i]);
		end;
		writeln(#10,#10,'distancia entre o maximo e o minimo: ',dist());
	end.
```

**C**:
``` C
	#include<stdio.h>

	int v[10];
	int i,x;

	int max(){
		int m=0;
		for(i=0;i<10;i++){ 
			if(v[i]>m){
				m=v[i];
			}	
		}
		return m;
	}
	int min(){
		int m=v[0];
		for(i=0;i<10;i++){ 
			if(v[i]<m){
				m=v[i];
			}	
		}
		return m;
	}

	int dist(){
		return max()-min();
	}
	int main(){
		for(i=0;i<10;i++){
			printf("v[%d] = ",i);
			scanf("%d",&v[i]);
		}
		printf("\n\ndistancia entre o maximo e o minimo: %d\n",dist());
		return 0;
	}
```

#### Exemplo 8

Programa que calcula o número de euler de modo recursivo usando como auxilio uma *função* fatorial recursiva. O código em **Pascal** utiliza *função aninhada*, sendo algo interessante já que a *função* fatorial só é utilizada dentro da *função* calc, que calcula o número de euler.

**Pascal**:
``` pascal
	program euler;

	var e:real;
	var x:integer;

	procedure calc(i:integer);
		function fat(x:integer):integer;
		begin
			if x=0 then
			begin
				fat:=1;
			end
			else
			begin
				fat:=x*fat(x-1);
			end;
		end;
	begin
		if i>=0 then
		begin
			e:=e+(1/fat(i));
			calc(i-1);
		end;
	end;

	begin
		e:=0;
		write('Digite o numero de iteracoes: ');
		readln(x);
		calc(x);
		writeln('e = ',e:0:20);
	end.
```

**C**:
``` C
	#include<stdio.h>

	double e;
	int x;

	int fat(int x){
		if(x==0){
			return 1;
		}
		else{
			return x*fat(x-1);
		}
	}

	void calc(int i){
		if(i>=0){
			e+=(1/((double)fat(i)));
			calc(i-1);
		}
	}

	int main(){
		e=0;
		printf("Digite o numero de iteracoes: ");
		scanf("%d",&x);
		calc(x);
		printf("e = %0.20lf\n",e);
		return 0;
	}
```

#### Exemplo 9

Programa que obtem a fatoração de um número inteiro. Em **Pascal** se utiliza de *função aninhada*. É importante observar o contraste com a mesma versão do programa em **C**, que não possui o recurso de *funções aninhadas*. No código em **C**, a *função* divsuc tem dois *parâmetros* sendo um deles um *ponteiro*. 

**Pascal**:
``` pascal
	program fatoracao;

	var
		a:integer;
	procedure fat(n:integer);
	var
		i,x:integer;
		function divsuc():integer;
		var 
			e:integer;
		begin
			e:=0;
			while (n mod i)=0 do
			begin
				e:=e+1;
				n:=n div i;
			end;
			divsuc:=e;
		end;
	begin
		for i:=2 to n-1 do
		begin
			x:=divsuc();
			if x<>0 then
			begin
				write(i,'^',x,' ');
			end;
		end;
	end;

	begin
		write('a = ');
		readln(a);
		fat(a);
	end.
```

**C**:
``` C
	#include<stdio.h>

	int a;

	int divsuc(int * n,int i){
		int e=0;
		while(((*n)%i)==0){
			e++;
			*n=(int) (*n)/i;
		}
		return e;
	}

	void fat(int n){
		int i,x;
		for(i=2;i<=n;i++){
			x=divsuc(&n,i);
			if(x!=0){
				printf("%d^%d ",i,x);
			}
		}
	}
	int main(){
		printf("a = ");
		scanf("%d",&a);
		fat(a);
		return 0;
	}
```

#### Exemplo 10

Programa que printa a relação de ordem entre dois números inteiros. Tem como objetivo comparar a programação estruturada com a não estruturada. O código em **C** que usa muito comando goto e poucas estruturas de controle é menos legível que o código em **Pascal** que utiliza **programação estruturada**.

**Pascal**:
``` pascal
	program jump;

	var a,b:integer;

	begin
		write('a = ');
		readln(a);
		write('b = ');
		readln(b);

		if a<b then
		begin
			writeln('a<b');
		end
		else if b<a then
		begin
			writeln('a>b');
		end
		else
		begin
			writeln('a=b');
		end;
	end.
```

**C**:
``` C
	#include<stdio.h>

	int main(){
		int a,b;
		printf("a = ");
		scanf("%d",&a);
		printf("b = ");
		scanf("%d",&b);

		if(a<b) goto l1;
		l1:
			printf("a<b\n");
			goto l4;
		if(b<a) goto l2;
		l2:
			printf("a>b\n");
			goto l4;
		l3:
			printf("a=b\n");
		l4:
		return 0;
	}
```

#### Exemplo 11

Programa que printa varias potencias de um número inteiro. Tem como objetivo comparar a programação estruturada com a não estruturada. O código em **C** que usa muito comando goto e poucas estruturas de controle é menos legível que o código em **Pascal** que utiliza **programação estruturada**.

**Pascal**:
``` pascal
	program gotoc;

	var 
		i,n: integer;
		ch:char;

	begin	
		while true do
		begin
			write('n = ');
			readln(n);
			if n>=0 then
			begin
				break;
			end;
		end;

		for i:=0 to 9 do
		begin
			write(n,' ');
			n:=n*n;
		end;

		while true do
		begin
			writeln(#10,'Pressione o caracter s para sair.....');
			readln(ch);
			if ch='s' then
			begin
				break;
			end;
		end;
	end.
```

**C**:
``` C
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
```

### Exemplos Interessantes

#### Programa interessante 1

Implementação de uma pilha em **Pascal**, comparando com a mesma implementação em **C**.

**Pascal**:
``` pascal
program pilha;

type 
	stack = record
		v:array[1..100] of integer;
		top:^integer;//topo da pilha
		n:integer;//quantidade de elementos na pilha
	end;
var
	s:stack;
	ch:char;
	x,i:integer;

procedure cria(p:stack);
begin
	p.top:=nil;
	p.n:=0;
end;

procedure empilha(var p:stack;const x:integer);//empilha um elemento na pilha
begin
	if p.n=0 then
	begin
		p.n:=1;
		p.v[p.n]:=x;
		p.top:=@(p.v[p.n]);
	end
	else if p.n<100 then
	begin
		p.n:=p.n+1;
		p.v[p.n]:=x;
		inc(p.top);
	end
	else
	begin
		writeln('Pilha cheia');
	end;
end;

function tamanho(var p:stack):integer;//obtem o tamanho da pilha
begin
	tamanho:=p.n;
end;

function topo(var p:stack):integer;//obtem o elemento no topo da pilha
begin
	topo:=(p.top)^;
end;

procedure desempilha(var p:stack);//desempilha um elemento da pilha
begin
	if p.n=1 then
	begin
		writeln(topo(p),' desempilhado');
		p.n:=0;
		p.top:=nil;
	end
	else if p.n>1 then
	begin
		writeln(topo(p),' desempilhado');
		p.n:=p.n-1;
		dec(p.top);
	end
	else
	begin
		writeln('Pilha vazia');
	end;
end;

begin
	while true do
	begin
		writeln(#10,'Digite um caracter');
		writeln('e -> empilha');
		writeln('d -> desempilha');
		writeln('s -> tamanho');
		writeln('t -> topo');
		writeln('l -> lista pilha inteira');
		writeln('outro caracter -> sai',#10);
		readln(ch);
		if ch='e'then
		begin
			write('Digite um inteiro: ');
			readln(x);
			empilha(s,x);
		end
		else if ch='d' then
		begin
			desempilha(s);
		end
		else if ch='s' then
		begin
			writeln('tamanho ',tamanho(s));
		end
		else if ch='t' then
		begin
			if tamanho(s)=0 then
			begin
				writeln('pilha vazia');
			end
			else
			begin
				writeln('topo ',topo(s));
			end;
		end
		else if ch='l' then
		begin
			write('pilha -> ');
			for i:=tamanho(s) downto 1 do
			begin
				write(s.v[i],' ');
			end;
		end
		else
		begin
			break;
		end;
	end;
end. 
```

**C**:
``` C
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
```

#### Programa interessante 2

Programa de criptografia, implementado em **Pascal** e comparado com a implementação em **C**, que utiliza uma chave com dígitos sendo que cada dígito soma a letra da string que está na mesma posicao que ele, de modo "circular", ou seja, a chave volta para o dígito inicial depois que percorre todos os dígitos. Na desencriptacao é usada a subtração da letra pelo dígito correspondente da chave de modo a obter a mensagem original.
Exemplo: se a chave possuir 3 dígitos e a string 7 letras:
encriptacao:
		letra 1 = letra 1  +  dígito 1
		letra 2 = letra 2  +  dígito 2
		letra 3 = letra 3  +  dígito 3
		letra 4 = letra 4  +  dígito 1
		letra 5 = letra 5  +  dígito 2
		letra 6 = letra 6  +  dígito 3
		letra 7 = letra 7  +  dígito 1
desencriptacao:
		letra 1 = letra 1  -  dígito 1
		letra 2 = letra 2  -  dígito 2
		letra 3 = letra 3  -  dígito 3
		letra 4 = letra 4  -  dígito 1
		letra 5 = letra 5  -  dígito 2
		letra 6 = letra 6  -  dígito 3
		letra 7 = letra 7  -  dígito 1
Exemplo: chave=123 string='banana' string encriptada='ccqbpd' desencriptacao da string encriptada='banana'

**Pascal**:
``` pascal
program Criptografia;

var
	s,t:string;
	ch:char;
	chave: array[1..100] of integer;

procedure leMensagem();
begin
	write('Digite a mensagem: ');
	readln(s);
end;

procedure initChave();//o usuario informa a chave
var
	i:integer;
var 
	b:boolean;
begin
	while true do
	begin
		b:=true;
		write('Chave -> ');
		readln(t);
		for i:=1 to 100 do
		begin
			if i>length(t) then//zera todas as posicoes da chave que vao alem da string
			begin
				chave[i]:=0;
			end
			else if (ord(t[i])>=49) and (ord(t[i])<=57) then//verifica se e' digito numerico
			begin
				chave[i]:=ord(t[i])-48;
			end
			else
			begin
				writeln('Chave Invalida',#10);
				b:=false;
				break;
			end;
		end;
		if b then//flag
		begin
			break;
		end;
	end;
end;

procedure Encript();//encriptacao
var
	i,j,x:integer;
begin
	j:=1;
	for i:=1 to length(s) do
	begin
		if chave[j]=0 then
		begin
			j:=1;
		end;
		x:=(chave[j]+ord(s[i])) mod 256;
		s[i]:=chr(x);
		j:=j+1;
	end;
end;

procedure Decript();//decriptacao
var
	i,j,x:integer;
begin
	j:=1;
	for i:=1 to length(s) do
	begin
		if chave[j]=0 then
		begin
			j:=1;
		end;
		x:=(ord(s[i])-chave[j]) mod 256;
		s[i]:=chr(x);
		j:=j+1;
	end;
end;

begin
	while true do
	begin
		writeln('Digite um caracter');
		writeln('e -> encriptar mensagem');
		writeln('d -> decriptar mensagem');
		writeln('t -> testar encripatacao e decriptacao');
		writeln('outro caracter -> sai');
		readln(ch);
		if ch='e' then
		begin
			leMensagem();
			initChave();
			Encript();
			writeln('mensagem encriptada -> ',s,#10,#10);
		end
		else if ch='d' then
		begin
			leMensagem();
			initChave();
			Decript();
			writeln('mensagem decriptada -> ',s,#10,#10);
		end
		else if ch='t' then
		begin
			leMensagem();
			initChave();
			Encript();
			writeln('mensagem encriptada -> ',s);
			Decript();
			writeln('mensagem decriptada -> ',s,#10,#10);
		end
		else
		begin
			break;
		end;
	end;
end.
```

**C**:
``` C
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
```

#### Programa interessante 3

Programa que converte de binário para decimal e de decimal para binário(de modo recursivo), implementado em **Pascal** e comparado com **C**.

**Pascal**:
``` pascal
program BinDec;

uses math;

var 
	b: string;//numero binario
	d: integer;//numero decimal
	k:integer;
	ch:char;

procedure init();
var
	i:integer;
begin
	SetLength(b,100);
	for i:=0 to length(b) do
	begin
		b[i]:=' ';
	end;
	d:=0;
	k:=1;
end;

procedure inputBin();
var
	i:integer;
	bol:boolean;
begin
	while true do
	begin
		bol:=true;
		write('Digite um numero binario: ');
		readln(b);
		
		for i:=1 to length(b) do//verifica se o numero e' binario
		begin
			if (b[i]<>'1') and (b[i]<>'0') then
			begin
				writeln('Nao e numero binario');
				bol:=false;
				break;
			end;
		end;
		if bol then
		begin
			break;
		end;
	end;
end;

procedure inputDec();
begin
	write('Digite um numero decimal: ');
	readln(d);
end;

function pot(n:integer;e:integer):integer;//potenciacao
var
	j:integer;
begin
	pot:=1;
	for j:=1 to e do
	begin
		pot:=pot*n;
	end;
end;

procedure BinToDec();//converte de binario para decimal
var
	i:integer;
begin
	d:=0;
	for i:=length(b) downto 1 do
	begin
		if b[i]='1' then
		begin
			d:=d+pot(2,length(b)-i);
		end;
	end;
end;

procedure DecToBin(n:integer);//converte de decimal para binario usando recursao
begin
	if n>0 then
	begin
		DecToBin(n div 2);
		if n mod 2 = 0 then
		begin
			b[k]:='0';
		end
		else
		begin
			b[k]:='1';
		end;
		k:=k+1;
	end;
end;

begin
	while true do
	begin
		writeln();
		writeln('Digite um caracter');
		writeln('b -> converte de binario para decimal');
		writeln('d -> converte de decimal para binario');
		writeln('outros caracteres -> sai');
		readln(ch);
		init();
		if ch='b' then
		begin
			inputBin();
			BinToDec();
			writeln(d);
		end
		else if ch='d' then
		begin
			inputDec();
			DecToBin(d);
			writeln(b);
		end
		else
		begin
			break;
		end;
	end;
end.
```

**C**:
``` C
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
```

#### Programa interessante 4

Programa que calcula todos os números primos menores ou iguais ao número inteiro digitado pelo usuário. 

**Pascal**:
``` pascal
program Primos;

uses math;

var p: array[1..100000000] of Longint;
var n,max: Longint; 

procedure input();
begin
	write('Numeros primos ate: ');
	readln(max);
	writeln();
end;

procedure calc();
var
	i,j:Longint;
	b: boolean;
begin
	p[1]:=2; //inicializa com o primeiro primo
	n:=1;
	for i:=3 to max do//percorre todos os numeros entre 3 e o numero maximo
	begin
		b:=true;
		j:=1;
		while p[j]<=sqrt(i) and p[j]>=2 do//p[j]>=2 verifica se o valor foi inicializado ou nao; percorre-se todos os primos menores que a raiz quadrada do numero i
		begin
			if i mod p[j] = 0 then//verifica se o numero i e' divisivel pelo primo p[j]
			begin
				b:=false;
				break;
			end;
			j:=j+1;
		end;				
		if b then
		begin
			n:=n+1;
			p[n]:=i;
		end;			
	end;
end;

procedure impr();
var
	i:Longint;
begin
	for i:=1 to n do//imprime os primos
	begin
		write(p[i],' ');
		if i mod 10 = 0 then//pula de linha a cada 10 primos
		begin
			writeln();
		end;
	end;
	writeln();
	writeln();
	write('n = ',n);//numero de primos
end;
		
begin
	input();
	calc();
	impr();								
end.
```

**C**:
``` C
#include<stdio.h>
#include<math.h>

long p[100000000];
long n,max; 

void input(){
	printf("Numeros primos ate: ");
	scanf("%ld",&max);
	printf("\n");
}

void calc(){
	long i,j;
	int b;//b: boolean;
	p[0]=2; //inicializa com o primeiro primo
	n=1;
	for(i=3;i<=max;i++){
		b=1;	
		j=0;
		while(p[j]<=sqrt(i) && p[j]!=0){//p[j]!=0 verifica se tem numero primo nessa posicao
			if(i%p[j]==0){;
				b=0;
				break;
			}
			j++;
		}		
		if(b){
			p[n]=i;
			n++;
		}		
	}
}

void impr(){
	long i;
	for(i=0;i<n;i++){//imprime os primos
		printf("%ld ",p[i]);
		if(i%10==0){//pula de linha a cada 10 primos
			printf("\n");
		}
	}
	printf("\n\nn = %ld\n",n);//numero de primos
}

int main(){
	input();
	calc();
	impr();
	return 0;								
}
```

## Referências

https://www.masswerk.at/algol60/report.htm
https://en.wikipedia.org/wiki/Nested_function
https://en.wikipedia.org/wiki/Comparison_of_Pascal_and_C
https://pt.wikipedia.org/wiki/Pascal_(linguagem_de_programa%C3%A7%C3%A3o)
https://en.wikipedia.org/wiki/Pascal_(programming_language)
https://en.wikipedia.org/wiki/Structured_programming
https://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_estruturada
<p>A comparison of Pascal and ALGOL 68 - A.S.Tanenbaum</p>
SOS ALGOL 60 REFERENCE MANUAL
