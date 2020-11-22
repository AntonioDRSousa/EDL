(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "conversor de binario para decimal e de decimal para binario" em pascal
*)

program BinDec;

uses math;

var 
	b: string;//numero binario
	d: integer;//numero decimal
	k:integer;
	ch:char;

procedure init();
var
	i:integer;
begin
	SetLength(b,100);
	for i:=0 to length(b) do
	begin
		b[i]:=' ';
	end;
	d:=0;
	k:=1;
end;

procedure inputBin();
var
	i:integer;
	bol:boolean;
begin
	while true do
	begin
		bol:=true;
		write('Digite um numero binario: ');
		readln(b);
		
		for i:=1 to length(b) do//verifica se o numero e' binario
		begin
			if (b[i]<>'1') and (b[i]<>'0') then
			begin
				writeln('Nao e numero binario');
				bol:=false;
				break;
			end;
		end;
		
		if bol then
		begin
			break;
		end;
	end;
end;

procedure inputDec();
begin
	write('Digite um numero decimal: ');
	readln(d);
end;

function pot(n:integer;e:integer):integer;//potenciacao
var
	j:integer;
begin
	pot:=1;
	for j:=1 to e do
	begin
		pot:=pot*n;
	end;
end;

procedure BinToDec();//converte de binario para decimal
var
	i:integer;
begin
	d:=0;
	for i:=length(b) downto 1 do
	begin
		if b[i]='1' then
		begin
			d:=d+pot(2,length(b)-i);
		end;
	end;
end;

procedure DecToBin(n:integer);//converte de decimal para binario usando recursao
begin
	if n>0 then
	begin
		DecToBin(n div 2);
		
		if n mod 2 = 0 then
		begin
			b[k]:='0';
		end
		else
		begin
			b[k]:='1';
		end;
		k:=k+1;
	end;
end;

begin
	while true do
	begin
		writeln();
		writeln('Digite um caracter');
		writeln('b -> converte de binario para decimal');
		writeln('d -> converte de decimal para binario');
		writeln('outros caracteres -> sai');
		readln(ch);
		init();
		if ch='b' then
		begin
			inputBin();
			BinToDec();
			writeln(d);
		end
		else if ch='d' then
		begin
			inputDec();
			DecToBin(d);
			writeln(b);
		end
		else
		begin
			break;
		end;
	end;
end.
	
