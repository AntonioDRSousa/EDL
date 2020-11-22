(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de selection sort em pascal
*)
program ssort;

var
	ch:char;

procedure sort(var v:array of integer;n:integer);
	procedure swap(var x,y:integer);
	var
		tmp:integer;
	begin
		tmp:=x;
		x:=y;
		y:=tmp;
	end;
	procedure selection(n:integer);
	var
		pmax,i:integer;
	begin
		if n>0 then
		begin
			pmax:=0;
			for i:=1 to n do
			begin
				if v[i]>v[pmax] then
				begin
					pmax:=i;
				end;
			end;
			swap(v[pmax],v[n]);
			selection(n-1);
		end;
	end;
begin
	selection(n-1);
end;

procedure prog();
var 
	n:integer;
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
begin
	leVetor();
	imprVetor();
	sort(v,n);
	imprVetor();
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

