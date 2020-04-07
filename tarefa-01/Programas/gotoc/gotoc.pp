(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "sequencia de potencias de uma certa base" em pascal
Codigo comparado com o codigo C correspondente que usa o minimo de estruturas de repetição, bloco de comandos ou estruturas de seleção, trocando por goto. Isso para comparar a programacao estruturada com a programacao nao estruturada.
*)
program gotoc;

var 
	i,n: integer;
	ch:char;
	
begin	
	while true do
	begin
		write('n = ');
		readln(n);
		if n>=0 then
		begin
			break;
		end;
	end;

	for i:=0 to 9 do
	begin
		write(n,' ');
		n:=n*n;
	end;

	while true do
	begin
		writeln(#10,'Pressione o caracter s para sair.....');
		readln(ch);
		if ch='s' then
		begin
			break;
		end;
	end;
end.

