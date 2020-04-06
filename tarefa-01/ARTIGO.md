# PASCAL

## INDICE

## INTRODUÇÃO

## ORIGENS

## INFLUÊNCIAS

## LINHA DO TEMPO

## CLASSIFICAÇÃO
* **Linguagem de Alto Nível**
* **Linguagem Compilada**
* **Linguagem Imperativa**: paradigma de programação que usa comandos para mudar o estado do programa.
* **Linguagem Procedural**: tipo de programação imperativa que o programa é constituido de uma ou mais subrotinas.
* **Linguagem Estática**
* **Tem como principio a programação estruturada**
* **Tem tipagem forte**
* **Não é case sensitive**: Diferentemente de linguagens como o C, Pascal não diferencia o uppercase do lowercase dos caracteres do nome de uma variavel, função ou comando. Desse modo o comando "write" é o mesmo que "Write" e não ocorre erro de compilação por isso, a variavel "letra" é o mesmo que "LETRA" e etc.

## PROGRAMAÇÃO ESTRUTURADA
Programação Estruturada é uma paradigma de programação com enfase em decisão, iteração e sequência. Surgiu no final da decada de 1950 com linguagens como ALGOL 58 e ALGOL 60. Algumas linguagens que têm como principio a programação estruturada são o ALGOL, Pascal, C e etc. Se sustenta teoricamente pelo **teorema do programa estruturado** de 1966. Segundo o **teorema do programa estruturado**, qualquer funcao computavel pode ser expressa por 3 estruturas de controle: sequência, seleção e iteração. Em Programação Estruturada, programas são vistos como compostos de estruras de controles.

### Estruturas de Controles:

* **Sequência**: comandos ou subrotinas são todos executados em sequência
* **Seleção ou Decisão**: comandos são executados dependendo do estado do programa, a partir de um teste lógico
* **Iteração**: um comando ou bloco é executado até o programa chegar a certo estado
* **Recursão**

### Algumas linguagens que têm como principio a programação estruturada

#### Pascal
Pascal possui as 3 estruturas de controle que o caracterizam como uma linguagem que tem como principio a programação estruturada:
* **sequência**: os comandos em pascal são executados de modo sequencial
* **seleção**: pascal possui comandos como if, then, else, case que são estruturas de seleção
* **iteração**: pascal possui comandos como for, repeat,until, while que são estruturas de iteração

#### C
C possui as 3 estruturas de controle que o caracterizam como uma linguagem que tem como principio a programação estruturada:
* **sequência**: os comandos em C são executados de modo sequencial
* **seleção**: C possui comandos como if, else, switch que são estruturas de seleção
* **iteração**: C possui comandos como for, do while, while que são estruturas de iteração

#### ALGOL

## COMPARAÇÃO DE PASCAL COM C
As duas linguagens possuem muitas semalhanças já que ambas foram influênciadas pela linguagem ALGOL e suas versões, além de possuitem como paradigma a programação estruturada. No entanto possuem diferenças.

### Pascal possui Nested Procedures/Functions

### Procedimentos e Funções
Pascal possui procedimentos e funções, enquanto C possui apenas funções. Isso ocorre porque a linguagem C tem o tipo void enquanto Pascal não. Desse modo o que seria um procedimento em pascal é uma função void no C.

### A estrutura de controle de iteração for
Pascal apenas permite que o um laço for tenha dois tipos de comportamento:
* percorre um valor inicial até um valor final incrementando 1 na variavel de controle de laço for
* percorre um valor inicial até um valor final decrementando 1 na variavel de controle de laço for. 

Já em C, temos a possibilidade de criar varios tipos de laço for além desses. Basicamente em C criamos um laço com valor inicial para a variavel de controle, um teste lógico e mudança de valor da variavel de controle. Desse modo, em Pascal o laço for tem um comportamento mais limitado que em C, tornando por vezes necessario a utilização de outras estruturas de iteração para executar a mesma tarefa que seria utilizada em C utilizando um laço for.

### repeat until e o do while
Enquanto em Pascal a condição logica presente no until é a condição de parada do loop, em C a condição lógica presente no while é a condição para continuar o loop.

### Argumentos de procedimentos/funções
Pascal possui duas formas de passar argumentos para uma função: por referência(usa-se "var") ou por valor(usa-se "const"). C apenas possui passagem por valor, mas com o uso de ponteiros pode-se emular uma passagem por referência.

## EXEMPLOS

## REFERÊNCIAS

