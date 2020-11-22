(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "funcao swap(troca os valores entre duas variaveis),
chamada por valor e referencia(2 modos)" em pascal
*)

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
