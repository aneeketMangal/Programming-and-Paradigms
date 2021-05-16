%{
    #include <stdio.h>
    #include <string.h>
    int yylex(void);
    int yyparse(void);
    void yyerror() {printf("Invalid!\n");}
    int yywrap() {return 1;}
    int main() {yyparse();}
%}

 
%token NUMBER Add Sub Mul Div Ob Eb
%left Add Sub
%left Mul Div
%%
evaluate : currExp {
                printf("Result = %d\n", $1);
                return 0;
            }
            |;
currExp :
    currExp Add currExp { $$ = $1 + $3; }
    | currExp Sub currExp { $$ = $1 - $3; }
    | currExp Mul currExp { $$ = $1 * $3; }
    | currExp Div currExp { $$ = $1 / $3; }
    | Ob currExp Eb { $$ = $2; }
    | NUMBER { $$ = $1; };

%%