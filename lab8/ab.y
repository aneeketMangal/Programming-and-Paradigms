%{
#include <stdio.h>
#include <string.h>

int yylex(void);
int yyparse(void);
void yyerror() {printf("Invalid!\n");}
int yywrap() {return 1;}
int main() {yyparse();}
%}

%token A B newl

%%
validstr: A A A A A A A A A A rec B newl {printf("Valid!\n");return 0;};
rec : rec A
      |;
%%