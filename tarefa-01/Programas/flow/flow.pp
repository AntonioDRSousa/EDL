(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo "comparativo de nao usar o break em comando switch e case com relacao ao pascal e C"
*)

program flow;

var ch:char;

begin
	writeln('Digite o caracter a ou b: ');
	readln(ch);
	case ch of
		'a':
			writeln('caso a');
		'b':
			writeln('caso b');
		else
			writeln('nao foi digitado nem a e nem b');
	end;
end.
