%{#include <stdio.h>
	int yylex(void);
	void yyerror(char*);
%}
%token tMAIN tPRINTF tLEFTBRACE tRIGHTBRACE tINT tFLOAT tCONST tTYPE tADD tMIN tMUL tDIV tEQ tLEFTBRACKET tRIGHTBRACKET tSEMI tCOMMA tVAR;

%%
S : tMAIN S {printf("main\n");}
	| declarationVar S {printf("déclaration \n");}
	| declarationFun S  {printf("function \n");}
	| 
;
declaration : tTYPE tVAR ;
declarationVar : declaration var ;
var : 	
    | tCOMMA tVAR var {printf(" , ");}
	| tEQ value   { printf("egal à ");} 
;
value : tINT
	  | tFLOAT
;

declarationFun : declaration tRIGHTBRACKET params tLEFTBRACKET body ;
params : 
	   | declaration params;

				 

%%
int main(){
	yyparse();
}
