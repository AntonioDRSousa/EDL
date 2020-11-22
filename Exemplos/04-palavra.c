#include<stdio.h>
#include<string.h>

char s1[30],s2[30],s3[30],s4[30];

int main(){
	printf("s1 -> ");
	scanf("%s",s1);
	printf("s2 -> ");
	scanf("%s",s2);

	printf("tamanho de s1 -> %d\n",strlen(s1));
	printf("tamanho de s2 -> %d\n",strlen(s2));
	
	strcat(s1,s2);//s1:=concat(s1,s2);
	printf("s1 -> %s\n",s1);
	
	strcpy(s4,s1);
	strcat(s1,s4);
	printf("s1 -> %s\n",s1);
	
	strcpy(s3,s1);
	printf("s3 -> %s\n",s3);
	
	if(strcmp(s1,s2)==0){//verifica se s1=s2
		printf("s1 = s2\n");
	}
	else{
		printf("s1 =/= s2\n");
	}
	return 0;
}
