%{
#include<stdio.h>
%}
keyword int|void|while|do|for
iden ([a-zA-Z])([a-zA-Z0-9])*
ropr <|<=|>|>==
pun [;,{}()]
con ([0-9])([0-9])*
aopr [-+*/]
ass =
%%
{keyword} {printf("%s is a keyword\n",yytext);}
{iden} {printf("%s is an identifier\n",yytext);}
{ropr} {printf("%s is an relational operator\n",yytext);}
{pun} {printf("%s is an punctuation\n",yytext);}
{con} {printf("%s is an constant\n",yytext);}
{aopr} {printf("%s is an arithmatic operation\n",yytext);}
{ass} {printf("%s is an assignment operator\n",yytext);}
%%
void main(){
printf("enter a string");
yylex();}
int yywrap(){
return 1;
}
