(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "implementacao de uma pilha" em pascal
*)

program pilha;

type 
	stack = record
		v:array[1..100] of integer;
		top:^integer;//topo da pilha
		n:integer;//quantidade de elementos na pilha
	end;

var
	s:stack;
	ch:char;
	x,i:integer;

procedure cria(p:stack);
begin
	p.top:=nil;
	p.n:=0;
end;

procedure empilha(var p:stack;const x:integer);//empilha um elemento na pilha
begin
	if p.n=0 then
	begin
		p.n:=1;
		p.v[p.n]:=x;
		p.top:=@(p.v[p.n]);
	end
	else if p.n<100 then
	begin
		p.n:=p.n+1;
		p.v[p.n]:=x;
		inc(p.top);
	end
	else
	begin
		writeln('Pilha cheia');
	end;
end;

function tamanho(var p:stack):integer;//obtem o tamanho da pilha
begin
	tamanho:=p.n;
end;

function topo(var p:stack):integer;//obtem o elemento no topo da pilha
begin
	topo:=(p.top)^;
end;

procedure desempilha(var p:stack);//desempilha um elemento da pilha
begin
	if p.n=1 then
	begin
		writeln(topo(p),' desempilhado');
		p.n:=0;
		p.top:=nil;
	end
	else if p.n>1 then
	begin
		writeln(topo(p),' desempilhado');
		p.n:=p.n-1;
		dec(p.top);
	end
	else
	begin
		writeln('Pilha vazia');
	end;
end;

begin
	while true do
	begin
		writeln(#10,'Digite um caracter');
		writeln('e -> empilha');
		writeln('d -> desempilha');
		writeln('s -> tamanho');
		writeln('t -> topo');
		writeln('l -> lista pilha inteira');
		writeln('outro caracter -> sai',#10);
		readln(ch);
		
		if ch='e'then
		begin
			write('Digite um inteiro: ');
			readln(x);
			empilha(s,x);
		end
		else if ch='d' then
		begin
			desempilha(s);
		end
		else if ch='s' then
		begin
			writeln('tamanho ',tamanho(s));
		end
		else if ch='t' then
		begin
			if tamanho(s)=0 then
			begin
				writeln('pilha vazia');
			end
			else
			begin
				writeln('topo ',topo(s));
			end;
		end
		else if ch='l' then
		begin
			write('pilha -> ');
			for i:=tamanho(s) downto 1 do
			begin
				write(s.v[i],' ');
			end;
		end
		else
		begin
			break;
		end;
	end;
end. 
		
	
	
	
