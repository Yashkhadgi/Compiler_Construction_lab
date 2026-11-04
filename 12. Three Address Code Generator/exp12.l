/*
Name : Yash Khadgi
PRN : 24070521137
Batch : B2
*/

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "y.tab.h"
%}

%%

[0-9]+ {
    yylval.str = strdup(yytext);
    return NUM;
}

[a-zA-Z_][a-zA-Z0-9_]* {
    yylval.str = strdup(yytext);
    return ID;
}

[ \t]+ ;

\n { return '\n'; }

[+*/()-] { return yytext[0]; }

. { return yytext[0]; }

%%

int yywrap(void)
{
    return 1;
}
