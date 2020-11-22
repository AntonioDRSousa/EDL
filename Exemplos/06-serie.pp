(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "serie numerica onde a implementacao em pascal e' conveniente usar while enquanto no C e' conveninete usar for" em pascal
*)

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
		
	
