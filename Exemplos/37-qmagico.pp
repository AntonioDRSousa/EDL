(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo que verifica se um conjunto de nove numeros pode formar um quadrado magico em pascal
*)
program qmagico;

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

procedure quadrado(v:array of integer);
var
	np:integer=0;
	s:array[1..9] of integer;
	p:array[1..9] of integer;
	num:integer=0;
	qtd:integer=0;
	
	procedure initBol();
	var
		i:integer;
	begin
		for i:=1 to 9 do
			s[i]:=0;		
	end;
	
	procedure magico();
	var
		i:integer;
		procedure impr();
		var
			j:integer;
		begin
			writeln();
			for j:=1 to 9 do
			begin
				write(p[j],' ');
				if (j mod 3)=0 then
					writeln();
			end;
			writeln();
		end;
		
		function teste():boolean;
		var
			j,k:integer;
		begin
			teste:=true;
			k:=p[1]+p[5]+p[9];
			for j:=1 to 3 do
			begin
				if k<>(p[(j-1)*3+1]+p[((j-1)*3)+2]+p[((j-1)*3)+3]) then
				begin
					teste:=false;
					break;
				end;
			end;
			for j:=1 to 3 do
			begin
				if k<>(p[j]+p[j+3]+p[j+6]) then
				begin
					teste:=false;
					break;
				end;
			end;
			if k<>(p[3]+p[5]+p[7]) then
				teste:=false;
		end;
	begin
		for i:=1 to 9 do
		begin
			if s[i]=0 then
			begin
				np:=np+1;
				p[np]:=v[i-1];
				s[i]:=1;
				qtd:=qtd+1;
				if ((np=9) and (teste()) ) then
				begin
						if num=0 then
							impr();
						num:=1;
				end
				else
				begin
					magico();
				end;
				
				np:=np-1;
				s[i]:=0;
			end;
		end;
	end;
begin
	initBol();
	magico();
	if num=0 then
	begin
		writeln('nao tem quadrado magico');
	end;
end;

procedure prog();
var
	v:array[1..9] of integer;
	
	procedure leVetor();
	var
		i:integer;
	begin
		for i:=1 to 9 do
		begin
			write('v[',i,'] = ');
			readln(v[i]);
		end;
	end;
begin
	leVetor();
	sort(v,9);
	quadrado(v);
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

		
		
