(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "numeros de fibonacci" em pascal
*)

program fibonacci;

var n,i:Longint;
var v:array[1..1000] of Longint;

begin
	write('n = ');
	readln(n);
	v[1]:=1;
	v[2]:=1;
	write(v[1],' ',v[2]);
	for i:=3 to n do
	begin
		v[i]:=v[i-1]+v[i-2];
		write(' ',v[i]);
	end;
end.
	
