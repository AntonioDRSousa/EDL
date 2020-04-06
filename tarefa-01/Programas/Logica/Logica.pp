(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "calculadora logica, ou seja, para dois valores booleanos
a se obtem o resultado de operacoes logicas com esses valores" em pascal
*)

program Logica;

var 
	p,q:boolean;
	x:integer;

procedure input(var b:boolean;ch:char);
begin
	write(ch,' = ');
	readln(x);
	if x=0 then
	begin
		b:=false;
	end
	else
	begin
		b:=true;
	end;
end;

procedure impr();
begin
	writeln();
	writeln('p = ',p);
	writeln('q = ',q);
	writeln('not p = ',not p);
	writeln('not q = ',not q);
	writeln('p and q = ',p and q);
	writeln('p or q = ',p or q);
	writeln('p xor q = ',p xor q);
end;

begin
	writeln('Numeros diferentes de 0 -> TRUE');
	writeln('Numeros iguais a 0 -> FALSE');
	writeln();
	input(p,'p');
	input(q,'q');
	impr();
end.
