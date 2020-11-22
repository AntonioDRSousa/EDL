(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "leitura e impressao de uma matriz" em pascal
*)

program Matriz;

var mat: array[1..3,1..2] of integer;
var i,j: integer;

begin

	//leitura
	for i:=1 to 3 do
	begin
		for j:=1 to 2 do
		begin
			write('A[',i,';',j,'] = ');
			readln(mat[i,j]);
		end;
	end;
	
	//impressao
	writeln();
	for i:=1 to 3 do
	begin
		for j:=1 to 2 do
		begin
			write(mat[i,j],' ');
		end;
		writeln();
	end;
	
end.
	
