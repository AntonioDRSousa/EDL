(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

Bubblesort
*)

program bsort;

var
	ch:char;

procedure sort(var v:array of integer;n:integer);
	procedure buble(n:integer);
		procedure troca(i:integer);
			procedure swap(var x,y:integer);
			var 
				tmp:integer;
			begin
				tmp:=x;
				x:=y;
				y:=tmp;
			end;
		begin
			if i>=0 then
			begin
				troca(i-1);
				if v[i]>v[i+1] then
					swap(v[i],v[i+1]);
			end;
		end;
	begin
		if n>=0 then
		begin
			troca(n-1);
			buble(n-1);
		end;
	end;
begin
	buble(n-1);
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
