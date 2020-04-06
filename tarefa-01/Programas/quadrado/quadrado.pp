(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "calculo de quadrados perfeitos a partir de 
uma serie de numeros impares consecutivos" em pascal
*)

program  quadrado;

var n,q,s,i:integer;

procedure leN();
begin
	write('n = ');
	readln(n);
end;

function quadrado(n:integer):integer;
begin
	s:=0;
	for i:=1 to n do
	begin
		s:=s+(2*i-1);
		write(s,' ');
	end;
	quadrado := s;
	
end;

procedure impr();
begin
	leN();
	q:=quadrado(n);
	writeln();
	writeln('quadrado -> ',q);
end;
																																																
begin
	impr();
end.
	
