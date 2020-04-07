# PASCAL

## INDICE

## INTRODUÇÃO

## ORIGENS
Pascal foi criado por Niklaus Wirth em 1970, influenciado pelo padrão do ALGOL 60, sucessora do ALGOL 58. ALGOL 60 foi a linguagem que introduziu o paradigma da programação estruturada. Niklaus Wirth estava envolvido no desenvolvimento de ALGOL X e propôs ALGOL W. O desenvolvimento de ALGOL X foi abandonado pela decisão de escolha de ALGOL 68, uma linguagem mais complexa. Em 1968, Niklaus Wirth decide desenvolver mais ALGOL W 
e cria linguagem Pascal em 1970. Portanto, temos como principal origem da linguagem Pascal as linguagens ALGOL,
principalmente a linguagem ALGOL W.


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
* **Recursão**: uma função que chama a si mesma. Essa estrutura já era usada em linguagens com o paradigma funcional

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

#### ALGOL 60
ALGOL 60 possui as 3 estruturas de controle que o caracterizam como uma linguagem que tem como principio a programação estruturada:
* **sequência**: os comandos em ALGOL 60 são executados de modo sequencial
* **seleção**: ALGOL 60 possui comandos como if, else, then, case que são estruturas de seleção
* **iteração**: ALGOL 60  possui comandos como for, while, que são estruturas de iteração

#### ALGOL 68
ALGOL 68 possui as 3 estruturas de controle que o caracterizam como uma linguagem que tem como principio a programação estruturada:
* **sequência**: os comandos em ALGOL 68 são executados de modo sequencial
* **seleção**: ALGOL 68 possui comandos como if, else, then, case que são estruturas de seleção
* **iteração**: ALGOL 68  possui comandos como for, while, que são estruturas de iteração

## COMPARAÇÃO DE PASCAL COM OUTRAS LINGUAGENS

## COMPARAÇÃO DE PASCAL COM C
As duas linguagens possuem muitas semalhanças já que ambas foram influênciadas pela linguagem ALGOL e suas versões, além de possuirem como paradigma a programação estruturada. No entanto possuem diferenças.
### Estruturas de Seleção
No switch do C, cada case do switch senão terminar com o comando break o próximo case é executado, ou seja, o break impede a execução de blocos de comandos de outros cases que não eram para ser executados. Em Pascal a assensia de comando break não faz com que a execução do bloco de comandos do caso case(switch no C) seguinte seja executado.
### Estruturas de Iteração
Pascal apenas permite que o um laço for tenha dois tipos de comportamento:
* percorre um valor inicial até um valor final incrementando 1 na variavel de controle de laço for
* percorre um valor inicial até um valor final decrementando 1 na variavel de controle de laço for. 

Já em C, temos a possibilidade de criar varios tipos de laço for além desses. Em C criamos um laço com valor inicial para a variavel de controle, um teste lógico e a mudança de valor da variavel de controle. Além disso, o laço for pode possuir mais que uma variavel de controle em C, existindo portanto vários tipos de laços forn a linguagem. Em Pascal o laço for tem um comportamento mais limitado que em C, tornando por vezes necessario a utilização de outras estruturas de iteração, como while..do e repeat..until, para executar a mesma tarefa que seria utilizada em C utilizando um laço for.
Enquanto em Pascal a condição logica presente no until é a condição de parada do loop, em C a condição lógica presente no while é a condição para continuar o loop.
### Subrotinas
Pascal possui procedimentos e funções, enquanto C possui apenas funções. Isso ocorre porque a linguagem C tem o tipo void enquanto Pascal não. Desse modo o que seria um procedimento em Pascal é uma função void no C. Pascal possui duas formas de passar argumentos para uma função: por referência(usa-se "var") ou por valor(usa-se "const"). C apenas possui passagem de argumentos por valor, mas com o uso de ponteiros pode-se emular uma passagem por referência. Esse é um dos motivos porque a utilização de ponteiros é tão necessaria em C.
#### Funções/procedimentos aninhados
Uma função/procedimento aninhado é uma função/procedimento definida dentro de uma função, ou seja, a função/procedimento aninhada é encapsulada dentro da função de nível superior. Fora do escopo da função de nível superior a função aninhada não é detectada. Além disso, a função aninhada usa as variaveis locais da função de nível superior.Uma das razões de sua utilização, é a utilidade de dividir subrotinas em outras subrotinas e encapsular-las. Funções/procedimentos aninhadas são usadas tipicamente como funções auxiliares ou funções recursivas dentro de outra função. Têm como vantagem organizar melhor o código, evitando de poluir o escopo, e compartilham variaveis dentro do escopo facilmente sem o uso de parametros ou usar uma variavel global. ALGOL, Pascal, Simula 67 são algumas das linguagens que possuem funções/procedimentos aninhados. C e sua familia de linguagens não possuem funções/procedimentos aninhados, sendo essa uma das diferenças entre C e Pascal.
### Variáveis Locais
Em C variaveis locais podem ser alocadas em qualquer bloco e em qualquer parte do bloco de comandos. Em Pascal não é possivel realizar esse tipo de declaração, sendo só permitida a declaração de variaveis antes do começo de um bloco de comandos de procedimentos/funções ou o bloco "main"(programa principal).

