%{#include <stdio.h>
  #include "symbols.h"
  #include "string.h"
	int yylex(void);
	void yyerror(char*);
	symbol_stack ts ;
	int esp = 0 ;
%}

%union {
	int integer;
	char* str;
}

%token tMAIN tPRINTF tLEFTBRACE tRIGHTBRACE tINT tFLOAT tCONST tTYPE tADD tMIN tMUL tDIV tEQ tLEFTBRACKET tRIGHTBRACKET tSEMI tCOMMA tVAR tRETURN;

%left tADD tMIN
%left tMUL tDIV

%type <str> tVAR tTYPE

%type <integer> tINT


%%

S : 
	| declarationVar S {printf("déclaration \n");}
	| declarationFun S  {printf("function \n");}
;
declaration :  tTYPE tVAR {	printf("var\n");
							if(research_by_id(&ts,$2) != NULL){
								exit(-1);
							} else {
								ts_new( &ts, esp++, $2, $1, 0);
								print_stack(&ts);
							}		
						   }
			 
;

afcInDec : 
			 | tEQ expression_alg { symbol_node sn = pop(&ts)	;
								    esp-- ;						 
							 	    printf("LOAD R0 %d\n",sn.element.address);
							   	    printf("STORE %d R0\n",research_by_id(&ts,top(&ts)->element.id)->element.address);}	
;
declarationVar : declaration afcInDec var {printf("declaration\n");}
;

var : 
    | tCOMMA newVar var {}						
	| tCOMMA newVar afcInDec var {}
;

newVar : tVAR { if(research_by_id(&ts,$1) != NULL){
							exit(-1);
						} else {
							symbol_node * sp = top(&ts);
							ts_new( &ts, esp++, $1, sp->element.type, 0);
							print_stack(&ts);
						}}

;
afc : tVAR tEQ expression_alg   { 
								  symbol_node sn = pop(&ts)	;
								  esp-- ;						 
							 	  printf("LOAD R0 %d\n",sn.element.address);
							   	  printf("STORE %d R0\n",research_by_id(&ts,$1)->element.address);
								}
	 
;
value : tINT {symbol s = ts_new_tmp(&ts, esp++);
			  printf("AFC R0 %d\n",$1);
			  printf("STORE %d R0\n", s.address);}
	  | tFLOAT {printf(" float \n"); }
	  | call  {printf("call\n"); }
;

declarationFun : declaration tLEFTBRACKET params tRIGHTBRACKET body {printf("function\n");}
			   | tTYPE tMAIN tLEFTBRACKET params tRIGHTBRACKET body {printf("main\n");}
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
	init_stack(&ts); 
	yyparse();
}
