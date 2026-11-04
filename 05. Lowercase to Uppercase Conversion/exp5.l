/*
Name : Yash Khadgi
PRN : 24070521137
Batch : B2
*/

%{
char changeCase(char a) {
    if(a >= 'a' && a <= 'z')
        return a - 32;
    else if(a >= 'A' && a <= 'Z')
        return a + 32;
    else
        return a;
}
%}

%%
[A-Za-z] { putchar(changeCase(yytext[0])); }
. {putchar(yytext[0]);}
%%

int main() {
    printf("Enter Input: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
