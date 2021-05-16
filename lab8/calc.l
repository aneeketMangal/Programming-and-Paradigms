%{
#include <stdio.h>
#include <string.h>

    int curr = 0, valid = 1, top = 0, i = 0, j = 0; 
    char operands[1000][3];
    char operators[1000][10]; 

    void open(){
        if(curr == 1)
            valid = 0;
        top++; 
    }
    void closing(){
        if (top == 0) 
            valid = 0;     
        if(curr == 0)
            valid = 0;
        top--;
    }
    void operand(){
        if(curr == 1)
            valid = 1;
        curr = 1;
        strcpy(operands[j], yytext); 
        j++; 
    }
    void operator(){
         if(curr == 0)
            valid = 0;
        curr = 0;
        strcpy(operators[i], yytext); 
        i++; 
    }
%}

%%
[\t]
[-+*/]                                          {operator();}
[0-9]+|[a-zA-Z]([a-zA-Z0-9_])*          	{operand();}
\(					            {open();}
\)                                              {closing();}             
.          {valid = 0;}

%%
int yywrap(void){return 1;}
int main(int k,char **argcv){
    yyin=fopen(argcv[1],"r");
    yylex(); 
    printf("\n");
    if (valid == 1){
        printf("Valid\n"); 
        printf("\nIdentifiers:\n");
		for(int k=0;k<i+1;k++)
		printf("%s\n",operands[k]);
		printf("\nOperators:\n");
		for(int k=0;k<j;k++)
		printf("%s\n",operators[k]);
    }
    else
        printf("Invalid\n"); 
    return 0;
}