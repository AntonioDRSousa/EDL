(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "calculo do numero de euler usando nested procedures/functions" em pascal
*)
program euler;

var e:real;
var x:integer;

procedure calc(i:integer);
	function fat(x:integer):integer;
	begin
		if x=0 then
		begin
			fat:=1;
		end
		else
		begin
			fat:=x*fat(x-1);
		end;
	end;
begin
	if i>=0 then
	begin
		e:=e+(1/fat(i));
		calc(i-1);
	end;
end;

begin
	e:=0;
	write('Digite o numero de iteracoes: ');
	readln(x);
	calc(x);
	writeln('e = ',e:0:20);
end.
	
		
