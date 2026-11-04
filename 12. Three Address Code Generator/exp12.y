/*
Name : Yash Khadgi
PRN : 24070521137
Batch : B2
*/

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int yylex(void);
void yyerror(const char *s);

int temp_count = 0;

char* newtemp()
{
    char buffer[20];
    sprintf(buffer, "t%d", ++temp_count);
    return strdup(buffer);
}

char* generate(char *a, char op, char *b)
{
    char *temp = newtemp();
    printf("%s = %s %c %s\n", temp, a, op, b);
    free(a);
    free(b);
    return temp;
}
%}

%union {
    char *str;
}

%token <str> ID NUM
%type <str> expr term factor

%%
input:
    expr '\n' {
        printf("Final result: %s\n", $1);
        free($1);
    }
    ;

expr:
    expr '+' term { $$ = generate($1, '+', $3); }
    | expr '-' term { $$ = generate($1, '-', $3); }
    | term { $$ = $1; }
    ;

term:
    term '*' factor { $$ = generate($1, '*', $3); }
    | term '/' factor { $$ = generate($1, '/', $3); }
    | factor { $$ = $1; }
    ;

factor:
    '(' expr ')' { $$ = $2; }
    | ID { $$ = $1; }
    | NUM { $$ = $1; }
    ;

%%

void yyerror(const char *s)
{
    printf("Invalid expression: %s\n", s);
}

int main(void)
{
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}
