(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo que "calcula ate' um certo numero todos
os numeros primos e obtem a quantidade de primos" em pascal
*)

program Primos;

uses math;

var p: array[1..100000000] of Longint;
var n,max: Longint; 

procedure input();
begin
	write('Numeros primos ate: ');
	readln(max);
	writeln();
end;

procedure calc();
var
	i,j:Longint;
	b: boolean;
begin
	p[1]:=2; //inicializa com o primeiro primo
	n:=1;

	for i:=3 to max do//percorre todos os numeros entre 3 e o numero maximo
	begin
		b:=true;
			
		j:=1;
		while p[j]<=sqrt(i) and p[j]>=2 do//p[j]>=2 verifica se o valor foi inicializado ou nao; percorre-se todos os primos menores que a raiz quadrada do numero i
		begin
			if i mod p[j] = 0 then//verifica se o numero i e' divisivel pelo primo p[j]
			begin
				b:=false;
				break;
			end;
			j:=j+1;
		end;
				
		if b then
		begin
			n:=n+1;
			p[n]:=i;
		end;
				
	end;
end;
	
procedure impr();
var
	i:Longint;
begin
	for i:=1 to n do//imprime os primos
	begin
		write(p[i],' ');
		if i mod 10 = 0 then//pula de linha a cada 10 primos
		begin
			writeln();
		end;
	end;

	writeln();
	writeln();
	write('n = ',n);//numero de primos
end;
		
begin
	input();
	calc();
	impr();								
end.
