program Primos;

uses math;

var p: array[1..100000000] of Longint;
var n,i,j,max: Longint; //numero de primos
var b: boolean;

begin
	p[1]:=2; //inicializa com o primeiro primo
	n:=1;

	write('Numeros primos ate: ');
	readln(max);
	writeln();

	for i:=3 to max do
		begin
			b:=true;
			
			j:=1;
			while j<=sqrt(i) do
				begin
				
					if i mod p[j] = 0 then
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

		for i:=1 to n do
			begin
				write(p[i],' ');
				if i mod 10 = 0 then
					begin
						writeln();
					end;
			end;

		writeln();
		writeln();
		write('n = ',n);
					
				
end.
