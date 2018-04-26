%{
	#include "interpreteur.tab.h"
%}

%%

"ADD"	return tADD;
"MUL"	return tMUL;
"SOU"	return tSOU;
"DIV"	return tDIV;
"COP" 	return tCOP;
"AFC"	return tAFC;
"LOAD"	return tLOAD;
"STORE"	return tSTORE;
"EQU"	return tEQU;
"INF" 	return tINF;
"INFE"	return tINFE;
"SUP"	return tSUP;
"SUPE"	return tSUPE;
"JMP"	return tJMP;
"JMPC" 	return tJMPC;
[0-9]+ 	{
			yylval.integer = atoi(yytext);
			return tPARAM;    
		}
(" "|\t|\n)+		;
