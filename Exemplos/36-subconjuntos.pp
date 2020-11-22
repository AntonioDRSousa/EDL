(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo que gera todos os subconjuntos de um conjunto em pascal
*)
program subconjuntos;

var
	ch:char;

procedure sort(var v:array of integer;n:integer);
	procedure quicksort(e,d:integer);
	var
		i,j:integer;
		procedure particao();
		var
			t:integer;
			procedure swap(var x,y:integer);
			var
				tmp:integer;
			begin
				tmp:=x;
				x:=y;
				y:=tmp;
			end;
		begin
			i:=e;
			j:=d;
			t:=v[(e+d) div 2];
			while i<=j do
			begin
				while v[i]<t do
					i:=i+1;
				while v[j]>t do
					j:=j-1;
				if i<=j then
				begin
					swap(v[i],v[j]);
					i:=i+1;
					j:=j-1;
				end;
			end;
		end;
	begin
		if d>e then
		begin
			particao();
			quicksort(e,j);
			quicksort(i,d);
		end;
	end;
begin
	quicksort(0,n-1);
end;

procedure subconjunto(c:array of integer;n:integer);
var
	sb:array[1..100] of integer;
	np:integer=0;
	q:integer=0;
	cont:integer=1;
	
	procedure comb(t:integer);
	var
		i:integer;
		procedure impr();
		var 
			i:integer;
		begin
			write('{  ');
			for i:=1 to q do
			begin
				if i<>1 then
					write(' ; ');
				write(sb[i]);
			end;
			writeln('  }');
		end;
	begin
		for i:=t to n do
		begin
			np:=np+1; 
			sb[np]:=c[i-1];
			if np=q then
			begin
				cont:=cont+1;				
				impr();
			end
			else
			begin
				comb(i+1);
			end;
			np:=np-1;
		end;
	end;
begin
	writeln(#10,'{ vazio }');
	for q:=0 to n do
		comb(1);
	writeln(#10,'numero de subconjuntos = ',cont);
end;

	


procedure prog();
var 
	n,i:integer;
	c:array[1..100] of integer;
	b:boolean;
	
	procedure leConjunto();
	var
		x:integer;
	begin
		n:=0;
		while true do
		begin
			write('c[',n+1,'] = ');
			readln(x);
			if x<0 then
			begin
				break;
			end;
			n:=n+1;
			c[n]:=x;
		end;
	end;
	procedure imprConjunto();
	var
		i:integer;
	begin
		writeln();
		for i:=1 to n do
		begin
			write(c[i],' ');
		end;
		writeln();
	end;
begin
	leConjunto();
	sort(c,n);
	
	b:=true;
	for i:=1 to n-1 do
	begin
			
		if c[i]=c[i+1] then
		begin
			writeln('Erro. Elementos repetidos...');
			b:=false;
		end;
	end;
	if b then
	begin
		imprConjunto();
		subconjunto(c,n);
	end;
end;

begin
	repeat
	begin
		prog();
		write(#10,'Deseja continuar(caracter s)? ');
		readln(ch);
	end;
	until ch<>'s';
end.
