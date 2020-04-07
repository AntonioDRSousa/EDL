(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "calculo dos numeros do triangulo de pascal" em pascal
*)

program tripascal;

var v:array[1..1000] of integer;
var i,j,n:integer;
var x,y:integer;

begin
	write('Linhas a exibir triangulo de pascal: ');
	readln(n);

	//primeiras 2 linhas
	writeln('1');
	writeln('1 1');
	v[1]:=1;
	v[2]:=1;
	
	for i:=3 to n do
	begin
	
		v[1]:=1;
		v[i]:=1;
		write('1 ');
		y:=v[1];
		
		for j:=2 to i-1 do
		begin
			x:=y;
			y:=v[j];
			v[j]:=v[j]+x;
			write(v[j],' ');
		end;
		writeln('1');
		
	end;
end.
