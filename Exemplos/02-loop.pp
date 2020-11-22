(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "loops" em pascal
*)

program loop;

var
	v:array[1..10] of integer;
	i:integer;

begin

	i:=1;
	repeat
	begin
		v[i]:=i*3;
		i:=i+1;
	end;
	until i=11;

	for i:=1 to 10 do
	begin
		write(v[i],' ');
	end;
	writeln();

	for i:=10 downto 1 do
	begin
		write(v[i],' ');
	end;
	writeln();

	i:=1;
	while i<=10 do
	begin
		write(v[i],' ');
		i:=i+1;
	end;
	
end.
