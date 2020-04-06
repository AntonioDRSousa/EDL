(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo que "calcula a media de um conjunto de valores reais não negativos" em pascal
*)

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
