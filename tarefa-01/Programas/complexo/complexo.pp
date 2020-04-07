(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "calculadora de adição, subtracao e multiplicacao de numeros complexos" em pascal
*)

program complexo;

type 
	comp=record
		re:integer;
		im:integer;
	end;

var a,b:comp;
var ch:char;

begin
	writeln('a -> ');
	write('Re(a) = ');
	readln(a.re);
	write('Im(a) = ');
	readln(a.im);
	writeln('b -> ');
	write('Re(b) = ');
	readln(b.re);
	write('Im(b) = ');
	readln(b.im);

	writeln(#10,#10,'a = ',a.re,' + ',a.im,'i',#10,'b = ',b.re,' + ',b.im,'i');
	
	while true do
	begin
		writeln(#10,'Digite um caracter');
		writeln('a -> soma',#10,'s -> subtrai',#10,'m -> multiplica',#10,'outro caracter -> termina execucao');
		readln(ch);
		case ch of
			'a':
				writeln('a+b = ',a.re+b.re,' + ',a.im+b.im,'i');
			's':
				writeln('a-b = ',a.re-b.re,' + ',a.im-b.im,'i');
			'm':
				writeln('a*b = ',((a.re*b.re)-(a.im*b.im)),' + ',((a.re*b.im)+(a.im*b.re)),'i');
			else
				break;
		end;
	end;
end.

	
	

