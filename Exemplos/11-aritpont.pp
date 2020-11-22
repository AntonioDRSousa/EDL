(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "aritemetica de ponteiros" em pascal
*)

program aritpont;

var
	v:array[1..5] of integer;
	p:^integer;

begin
	v[1]:=10;
	v[2]:=20;
	v[3]:=30;
	v[4]:=40;
	p:=@v;
	
	writeln('p valor ',p^);
	
	p:=p+2;
	writeln('p+2 valor ',p^);
	
	p:=p-2;
	writeln('p-2 valor ',p^);
	
	inc(p);
	writeln('incremento de p valor ',p^);
	
	dec(p);
	writeln('decremento de p valor ',p^);

	if p<>nil then
	begin
		writeln('p =/= nulo');
	end;
	if p<@v[3] then
	begin
		writeln('p < @v[3]');
	end;
end.
