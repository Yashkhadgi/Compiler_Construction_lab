/*
Name : Yash Khadgi
PRN : 24070521137
Batch : B2
*/

%{
#include <stdio.h>

int yylex(void);
int yyerror(const char *s);
%}

%token FOR ID NUM RELOP INC DEC

%%
stmt : FOR '(' ID '=' NUM ';' ID RELOP NUM ';' ID INC ')'
     | FOR '(' ID '=' NUM ';' ID RELOP NUM ';' ID DEC ')'
     | ID RELOP ID '?' ID ':' ID
     | ID RELOP NUM '?' ID ':' ID
     | ID RELOP ID '?' NUM ':' NUM
     | ID RELOP NUM '?' NUM ':' NUM
     ;
%%

int yyerror(const char *s)
{
    return 1;
}

int main()
{
    printf("Enter a for loop or ternary expression:\n");

    if(yyparse() == 0)
        printf("Valid statement\n");
    else
        printf("Invalid statement\n");

    return 0;
}
