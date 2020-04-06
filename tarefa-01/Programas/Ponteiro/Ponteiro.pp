(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de uso de "ponteiros" em pascal
*)

program Ponteiro;

var
	p,q:^integer;
	x,y:integer;
	w:^word;
	
begin
	q:=nil;
	
	x:=10;
	p:=@x;
	writeln(#10,'x = ',x);
	w:=addr(p);
	writeln('p endereco ',w^);
	writeln('p valor ',p^);
	
	p^:=20;
	writeln(#10,'x = ',x);
	w:=addr(p);
	writeln('p endereco ',w^);
	writeln('p valor ',p^);
	
	q:=p;
	w:=addr(p);
	writeln(#10,'q endereco ',w^);
	writeln('q valor ',q^);
	
	y:=55;
	p:=@y;
	writeln(#10,'y = ',y);
	w:=addr(p);
	writeln('p endereco ',w^);
	writeln('p valor ',p^);	
end.
