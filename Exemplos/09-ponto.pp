(*
Nome: Antonio David Reis de Sousa
Professor:Francisco
Materia: Estruturas de Linguagens

exemplo do uso de "record" em pascal

*)

program ponto;

type
	point = record
		x,y:integer;
		simbolo:char;
	end;

var
	p1,p2:point;

begin
	writeln('ponto 1');
	write('x = ');
	readln(p1.x);
	write('y = ');
	readln(p1.y);
	write('simbolo: ');
	readln(p1.simbolo);

	with p2 do
	begin
		x:=10;
		y:=20;
		simbolo:='b';
	end;

	writeln(#10,#10,'p1 -> x=',p1.x,' y=',p1.y,' simbolo=',p1.simbolo);
	writeln('p2 -> x=',p2.x,' y=',p2.y,' simbolo=',p2.simbolo);
end.
