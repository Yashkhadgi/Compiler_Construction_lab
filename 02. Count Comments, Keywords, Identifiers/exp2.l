/*
Name : Yash Khadgi
PRN : 24070521137
Batch : B2
*/

%{
#include<stdio.h>
int comments=0, keywords=0, identifiers=0;
int words=0, lines=1, spaces=0;
%}

%%
"//".*                              { comments++; }
"int"|"char"|"float"|"if"|"else"|"return" { keywords++; words++; }
[a-zA-Z_][a-zA-Z0-9_]*             { identifiers++; words++; }
" "                                { spaces++; }
\n                                 { lines++; }
%%

int main()
{
    printf("Enter Input:\n");
    yylex();

    printf("\nComments = %d", comments);
    printf("\nKeywords = %d", keywords);
    printf("\nIdentifiers = %d", identifiers);
    printf("\nWords = %d", words);
    printf("\nLines = %d", lines);
    printf("\nSpaces = %d\n", spaces);
    return 0;
}

int yywrap()
{
    return 1;
}
