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
	int depth = 0;
%}

%union {
	int integer;
	char* str;
}

%token tMAIN tPRINTF tLEFTBRACE tRIGHTBRACE tINT tFLOAT tCONST tTYPE tADD tMIN tMUL tDIV tEQ tLEFTBRACKET tRIGHTBRACKET tSEMI tCOMMA tVAR tRETURN tLESS tGREATER tNOT tIF tELSE tAND tOR t2EQ tNOTEQ;

%left tOR
%left tAND
%left t2EQ tNOTEQ
%left tGREATER tLESS
%left tADD tMIN
%left tMUL tDIV
%left tNOT
%left tLEFTBRACKET tRIGHTBRACKET

%nonassoc tIFX
%nonassoc tELSE

%type <str> tVAR tTYPE

%type <integer> tINT tIF startIF

%%

S : 					{print_stack(&ts);
						 print_ops(operations);
						 to_file(operations, "Interpreteur/test.s");}
	| declarationVar S 
	| declarationFun S 
;

declaration :  tTYPE tVAR {
							if(research_by_id(&ts,$2) != NULL){
								exit(-1);
							} else {
								ts_new( &ts, esp++, $2, $1, depth);
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
							ts_new( &ts, esp++, $1, sp->element.type, depth);
							//print_stack(&ts);
						}
			  }

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
			| expression_if expressions 
			| 
;
expression : tVAR tEQ expression_alg {
									  OPP3("LOAD",0 , pop(&ts).element.address);
									  esp--;
									  OPP3("STORE",research_by_id(&ts,$1)->element.address,0);}
			| declarationVar 
			| call 

;

expression_condition :  expression_alg
							{ 	/*For guaranting the expression_cond is 0 or 1*/
								OPP3("LOAD", 0, pop(&ts).element.address);
								OPP3("AFC", 1, 0); /* 0 for R1*/
								OPP4("EQL", 0, 0, 1);  /* if the value == 0, R0 = 1; value != 0 R0 = 0*/
								OPP3("AFC", 1, 0);	/* renew the R1 = 0 */
								OPP4("EQL", 0, 0, 1);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address,0);
								printf("expression_alg only\n");}
				| tLEFTBRACKET expression_condition tRIGHTBRACKET
							{printf("expression_alg only\n");}
				| expression_alg t2EQ expression_alg
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("LOAD", 1, pop(&ts).element.address);
								esp--;
								OPP4("EQU", 0, 0, 1);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address,0);
								printf("expression_alg == exp\n");}
				| tNOT expression_condition
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("AFC", 1, 0);
								OPP4("EQL", 0, 0, 1);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address,0);
								printf("not exp_condition\n");}
				| expression_alg tGREATER tEQ expression_alg
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("LOAD", 1, pop(&ts).element.address);
								esp--;
								OPP4("SUPE", 0, 1, 0);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address, 0);
								printf("expression_alg >= expression_alg\n");}
				| expression_alg tLESS tEQ expression_alg
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("LOAD", 1, pop(&ts).element.address); /* R1 is the first*/
								esp--;
								OPP4("INFE", 0, 1, 0);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address, 0);
								printf("expression_alg <= expression_alg\n");}
				| expression_alg tGREATER expression_alg
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("LOAD", 1, pop(&ts).element.address);
								esp--;
								OPP4("SUP", 0, 1, 0);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address, 0);
								printf("expression_alg > expression_alg\n");}
				| expression_alg tLESS expression_alg
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("LOAD", 1, pop(&ts).element.address); /* R1 is the first*/
								esp--;
								OPP4("INF", 0, 1, 0);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address, 0);
								printf("expression_alg < expression_alg\n");}
				| expression_alg tNOTEQ expression_alg
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("LOAD", 1, pop(&ts).element.address); /* R1 is the first*/
								esp--;
								OPP4("EQL", 0, 0, 1);
								OPP3("AFC", 1, 0);
								OPP4("EQL", 0, 0, 1);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address, 0);
								printf("expression_alg != expression_alg\n");}
				| expression_condition tAND expression_condition
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("LOAD", 1, pop(&ts).element.address);
								esp--;
								OPP4("ADD", 0, 0, 1);
								OPP3("AFC", 1, 2);
								OPP4("EQL", 0, 0, 1);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address,0);
								printf("expression_cond && expression_cond\n");}
				| expression_condition tOR expression_condition
							{
								OPP3("LOAD", 0, pop(&ts).element.address);
								esp--;
								OPP3("LOAD", 1, pop(&ts).element.address);
								esp--;
								OPP4("ADD", 0, 0, 1); /* if R0 = R1 + R0 => 0 -> should be 0 as false*/
								OPP3("AFC", 1, 0);
								OPP4("EQL", 0, 0, 1);									
								OPP3("AFC", 1, 0);
								OPP4("EQL", 0, 0, 1);
								symbol s = ts_new_tmp(&ts,esp++);
								OPP3("STORE",s.address,0);
								printf("expression_cond || expression_cond\n");}
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
	 | tPRINTF 	tLEFTBRACKET params tRIGHTBRACKET {	OPP3("LOAD",0 , pop(&ts).element.address);
									  				esp--;
									  				OPP2("PRINTF",0);}
;	

expression_if: startIF body_if tELSE body_if
					{ 
						operations.table[$1].a = operations.len;
						depth--;
						printf("If with else\n"); }
			 | startIF body_if %prec tIFX
					{
						operations.table[$1].a = operations.len;
						depth--;
						printf("Only the if\n");
					}
		;

startIF: tIF tLEFTBRACKET expression_condition tRIGHTBRACKET
		{
			depth++;
			OPP3("LOAD", 0, pop(&ts).element.address);
			OPP3("JMPC", -1, 0);
			$1 = operations.len - 1;
			$$ = $1;
		} ;

body_if: tLEFTBRACE expressions tRIGHTBRACE
			 { printf("If with the brace\n"); }
		| expression tSEMI
			{ printf("If without brace\n"); }
		| expression_if
			{ printf("If statement with if\n"); }
		;


%%
int main(){
	init_stack(&ts); 
	init_operations(&operations);
	yyparse();
}

void yyerror(char * s)
{ fprintf(stderr, "%s\n", s); }