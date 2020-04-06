(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo que "calcula a solucao de uma equacao de segundo grau" em pascal
*)

program Grau2;

uses math;

var a,b,c,d,x1,x2 : Real;
var ch: Char;

begin
	repeat
	
		write('a = ');
		readln(a);
		write('b = ');
		readln(b);
		write('c = ');
		readln(c);

		d:=power(b,2)-(4*a*c);
	
		if d>0 then
		begin
			d:=sqrt(d);
			x1:=((-b)+d)/(2*a);
			x2:=((-b)-d)/(2*a);
			writeln('x1 = ',x1);
			writeln('x2 = ',x2);
		end
		else if d<0 then
		begin
			writeln('Raizes Complexas');
		end
		else
		begin
			x1:=(-b)/(2*a);
			writeln('x = ',x1);
		end;

		write();
		write('Se Deseja Continuar Escreva "s"(outras teclas terminam a execucao): ');
		readln(ch);
		writeln();
		
	until ch<>'s';
	
end.
