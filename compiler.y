%{#include <stdio.h>
	int yylex(void);
	void yyerror(char*);
%}
%token tMAIN tPRINTF tLEFTBRACE tRIGHTBRACE tINT tFLOAT tCONST tTYPE tADD tMIN tMUL tDIV tEQ tLEFTBRACKET tRIGHTBRACKET tSEMI tCOMMA tVAR tRETURN;
%left tADD tMIN
%left tMUL tDIV
%%

S : 
	| declarationVar S {printf("déclaration \n");}
	| declarationFun S  {printf("function \n");}
;
declaration : tTYPE tVAR {printf("var\n");}
;
declarationVar : declaration var {printf("declaration\n");}
;
var : 	
    | tCOMMA tVAR var {printf(" , var\n");}
	| tEQ expression_alg   { printf("=\n");} 
;
value : tINT {printf(" int \n");}
	  | tFLOAT {printf(" float \n");}
	  | call  {printf("call\n");}
;

declarationFun : declaration tLEFTBRACKET params tRIGHTBRACKET body {printf("function\n");}
			   | tMAIN tLEFTBRACKET params tRIGHTBRACKET body {printf("main\n");}
			   | declaration tLEFTBRACKET params tRIGHTBRACKET tSEMI {printf("prototype\n");}
;
params : 
	   | declaration suiteparamsdecla {printf("params\n");}
	   | tVAR suiteparams {printf("params\n");}
;
suiteparamsdecla :
				 | declaration tCOMMA suiteparamsdecla {printf("param\n");}
;
suiteparams : 
			| tCOMMA tVAR suiteparams {printf("suite params\n");}
;
		
body : tLEFTBRACE expressions tRIGHTBRACE {printf("body\n");}
;

expressions : expression tSEMI expressions {printf("expression\n");}
			| 
;
expression : tVAR tEQ expression_alg {printf("affectation\n");}
			| declarationVar {printf("declaration var\n");}
			| call {printf("call\n");}
;
expression_alg :  expression_alg tADD expression_alg {printf("+\n");}
				 |	expression_alg tMIN expression_alg {printf("-\n");}
		 		 |	expression_alg tDIV expression_alg {printf("/\n");}
		 		 |	expression_alg tMUL expression_alg {printf("*\n");}
		 		 | tLEFTBRACKET expression_alg tRIGHTBRACKET {printf("()\n");}
		  		 | value
		         | tVAR {printf("variable\n");}
;

call : tVAR tLEFTBRACKET params tRIGHTBRACKET
	 | tPRINTF 	tLEFTBRACKET params tRIGHTBRACKET {printf("printf\n");}
;	
				 

%%
int main(){
	yyparse();
}
