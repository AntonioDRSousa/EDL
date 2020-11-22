(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo que gera todas as permutacoes de um conjunto em pascal
*)
program permutacao;

var
	ch:char;
	numero:integer;

procedure permut(var v:array of integer;n:integer);
var
	np:integer=0;
	s:array[1..5] of integer;
	p:array[1..5] of integer;
	
	procedure initBol();
	var
		i:integer;
	begin
		for i:=1 to n do
			s[i]:=0;		
	end;
	
	procedure perm();
	var
		i:integer;
		procedure impr();
		var
			j:integer;
		begin
			for j:=1 to n do
				write(p[j],' ');
			writeln();
		end;
	begin
		for i:=1 to n do
		begin
			if s[i]=0 then
			begin
				np:=np+1;
				p[np]:=v[i-1];
				s[i]:=1;
				
				if np=n then
				begin
					impr();
					numero:=numero+1;
				end
				else
				begin
					perm();
				end;
				
				np:=np-1;
				s[i]:=0;
			end;
		end;
	end;

begin
	numero:=numero+1;
	initBol();
	perm();
end;

procedure prog();
var
	n:integer;
	v:array[1..5] of integer;
	
	procedure leVetor();
	var
		x,i:integer;
	begin
		n:=0;
		for i:=1 to 5 do
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
begin
	numero:=0;
	leVetor();
	permut(v,n);
	writeln(#10,'numero de permutacoes = ',numero-1);
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
