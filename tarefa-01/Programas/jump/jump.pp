(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "relacao de ordem" em pascal
Codigo comparado com o codigo C correspondente que usa o minimo de estruturas de repetição, bloco de comandos ou estruturas de seleção, trocando por goto. Isso para comparar a programacao estruturada com a programacao nao estruturada.
*)
program jump;

var a,b:integer;

begin
	write('a = ');
	readln(a);
	write('b = ');
	readln(b);

	if a<b then
	begin
		writeln('a<b');
	end
	else if b<a then
	begin
		writeln('a>b');
	end
	else
	begin
		writeln('a=b');
	end;
end.
