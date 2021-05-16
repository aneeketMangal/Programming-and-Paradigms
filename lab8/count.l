%{
#include <stdio.h>
int c = 0;
int w = 0;
int s = 0;
int l = 0;
%}
%%
\n {l++;c++;}
([ ])+ {s+=yyleng;c+=yyleng;}
[a-zA-Z0-9]+ {w++; c+=yyleng;}
[^a-zA-Z0-9]+ {}

 
%%
int yywrap(){}
int main(int k,char **argcv){
    yyin=fopen(argcv[1],"r");
    yylex();
    printf("\n");
    printf("characters:- %d\nwords:- %d\nspaces:- %d\nlines:- %d\n", c, w, s, l);
    return 0;
}