(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo do uso de "nested procedure" em pascal
*)

program nested;

procedure f();
var 
	ch:char='g';
	procedure g();
	begin
		writeln(ch);
	end;
	procedure h();
	begin
		writeln(ch,'h');
	end;
begin
	writeln(ch,'f');
	g();
	h();
end;

procedure g();
begin
	writeln(123);
end;

procedure h();
begin
	writeln(456);
end;

begin
	f();
	g();
	h();
end.
