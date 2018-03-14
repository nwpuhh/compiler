%{#include <stdio.h>
	int yylex(void);
	void yyerror(char*);
%}
%token tMAIN tPRINTF tLEFTBRACE tRIGHTBRACE tINT tFLOAT tCONST tTYPE tADD tMIN tMUL tDIV tEQ tLEFTBRACKET tRIGHTBRACKET tSEMI tCOMMA tVAR tRETURN;
%left tMUL tDIV
%left tADD tMIN
%%
S : 
	| declarationVar S {printf("déclaration \n");}
	| declarationFun S  {printf("function \n");}
;
declaration : tTYPE tVAR ;
declarationVar : declaration var ;
var : 	
    | tCOMMA tVAR var {printf(" , ");}
	| tEQ value   { printf("egal à ");} 
;
value : tINT
	  | tFLOAT
	  | call ; 

declarationFun : declaration tLEFTBRACKET params tRIGHTBRACKET body
			   | tMAIN tLEFTBRACKET params tRIGHTBRACKET body 
;
params : 
	   | param suiteparams
;
param : declaration ;  
suiteparams : 
			| tCOMMA param suiteparams 
;
		
body : tLEFTBRACE expressions tRIGHTBRACE ;

expressions : expression tSEMI expressions 
			| 
;
expression : tVAR tEQ equation 
			| declarationVar
			| call
;
equation :  equation tADD equation 
		 |	equation tMIN equation 
		 |	equation tDIV equation
		 |	equation tMUL equation
		 | tLEFTBRACKET equation tRIGHTBRACKET
		 | value
		 | tVAR
;

call : tVAR tLEFTBRACKET params tRIGHTBRACKET
	 | tPRINTF 	tLEFTBRACKET params tRIGHTBRACKET 
;	
				 

%%
int main(){
	yyparse();
}
