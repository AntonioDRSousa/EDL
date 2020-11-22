(*
Nome: Antonio David Reis de Sousa
Professor: Francisco
Materia: Estruturas de Linguagens

exemplo que calcula e executa algoritmos NP de grafos em pascal
como por exemplo de coloracao, cliques, conjunto independentes, isomorfismo, ciclo hamiltoniano e etc.
*)
program grafo;

var
	g1,g2:array[1..10,1..10] of integer;//g1 e' o grafo definido e principal, enquanto o g2 e' secundario

procedure initG(c:char);//inicializa grafo, caracter '2' e' g2 e outro caracter e' g1 
var
	i,j:integer;
begin
	for i:=1 to 10 do
	begin
		for j:=1 to 10 do
		begin
			if c='2' then
			begin
				g2[i,j]:=0;
			end
			else
			begin
				g1[i,j]:=0;
			end;
		end;
	end;
end;

procedure leG(var n:integer;c:char);//le arestas e vertices do grafo, caracter '2' e' g2 e outro caracter e' g1 
var
	x,y:integer;
begin
	writeln('Grafo G',c);
	write('Numero de vertices = ');
	readln(n);
	writeln('Digite a aresta(exemplo: vertice 1 com vertice 2 -> 1 2). Para leitura com algum vertice menor ou igual a zero.');
	while true do
	begin
		read(x);
		readln(y);
		if((x<=0) or (y<=0)) then
		begin
			break;
		end
		else if ((x>n) or (y>n)) then
		begin
			writeln('Aresta Invalida, com vertices que nao pertencem ao conjunto de vertices do grafo');
		end
		else if (x=y) then
		begin
			writeln('Laco nao e valido');
		end
		else
		begin
			if c='2' then
			begin
				g2[x,y]:=1;
				g2[y,x]:=1;
			end
			else
			begin
				g1[x,y]:=1;
				g1[y,x]:=1;
			end;
		end;
	end;
end;

procedure gEspecial(var n:integer;c:char);
var
	k1,k2,i,j:integer;
	op:string;
	procedure caminho(k:integer);
	var
		i:integer;
	begin
		for i:=1 to k-1 do
		begin
			if(c='2')then
			begin
				g2[i,i+1]:=1;
				g2[i+1,i]:=1;
			end
			else
			begin
				g1[i,i+1]:=1;
				g1[i+1,i]:=1;
			end;
		end;
		n:=k;
	end;
	procedure ciclo(k:integer);
	begin
		caminho(k);
		if(c='2')then
		begin
			g2[1,k]:=1;
			g2[k,1]:=1;
		end
		else
		begin
			g1[1,k]:=1;
			g1[k,1]:=1;
		end;
		n:=k;
	end;
	procedure roda(k:integer);
	var
		i:integer;
	begin
		ciclo(k);
		for i:=1 to k do
		begin
			if(c='2')then
			begin
				g2[i,k+1]:=1;
				g2[k+1,i]:=1;
			end
			else
			begin
				g1[i,k+1]:=1;
				g1[k+1,i]:=1;
			end;
		end;
		n:=k+1;
	end;
	procedure completo(k:integer);
	var
		i,j:integer;
	begin
		for i:=1 to k do
		begin
			for j:=1 to k do
			begin
				if(i<>j)then
				begin
					if(c='2')then
					begin
						g2[i,j]:=1;
						g2[j,i]:=1;
					end
					else
					begin
						g1[i,j]:=1;
						g1[j,i]:=1;
					end;
				end;
			end;
		end;
		n:=k;
	end;
	procedure bipcomp(k1,k2:integer);
	var
		i,j:integer;
	begin
		for i:=1 to k1 do
		begin
			for j:=(k1+1) to (k1+k2) do
			begin
				if(c='2')then
				begin
					g2[i,j]:=1;
					g2[j,i]:=1;
				end
				else
				begin
					g1[i,j]:=1;
					g1[j,i]:=1;
				end;
			end;
		end;
		n:=k1+k2;
	end;
	procedure estrela(k:integer);
	var
		i:integer;
	begin
		for i:=2 to k do
		begin
			if(c='2')then
			begin
				g2[1,j]:=1;
				g2[j,1]:=1;
			end
			else
			begin
				g1[1,j]:=1;
				g1[j,1]:=1;
			end;
		end;
		n:=k+1;
	end;	
			
