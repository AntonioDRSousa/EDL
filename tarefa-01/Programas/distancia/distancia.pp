(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "diferenca entre maximo e minimo usando nested procedures/functions" em pascal
*)
program distancia;

var v:array[1..10] of integer;
var i,x:integer;

function dist():integer;
var
	m:integer;
	function max():integer;
	begin
		m:=0;
		for i:=1 to 10 do
		begin
			if v[i]>m then
			begin
				m:=v[i];
			end;	
		end;
		max:=m;
	end;
	function min():integer;
	begin
		m:=v[1];
		for i:=2 to 10 do
		begin
			if v[i]<m then
			begin
				m:=v[i];
			end;	
		end;
		min:=m;
	end;
begin
	dist:=max()-min();
end;

begin
	for i:=1 to 10 do
	begin
		write('v[',i,'] = ');
		readln(v[i]);
	end;
	writeln(#10,#10,'distancia entre o maximo e o minimo: ',dist());
end.
