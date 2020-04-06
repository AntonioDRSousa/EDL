(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo de "criptografia que utiliza uma chave com digitos
sendo que cada digito soma a letra da string que esta' na mesma posicao que ele,
de modo 'circular', ou seja, a chave volta para o digito inicial depois que percorre todos os digitos.
Na desencriptacao e' usada a subtracao da letra pelo digito correspondente da chave de modo a obter a mensagem original.

Exemplo: se a chave possuir 3 digitos e a string 7 digitos:
	encriptacao:
		letra 1 = letra 1  +  digito 1
		letra 2 = letra 2  +  digito 2
		letra 3 = letra 3  +  digito 3
		letra 4 = letra 4  +  digito 1
		letra 5 = letra 5  +  digito 2
		letra 6 = letra 6  +  digito 3
		letra 7 = letra 7  +  digito 1
	desencriptacao:
		letra 1 = letra 1  -  digito 1
		letra 2 = letra 2  -  digito 2
		letra 3 = letra 3  -  digito 3
		letra 4 = letra 4  -  digito 1
		letra 5 = letra 5  -  digito 2
		letra 6 = letra 6  -  digito 3
		letra 7 = letra 7  -  digito 1

Exemplo: chave=123 string='banana' string encriptada='ccqbpd' desencriptacao da string encriptada='banana' " 

em pascal
*)

program Criptografia;

var
	s,t:string;
	ch:char;
	chave: array[1..100] of integer;

procedure leMensagem();
begin
	write('Digite a mensagem: ');
	readln(s);
end;

procedure initChave();//o usuario informa a chave
var
	i:integer;
var 
	b:boolean;
begin
	while true do
	begin
		b:=true;
		write('Chave -> ');
		readln(t);
		for i:=1 to 100 do
		begin
			if i>length(t) then//zera todas as posicoes da chave que vao alem da string
			begin
				chave[i]:=0;
			end
			else if (ord(t[i])>=49) and (ord(t[i])<=57) then//verifica se e' digito numerico
			begin
				chave[i]:=ord(t[i])-48;
			end
			else
			begin
				writeln('Chave Invalida',#10);
				b:=false;
				break;
			end;
		end;
		if b then//flag
		begin
			break;
		end;
	end;
end;

procedure Encript();//encriptacao
var
	i,j,x:integer;
begin
	j:=1;
	for i:=1 to length(s) do
	begin
		if chave[j]=0 then
		begin
			j:=1;
		end;
		x:=(chave[j]+ord(s[i])) mod 256;
		s[i]:=chr(x);
		j:=j+1;
	end;
end;

procedure Decript();//decriptacao
var
	i,j,x:integer;
begin
	j:=1;
	for i:=1 to length(s) do
	begin
		if chave[j]=0 then
		begin
			j:=1;
		end;
		x:=(ord(s[i])-chave[j]) mod 256;
		s[i]:=chr(x);
		j:=j+1;
	end;
end;

begin
	while true do
	begin
		writeln('Digite um caracter');
		writeln('e -> encriptar mensagem');
		writeln('d -> decriptar mensagem');
		writeln('t -> testar encripatacao e decriptacao');
		writeln('outro caracter -> sai');
		readln(ch);
		if ch='e' then
		begin
			leMensagem();
			initChave();
			Encript();
			writeln('mensagem encriptada -> ',s,#10,#10);
		end
		else if ch='d' then
		begin
			leMensagem();
			initChave();
			Decript();
			writeln('mensagem decriptada -> ',s,#10,#10);
		end
		else if ch='t' then
		begin
			leMensagem();
			initChave();
			Encript();
			writeln('mensagem encriptada -> ',s);
			Decript();
			writeln('mensagem decriptada -> ',s,#10,#10);
		end
		else
		begin
			break;
		end;
	end;
end.
