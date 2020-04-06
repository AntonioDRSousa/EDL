(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "manipulacao e uso de strings" em pascal
*)

program palavra;

uses crt,sysutils;

var s1,s2,s3: string;

begin
	write('s1 -> ');
	readln(s1);
	write('s2 -> ');
	readln(s2);

	writeln('tamanho de s1 -> ',length(s1));
	writeln('tamanho de s2 -> ',length(s2));
	
	s1:=concat(s1,s2);
	writeln('s1 -> ',s1);
	
	s1:=s1+s1;
	writeln('s1 -> ',s1);
	
	s3:=s1;
	writeln('s3 -> ',s3);
	
	if comparestr(s1,s2)=0 then//verifica se s1=s2
	begin
		writeln('s1 = s2');
	end
	else
	begin
		writeln('s1 =/= s2');
	end;
end.
