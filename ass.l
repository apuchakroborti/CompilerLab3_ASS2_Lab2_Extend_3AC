%{
#include "y.tab.h"
#include<string.h>
%}

%%

[A-Za-z]+([0-9]*[a-zA-Z]*)* { yylval = strdup(yytext); return ID; }
[0-9]+	{ yylval = strdup(yytext); return INTEGER; }
[0-9]+"."[0-9]+	{ yylval = strdup(yytext); return REAL; }

"+"	{ return PLUS; }
"-"	{ return MINUS; }
"*"	{ return MUL; }
"/"	{ return DIV; }
":="	{ return EQUAL; }
","	{ return COMMA; }
";"	{ return SEMICOLON; }
"("     { return OPEN; }
")"     { return CLOSE; }
"true"  { return TRUE; }
"false" { return FALSE; }
"~" 	{return NOT; }
"<" 	{return LESS; }
"<=" 	{return LESS_EQ; }
"=" 	{return EQ; }
"~=" 	{return NOT_EQ; }
">=" 	{return GREATER_EQ; }
">" 	{return GREATER; }
"|" 	{return OR; }
"&" 	{return AND ; }
[ \t\n]   { /* White space and new line will be ignore */ }
 
%%
