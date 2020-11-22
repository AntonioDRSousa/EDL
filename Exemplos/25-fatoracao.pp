(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "fatoracao em numeros primos usando nested procedures/functions" em pascal
*)

program fatoracao;

var
	a:integer;

procedure fat(n:integer);
var
	i,x:integer;
	function divsuc():integer;
	var 
		e:integer;
	begin
		e:=0;
		while (n mod i)=0 do
		begin
			e:=e+1;
			n:=n div i;
		end;
		divsuc:=e;
	end;
begin
	for i:=2 to n-1 do
	begin
		x:=divsuc();
		if x<>0 then
		begin
			write(i,'^',x,' ');
		end;
	end;
end;

begin
	write('a = ');
	readln(a);
	fat(a);
end.
