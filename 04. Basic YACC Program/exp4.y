/*
Name : Yash Khadgi
PRN : 24070521137
Batch : B2
*/

%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
int yyerror(char*);
int yyparse(void);
%}

%token NUM

%%
E:E'+'T|E'-'T|T;
T:T'*'F|T'/'F|F;
F:'('E')'|NUM;
%%

int yyerror(char*s){
        printf("Invalid Expression");
        exit(0);
}

int main() {
        printf("Enter an Expression: ");
        yyparse();
        printf("Valid Expression");
        return 0;
}
