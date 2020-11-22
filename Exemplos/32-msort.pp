(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

Mergesort
*)

program msort;

var
	ch:char;

procedure sort(var v:array of integer;n:integer);
	procedure MergeSort(const i,f:integer);
	var
		m:integer;
	
		procedure Merge();
		var
			t:array[1..10000] of integer;
			r,s,k:integer;

			procedure cpArray();
			var
				j:integer;
			begin
				for j:=i to f do
					v[j]:=t[j];
			end;
		
		begin
			r:=i;
			s:=m+1;
			for k:=i to f do
			begin
				if (s>f) or ((r<=m) and (v[r]<v[s])) then
				begin
					t[k]:=v[r];
					r:=r+1;
				end
				else
				begin
					t[k]:=v[s];
					s:=s+1;
				end;
			end;
			cpArray();
		end;
	
	begin
		if ((f-i)>0) then
		begin
			m:=((f+i) div 2);
			MergeSort(i,m);
			MergeSort(m+1,f);
			Merge();
		end;
	end;
begin
	MergeSort(0,n-1);
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