begin
	while true do
	begin
		writeln(#10,'-------------------------------------------------------------');
		writeln('Digite uma opcao(string numerica inicial da opcao):');
		writeln('1 - Caminho(Pk)');
		writeln('2 - Ciclo(Ck)');
		writeln('3 - Roda(Wk)');
		writeln('4 - Completo(Kn)');
		writeln('5 - Bipartido Completo(Kn1,n2)');
		writeln('6 - Estrela(Sn)');
		writeln('7 - Grafo Nulo');
		writeln('8 - Petersen');
		writeln('9 - Diamond');
		writeln('10 - Butterfly');
		writeln('11 - 3-Cubo');
		writeln('12 - Sair');
		writeln('-------------------------------------------------------------');
		readln(op);
		writeln();
		case op of
			'1':
			begin
				write('k = ');
				readln(k1);
				caminho(k1);
			end;
			'2':
			begin
				write('k = ');
				readln(k1);
				ciclo(k1);
			end;
			'3':
			begin
				write('k = ');
				readln(k1);
				roda(k1);
			end;
			'4':
			begin
				write('k = ');
				readln(k1);
				completo(k1);
			end;
			'5':
			begin
				write('k1 = ');
				readln(k1);
				write('k2 = ');
				readln(k2);
				bipcomp(k1,k2);
			end;
			'6':
			begin
				write('k = ');
				readln(k1);
				estrela(k1);
			end;
			'7':
			begin
				write('k = ');
				readln(k1);
				initG(c);
				n:=k1;
			end;
			'8'://petersen
			begin
				ciclo(5);
				for i:=1 to 5 do
				begin
					if c='2' then
					begin
						g2[i,i+5]:=1;
						g2[i+5,i]:=1;
						g2[i+5,i+7]:=1;
						g2[i+7,i+5]:=1;
						g2[i+5,i+8]:=1;
						g2[i+8,i+5]:=1;
					end
					else
					begin
						g1[i,i+5]:=1;
						g1[i+5,i]:=1;
						g1[i+5,i+7]:=1;
						g1[i+7,i+5]:=1;
						g1[i+5,i+8]:=1;
						g1[i+8,i+5]:=1;
					end;
				end;
				n:=10;
			end;
			'9'://diamond
			begin
				ciclo(4);
				if c='2' then
				begin
					g2[1,4]:=1;
					g2[4,1]:=1;
				end
				else
				begin
					g1[1,4]:=1;
					g1[4,1]:=1;
				end;
				n:=4;
			end;
			'10'://butterfly
			begin
				ciclo(3);
				if c='2' then
				begin
					g2[3,4]:=1;
					g2[4,3]:=1;
					g2[3,5]:=1;
					g2[5,3]:=1;
					g2[4,5]:=1;
					g2[5,4]:=1;
				end
				else
				begin
					g1[3,4]:=1;
					g1[4,3]:=1;
					g1[3,5]:=1;
					g1[5,3]:=1;
					g1[4,5]:=1;
					g1[5,4]:=1;
				end;
			end;
			'11'://3-cubo
			begin
				ciclo(4);
				for i:=5 to 7 do
				begin
					if c='2' then
					begin
						g2[i,i+1]:=1;
						g2[i+1,i]:=1;
						g2[i-4,i]:=1;
						g2[i,i-4]:=1;
					end
					else
					begin
						g1[i,i+1]:=1;
						g1[i+1,i]:=1;
						g1[i-4,i]:=1;
						g1[i,i-4]:=1;
					end;
				end;
				if c='2' then
					begin
						g2[5,8]:=1;
						g2[8,5]:=1;
						g2[4,8]:=1;
						g2[8,4]:=1;
					end
					else
					begin
						g2[5,8]:=1;
						g2[8,5]:=1;
						g2[4,8]:=1;
						g2[8,4]:=1;
					end;
					n:=8;
			end;
			'12':
			begin
				break;
			end;
		end;
	end;
end;

procedure imprG(var n:integer;c:char);//imprime grafo
var
	i,j:integer;
begin
	writeln(#10,'G',c);
	for i:=1 to n do
	begin
		for j:=1 to n do
		begin
			if c='1' then
			begin
				write(g1[i,j],' ');
			end
			else if c='2' then
			begin
				write(g2[i,j],' ');
			end;
		end;
		writeln();
	end;
end;

function clique(k,n:integer;c:char):boolean;//caracter 1 obtem clique de tamanho k, caracter 2 obtem conjunto independente de tamanho k
var
	np:integer=0;
	p:array[1..10] of integer;
	
	procedure geraclique(t:integer);
	var
		i:integer;
		b:boolean;
		
		procedure impr();
		var
			j:integer;
		begin
			write('{ ',p[1]);
			for j:=2 to k do
				write(' , ',p[j]);
			writeln(' }');
		end;
		function verifica():boolean;
		var 
			i,j:integer;
		begin
			verifica:=true;
			for i:=1 to k do
			begin
				for j:=1 to k do
				begin
					if(i<>j) then
					begin
						if(((g1[p[i],p[j]])=0) and (c='1')) then
							verifica:=false;
						if(((g1[p[i],p[j]])=1) and (c='2')) then
							verifica:=false;
					end;
				end;
			end;
		end;
	begin
		for i:=t to n do
		begin
				np:=np+1;
				p[np]:=i;
				if((np=k)) then
				begin
					b:=verifica();
					if b then
					begin
						clique:=true;
						impr();
					end;
				end
				else
				begin
					geraclique(i+1);
				end;
				np:=np-1;
		end;
	end;
begin
	clique:=false;
	geraclique(1);
end;

procedure cliqueMaxima(n:integer;c:char);//obtem numero de clique ou numero de independencia dependendo do caracter que recebe como paramatros
var
	i,m:integer;
	b:boolean;
begin
	for i:=2 to n do
	begin
		b:=clique(i,n,c);
		if b then
			m:=i;
	end;
	if(c='1')then
	begin
		writeln(#10,'Numero de Clique = ',m);
	end
	else if(c='2')then
	begin
		writeln(#10,'Numero de Independencia = ',m);
	end;
end;

function isomorfismo(n:integer):boolean;//verifica se dois grafos sao isomorfos
var
	np:integer=0;
	s:array[1..10] of integer;
	p:array[1..10] of integer;
	v:array[1..10] of integer;
	i:integer;
	
	procedure initBol();
	var
		i:integer;
	begin
		for i:=1 to n do
			s[i]:=0;		
	end;

	function teste():boolean;
	var
		i,j:integer;
	begin
		teste:=true;
		for i:=1 to n do
		begin
			for j:=1 to n do
			begin
				if g1[i,j]<>g2[p[i],p[j]] then
					teste:=false;
			end;
		end;
	end;
	
	procedure permut();
	var
		i,j:integer;
		
	begin
		for i:=1 to n do
		begin
			if s[i]=0 then
			begin
				np:=np+1;
				p[np]:=i;
				s[i]:=1;
				
				if((np=n) and (teste())) then
				begin
					isomorfismo:=true;
					for j:=1 to n do
						v[j]:=p[j];
					break;
				end
				else
				begin
					permut();
				end;
				
				np:=np-1;
				s[i]:=0;
			end;
		end;
	end;

begin
	isomorfismo:=false;
	initBol();
	permut();
	if isomorfismo then
	begin
		writeln(#10,'G1 e G2 sao isomorfos');
		writeln('funcao de isomorfismo f : V(G1) -> V(G2) ');
		for i:=1 to n do
			writeln('f(',i,') = ',v[i]);
	end
	else
	begin
		writeln(#10,'G1 e G2 nao sao isomorfos');
	end;	
end;

procedure complementar(var n1,n2:integer);//obtem grafo complementar de g1
var
	i,j:integer;
begin
	n2:=n1;
	for i:=1 to n1 do
	begin
		for j:=1 to n1 do
		begin
			if i=j then
			begin
				g2[i,j]:=0;
			end
			else if g1[i,j]=0 then
			begin
				g2[i,j]:=1;
			end
			else if g1[i,j]=1 then
			begin
				g2[i,j]:=0;
			end;
		end;
	end;
end;

function coloracao(n,k:integer):boolean;//verifica se o grafo g1 possui uma k-coloracao
var
	v:array[1..10] of integer;
	p:array[1..10] of integer;
	i:integer;
	np:integer=0;

	procedure cor();
	var
		i,j:integer;
		
		function teste():boolean;
		var
			i,j:integer;
		begin
			teste:=true;
			for i:=1 to n do
			begin
				for j:=1 to n do
				begin
					if((g1[i,j]=1)and(v[i]=v[j]))then
					begin
						teste:=false;
						break;
					end;
				end;
			end;
		end; 
			
	begin
		for i:=1 to k do
		begin
			np:=np+1;
			v[np]:=i;
			
			if(np=n)then
			begin
				if (teste())then
				begin
					if (not coloracao) then
					begin
						for j:=1 to n do
							p[j]:=v[j];
						coloracao:=true;
						break;
					end;	
				end;
			end
			else
			begin
				cor();
			end;
				
			np:=np-1;
		end;
	end;
	
begin
	coloracao:=false;
	cor();
	if coloracao then
	begin
		writeln(#10,'G1 possui ',k,'-coloracao');
		writeln('f : V(G1) -> {numeros naturais menores ou iguais a ',k,'}');
		for i:=1 to n do
			writeln('f(',i,') = ',p[i]);
		writeln();
	end
	else
	begin
		writeln(#10,'G1 nao possui ',k,'-coloracao');
	end;
end;

function numeroCromatico(n:integer):integer;//obtem o numero cromatico
var
	i:integer;
begin
	for i:=1 to n do
	begin
		if(coloracao(n,i)) then
		begin
			numeroCromatico:=i;
			break;
		end;
	end;
end;

function hamiltoniano(n:integer):boolean;//verifica se o grafo e' hamiltoniano
var
	np:integer=0;
	p:array[1..10] of integer;
	
	procedure halm(t:integer);
	var
		i:integer;
		b:boolean;
		
		procedure impr();
		var
			j:integer;
		begin
			write('ciclo hamiltoniano -> ( ');
			for j:=1 to n-1 do
				write(p[j],' , ');
			writeln(p[n],' )');
		end;
		function verifica():boolean;
		var 
			i:integer;
		begin
			verifica:=true;
			for i:=1 to n-1 do
			begin
				if(g1[p[i],p[i+1]]=0)then
					verifica:=false;
			end;
			if(g1[p[1],p[n]]=0)then
				verifica:=false;
		end;
	begin
		for i:=t to n do
		begin
				np:=np+1;
				p[np]:=i;
				if((np=n)) then
				begin
					b:=verifica();
					if b then
					begin
						hamiltoniano:=true;
						impr();
					end;
				end
				else
				begin
					halm(i+1);
				end;
				np:=np-1;
		end;
	end;
begin
	hamiltoniano:=false;
	halm(1);
end;

procedure prog();
var
	op:string;
	n1,n2,k:integer;
begin
	initG('1');
	n1:=10;
	
	while true do
	begin
		writeln(#10,'-------------------------------------------------------------');
		writeln('Digite uma opcao(string numerica inicial da opcao):');
		writeln('1 - Novo Grafo');
		writeln('2 - Imprimir Grafo');
		writeln('3 - Encontrar Cliques com tamanho k');
		writeln('4 - Encontrar Conjuntos Independentes de tamanho k');
		writeln('5 - Encontrar Numero de Clique(tamanho da Clique maxima)');
		writeln('6 - Encontrar Numero de Independencia(tamanho do Conjunto Independente Maximo)');
		writeln('7 - Isomorfismo entre dois Grafos');
		writeln('8 - Obter Grafo Complementar');
		writeln('9 - Verificar se o Grafo e autocomplementar');
		writeln('10 - Obter uma k-coloracao');
		writeln('11 - Obter o numero cromatico');
		writeln('12 - Verificar se o Grafo e Hamiltoniano');
		writeln('13 - Sair');
		writeln('-------------------------------------------------------------');
		readln(op);
		writeln();
		case op of
			'1'://novo grafo
			begin
				initG('1');
				while true do
				begin
					writeln(#10,'-------------------------------------------------------------');
					writeln('Digite uma opcao(string numerica inicial da opcao):');
					writeln('1 - Criar Grafo');
					writeln('2 - Grafo Especial');
					writeln('3 - Voltar');
					writeln(#10,'-------------------------------------------------------------');
					readln(op);
					writeln();
					case op of
						'1':
						begin
							leG(n1,'1');
						end;
						'2':
						begin
							gEspecial(n1,'1');
						end;
						'3':
						begin
							break;
						end;
					end;					
				end;
				imprG(n1,'1');
			end;
			'2'://imprime grafo
			begin
				imprG(n1,'1');
			end;
			'3'://obtem clique de tamanho k
			begin
				write(#10,'k = ');
				readln(k);
				writeln();
				if(not clique(k,n1,'1')) then
					writeln('Nao tem clique de tamanho ',k);
			end;
			'4'://obtem conjunto independente de tamanho k
			begin
				write(#10,'k = ');
				readln(k);
				writeln();
				if(not clique(k,n1,'2')) then
					writeln('Nao tem conjunto independente de tamanho ',k);
			end;
			'5'://obtem o numero de clique
			begin
				cliqueMaxima(n1,'1');
			end;
			'6'://obtem o numero de independencia
			begin
				cliqueMaxima(n1,'2');
			end;
			'7'://verifica se dois grafos sao isomorfos
			begin
				initG('2');
				while true do
				begin
					writeln(#10,'-------------------------------------------------------------');
					writeln('Digite uma opcao(string numerica inicial da opcao):');
					writeln('1 - Criar Grafo');
					writeln('2 - Grafo Especial');
					writeln('3 - Voltar');
					writeln(#10,'-------------------------------------------------------------');
					readln(op);
					writeln();
					case op of
						'1':
						begin
							leG(n2,'2');
						end;
						'2':
						begin
							gEspecial(n2,'2');
						end;
						'3':
						begin
							break;
						end;
					end;					
				end;
				imprG(n2,'2');
				if n1=n2 then
				begin
					isomorfismo(n1);
				end
				else
				begin
					writeln('G1 e G2 nao sao isomorfos');
				end;
			end;
			'8'://obtem o complementar de um grafo
			begin
				initG('2');
				complementar(n1,n2);
				imprG(n2,'2');
			end;
			'9'://verifica se g1 e' autocomplementar
			begin
				initG('2');
				complementar(n1,n2);
				if (isomorfismo(n1)) then
				begin
					writeln('G1 e autocomplementar');
				end
				else
				begin
					writeln('G1 nao e autocomplementar');
				end;
			end;
			'10'://colore o grafo com k cores se for possivel
			begin
				write('k = ');
				readln(k);
				coloracao(n1,k);		
			end;
			'11'://obtem o numero cromatico
			begin
				k:=numeroCromatico(n1);
				writeln('numero cromatico = ',k);
			end;
			'12'://verifica se o grafo e' hamiltoniano
			begin
				if(hamiltoniano(n1))then
				begin
					writeln('G1 hamiltoniano');
				end
				else
				begin
					writeln('G1 nao hamiltoniano');
				end;
			end;
			'13':
			begin
				writeln('sair');
				break;
			end;
		end;
	end;				
end;
				
begin
	prog();
end.	
