%{#include <stdio.h>
  #include "symbols.h"
  #include "interpreteur.h"
  #include "string.h"

  #define OPP3(op, A, B) \
	do { \
		int xA = A; \
		int xB = B; \
		add_op(&operations,op,xA,xB,-1,2); \
	} while (0)

  #define OPP4(op, A,B,C) \
	do { \
		int xA = A; \
		int xB = B; \
		int xC = C; \
		add_op(&operations,op,A,B,C,3); \
	} while (0)

  #define OPP2(op, A) \
	do{\
		int xA = A ; \
		add_op(&operations,op,A,-1,-1,1); \
	} while(0)

	int yylex(void);
	void yyerror(char*);
	symbol_stack ts ;
	table_ops operations;
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

S : 					{print_stack(&ts);
						 print_ops(operations);
						 to_file(operations, "test.s");}
	| declarationVar S 
	| declarationFun S 
;
declaration :  tTYPE tVAR {
							if(research_by_id(&ts,$2) != NULL){
// TODO : warning
								exit(-1);
							} else {
								ts_new( &ts, esp++, $2, $1, 0);
								//print_stack(&ts);
							}		
						   }
			 
;

afcInDec :  
			|  tEQ expression_alg { symbol_node sn = pop(&ts)	;
								    esp-- ;						 
							 	    OPP3("LOAD", 0,sn.element.address);
							   	    OPP3("STORE",research_by_id(&ts,top(&ts)->element.id)->element.address,0);}	
;
declarationVar : declaration afcInDec var 
;

var : 						
	| tCOMMA newVar afcInDec var
;

newVar : tVAR { if(research_by_id(&ts,$1) != NULL){
							exit(-1);
						} else {
							symbol_node * sp = top(&ts);
							ts_new( &ts, esp++, $1, sp->element.type, 0);
							//print_stack(&ts);
						}}

;
value : tINT {symbol s = ts_new_tmp(&ts, esp++);
			  OPP3("AFC", 0,$1);
			  OPP3("STORE",s.address,0);}
	  | call  
;

declarationFun : declaration tLEFTBRACKET params tRIGHTBRACKET body 
			   | tTYPE tMAIN tLEFTBRACKET params tRIGHTBRACKET body 
			   | declaration tLEFTBRACKET params tRIGHTBRACKET tSEMI 
;
params : 
	   | declaration suiteparamsdecla 
	   | tVAR suiteparams {
						   OPP3("LOAD", 0,research_by_id(&ts,$1)->element.address);
						   symbol s = ts_new_tmp(&ts,esp++);
						   OPP3("STORE",s.address,0);}
	   | value suiteparams
;
suiteparamsdecla :
				 | declaration tCOMMA suiteparamsdecla 
;
suiteparams : 
			| tCOMMA tVAR suiteparams {
				OPP3("LOAD", 0 , research_by_id(&ts,$2)->element.address);
				symbol s  = ts_new_tmp(&ts,esp++);
			    OPP3("STORE",s.address,0);}

			| tCOMMA value suiteparams 
;
		
body : tLEFTBRACE expressions tRIGHTBRACE 
;

expressions : expression tSEMI expressions 
			| 
;
expression : tVAR tEQ expression_alg {
									  OPP3("LOAD",0 , pop(&ts).element.address);
									  esp--;
									  OPP3("STORE",research_by_id(&ts,$1)->element.address,0);}
			| declarationVar 
			| call 
;
expression_alg :  expression_alg tADD expression_alg {
					OPP3("LOAD",0,pop(&ts).element.address);
			 		esp--;
		   			OPP3("LOAD",1 , pop(&ts).element.address);
					esp--;
					OPP4("ADD", 0, 1, 0);
					symbol s = ts_new_tmp(&ts,esp++);
					OPP3("STORE",s.address,0);}
			| expression_alg tMIN expression_alg {

					OPP3("LOAD",0 , pop(&ts).element.address);
					esp--;
					OPP3("LOAD",1, pop(&ts).element.address);
					esp--;
					OPP4("SOU", 0, 1 ,0);
					symbol s = ts_new_tmp(&ts,esp++);
					OPP3("STORE",s.address,0);}
			| expression_alg tDIV expression_alg {
					OPP3("LOAD",0 , pop(&ts).element.address);
					esp--;
					OPP3("LOAD", 1 , pop(&ts).element.address);
					esp--;
					OPP4("DIV", 0,1,0);
					symbol s = ts_new_tmp(&ts,esp++);
					OPP3("STORE",s.address,0);}
		 	| expression_alg tMUL expression_alg {
					OPP3("LOAD",0, pop(&ts).element.address);
					esp--;
					OPP3("LOAD",1, pop(&ts).element.address);
					esp--;
					OPP4("MUL", 0,1,0);
					symbol s = ts_new_tmp(&ts,esp++);
					OPP3("STORE",s.address,0);}
		 	| tLEFTBRACKET expression_alg tRIGHTBRACKET 
		  	| value
		    | tVAR {
					symbol s = ts_new_tmp(&ts,esp++);
					OPP3("LOAD",0 ,research_by_id(&ts,$1)->element.address);
					OPP3("STORE",s.address,0);}
;

call : tVAR tLEFTBRACKET params tRIGHTBRACKET	{ 
			OPP2("JMP",research_by_id(&ts,$1)->element.address);}
	 | tPRINTF 	tLEFTBRACKET params tRIGHTBRACKET //{printf("printf\n");}
;	
				 

%%
int main(){
	init_stack(&ts); 
	init_operations(&operations);
	yyparse();
}
