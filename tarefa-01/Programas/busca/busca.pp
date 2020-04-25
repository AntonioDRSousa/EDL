(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de busca binaria em pascal
*)
program busca;

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

procedure busca(v:array of integer;n,x:integer);
var
	k:integer=-1;
	function bin(i,f:integer):integer;
	var
		m:integer;
	begin
		if i>f then
		begin
			bin:=-1;
		end
		else
		begin
			m:=(i+f) div 2;
			if v[m]=x then
			begin
				bin:=m;
			end
			else if v[m]>x then
			begin
				bin:=bin(i,m-1);
			end
			else if v[m]<x then
			begin
				bin:=bin(m+1,f);
			end;
		end;
	end;
begin
	k:=bin(1,n);
	if k=(-1) then
	begin
		writeln('Elemento nao encontrado');
	end
	else
	begin
		writeln('Elemento esta na posicao ',k+1);
	end;
end;

procedure prog();
var 
	n,x:integer;
	v:array[1..10000] of integer;
	
	procedure leVetor();
	var
		x:integer;
	begin
		n:=0;
		while true do
		begin
			write('v[',n+1,'] = ');
			readln(x);
			if x<0 then
			begin
				break;
			end;
			n:=n+1;
			v[n]:=x;
		end;
	end;
	procedure imprVetor();
	var
		i:integer;
	begin
		writeln();
		for i:=1 to n do
		begin
			write(v[i],' ');
		end;
		writeln();
	end;
	procedure leElemento();
	begin
		write('elemento a buscar = ');
		readln(x);
	end;
begin
	leVetor();
	imprVetor();
	sort(v,n);
	imprVetor();
	leElemento();
	busca(v,n,x);
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
		
			
