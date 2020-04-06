(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "calculadora" em pascal
*)

program calculadora;

uses math;

var legMenu: array[1..10] of string;

procedure initMenu1();//cria menu
begin
	legMenu[1]:='Somar';
	legMenu[2]:='Subtrair';
	legMenu[3]:='Multiplicar';
	legMenu[4]:='Dividir';
	legMenu[5]:='Divisao Inteira';
	legMenu[6]:='Resto';
	legMenu[7]:='Potenciacao';
	legMenu[8]:='Raiz Quadrada';
	legMenu[9]:='Sair';
end;

procedure textMenu1();//printa menu
var
	i:integer;
begin
	for i:=1 to 9 do
		writeln(i,'-',legMenu[i]);
	writeln();
	writeln();
end;

procedure inputVar(var a,b:integer);//obtem o input de 2 variaveis
begin
	write('a = ');
	readln(a);
	write('b = ');
	readln(b);
end;

function soma(x,y:integer):integer;//soma
begin
	soma:=x+y;
end;

function sub(x,y:integer):integer;//subtracao
begin
	sub:=x-y;
end;

function mul(x,y:integer):integer;//multipĺicacao
begin
	mul:=x*y;
end;

function division(x,y:integer):real;//divisao
begin	
	division:=x/y;
end;

function divint(x,y:integer):integer;//divisao inteira
begin
	divint:= x div y;
end;

function resto(x,y:integer):integer;//resto
begin
	resto:=x mod y;
end;

function pot(n,e:integer):real;//potenciacao
var 
	i: integer;
begin
	pot:=1;
	if e<0 then
	begin
		e:=e*(-1);
		for i:=1 to e do
		 	pot:=pot/n
	end	
	else 
	begin
		for i:=1 to e do
		 	pot:=pot*n
	end;
end;

procedure Menu1();//menu
var 
	a,b,op: integer;
begin
	while true do
	begin
		textMenu1();
		write('Digite uma opcao: ');
		readln(op);
		case op of
			1://soma
			begin
				inputVar(a,b);
				writeln(a,' + ',b,' = ',soma(a,b));
			end;
			2://subtracao
			begin
				inputVar(a,b);
				writeln(a,' - ',b,' = ',sub(a,b));
			end;
			3://multiplicacao
			begin
				inputVar(a,b);
				writeln(a,' * ',b,' = ',mul(a,b));
			end;
			4://divisao
			begin
				inputVar(a,b);
				if b=0 then
				begin
					writeln('Erro. Divisao por Zero.....');
				end
				else
				begin
					writeln(a,' / ',b,' = ',division(a,b):0:5);
				end;
			end;
			5://divisao inteira
			begin
				inputVar(a,b);
				if b=0 then
				begin
					writeln('Erro. Divisao por Zero.....');
				end
				else
				begin
					writeln(a,' // ',b,' = ',divint(a,b));
				end;
			end;
			6://resto
			begin
				inputVar(a,b);
				if b=0 then
				begin
					writeln('Erro. Divisao por Zero.....');
				end
				else
				begin
					writeln(a,' mod ',b,' = ',resto(a,b));
				end;
			end;
			7://potenciacao
			begin
				inputVar(a,b);
				writeln(a,' ^ ',b,' = ',pot(a,b):0:5);
			end;
			8://raiz quadrada
			begin
				write('a = ');
				readln(a);
				if a<0 then
				begin
					writeln('Nao existe raiz quadrada real de numero negativo.');
					writeln('O valor pertence aos numeros complexos');
					writeln('sqrt(',a,') = ',sqrt(-a):0:5,' i');
				end
				else
				begin
					writeln('sqrt(',a,') = ',sqrt(a):0:5);
				end;
			end;
			9:
			begin
				writeln('Saindo');
				break;
			end;
			else
				writeln('Opcao invalida!');
		end;
	end;
end;

begin
	initMenu1();
	Menu1();
end.
					
			
		
