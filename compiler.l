%{
	#include "compiler.tab.h"
%}

%%

"main"	return tMAIN;
"printf"	return tPRINTF;
"{"		return tLEFTBRACE;
"}"		return tRIGHTBRACE;
"return" 	return tRETURN;  
[-]?[0-9]+(e[0-9]+)?	{
							yylval.integer = atoi(yytext);
							return tINT;
						}
(" "|\t|\n)+		;
[-]?[0-9]+.[0-9]+		return tFLOAT;
const	return tCONST;
(int|float)		{
					yylval.str = strdup(yytext);
					return tTYPE;
				}

"+"	return tADD;
"-"	return tMIN;
"*"	return tMUL;
"/"	return tDIV;
"="	return tEQ;
"("	return tLEFTBRACKET;
")"	return tRIGHTBRACKET;
";"	return tSEMI;
"," return tCOMMA;

[a-zA-Z]([0-9]|[a-zA-Z]|_)*	{
							yylval.str = strdup(yytext);
							return tVAR;
							}