## COMPARAÇÃO DE PASCAL COM ALGOL 68
### Estruturas de Seleção
Em ALGOL 68 o case deve ter um indice inteiro não negativo e a ordem dos casos é essencial. O índice de valor inteiro i seleciona o i-ésimo caso do case.
### Estruturas de Iteração
Em ALGOL 68 combina o comando for e while em um unico comando, já em pascal eles são comandos distintos. Os comandos for, from, by, to e while são individualmente opcionais, exceto que se for é omitido não há nenhuma variavel de controle, e consequentemente o loop não funciona como o esperado. Em ALGOL 68 o laço for possui mais possibilidades como por exemplo o numero de paços a incrementar varia. A variavel de controle no ALGOL 68 é implicitamente declarada pelo comando for e atribuições a ela são ilegais. O escopo da variável de controle está no loop, tornando ela inacessivel fora do laço. Desse modo, se uma variavel fora do loop for declarada com o mesmo nome, ela não afeta a variavel de controle. Além disso, a variavel de controle é declarada como um inteiro. Já em pascal a variavel de controle deve ser declarada, e o seu tipo não precisa ser necessariamente um inteiro, mas sim um scalar type. Além disso, a variavel de controle é acessivel fora do loop. Em ALGOL 68 as expressões depois de by e to são avaliadas antes do começo do loop. permitindo desse modo a alteração das variaveis que compoem esse comando. Pascal tem o comando repeat, já ALGOL 68 não tem. O comando o while, também existente no Pascal,
### Subrotinas
No ALGOL 68 procedimentos podem ser elementos de arrays, campos de estruturas, retorno de funções e etc. Além disso, pode existir ponteiro para procedimentos no ALGOL 68. Isso ocorre porque no ALGOL 68 os procedimentos são vistos como "objects"(não confundir com o conceito de programação orientada a objetos). Já no Pascal, procedimentos apenas podem ser chamados ou passados em argumentos. Todo procedimento em ALGOL 68 retorna algum valor. Em Pascal, procedimentos por definição não retornam nada. Funções em ALGOL 68 podem retornar qualquer tipo existente na linguagem.Em Pascal nem todos os tipos são permitidos como retorno de uma função. Arrays e structs não podem ser retorno de uma função. Desse modo, existe uma coleção de tipos restrita no Pascal que podem ser retorno de funções. Em ALGOL 68 existe um unico tipo de parametro, aquele que é chamado por valor. Já em pascal existem três tipos de parametros: por valor, por referencia, procedure(incluindo function).
### Variaveis Locais
No ALGOL 68 é possivel declarar variaveis locais em qualquer bloco e em qualquer parte de bloco. As variaveis passam a existir quando a execução entra no bloco e deixam de existir quando sai do bloco. Em Pascal só é permitida a declaração de variáveis locais dentro do nível de procedimento, ou seja, não é permitida a declaração de variaveis locais em outros tipos de bloco que não o de procedimentos/funções ou o do programa "main". Além disso, Pascal só permite a declaração de variáveis locais antes do bloco.

## COMPARAÇÃO DE PASCAL COM ALGOL 60 
### Estruturas de Seleção
### Estruturas de Iteração
### Subrotinas
### Variáveis Locais


## EXEMPLOS

## REFERÊNCIAS

