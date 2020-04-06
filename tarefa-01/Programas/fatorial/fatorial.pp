(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "recursao" em pascal
fatorial
*)

program fatorial;

var n:integer;

function fat(x:integer):integer;
begin
	if x=1 then
	begin
		fat:=1;
	end
	else
	begin
		fat:=x*fat(x-1);
	end;
end;

begin
	write('n = ');
	readln(n);
	writeln(n,'! = ',fat(n));
end.
	
