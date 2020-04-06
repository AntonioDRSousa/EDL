#include<stdio.h>

void g(){
	char ch='g';
	printf("%c\n",ch);
}

void h(){
	char ch='g';
	printf("%ch\n",ch);
}

void f(){
	char ch='g';
	printf("%cf\n",ch);
	g();
	h();
}

void g1(){
	printf("%d\n",123);
}

void h1(){
	printf("%d\n",456);
}

int main(){
	f();
	g1();
	h1();
	return 0;
}
