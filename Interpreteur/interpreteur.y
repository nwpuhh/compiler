%{#include <stdio.h>

  #define SIZE 1024
  #define NBREG 3

	int yylex(void);
	void yyerror(char*);
	int mem[SIZE] = {0};
	int reg[NBREG]= {0};
%}

%union {
	int integer;
}

%token tADD tMUL tSOU tDIV tCOP tAFC tLOAD tSTORE tEQL tINF tINFE tSUP tSUPE tJMP tJMPC tPARAM tPRINTF;


%type <integer> tPARAM


%%

S : 					
	| operation S 
;

operation :   tADD tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												reg[$2] = reg[$3] + reg[$4] ;
											} else {
												printf("error bad register\n");
											}
										}
			| tMUL tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												reg[$2] = reg[$3] * reg[$4] ;
											} else {
												printf("error bad register\n");
											}
										}
			| tSOU tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												reg[$2] = reg[$3] - reg[$4] ;
											} else {
												printf("error bad register\n");
											}
										}
			| tDIV tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												reg[$2] = reg[$3] / reg[$4] ;
											} else {
												printf("error bad register\n");
											}
										}
			| tCOP tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG){
												reg[$2] = reg[$3];
											} else {
												printf("error bad register\n");
											}
										}
			| tAFC tPARAM tPARAM {
											if($2 < NBREG){
												reg[$2] = $3 ;
											} else {
												printf("error bad register\n");
											}
										}
			| tLOAD tPARAM tPARAM {
											if($2 < NBREG){
												reg[$2] = mem[$3] ;
											} else {
												printf("error bad register\n");
											}
										}
			| tSTORE tPARAM tPARAM {
											if($3 < NBREG){
												mem[$2] = reg[$3];
											} else {
												printf("error bad register\n");
											}
										}
			| tEQL tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												if(reg[$3] == reg[$4])
													reg[$2] = 1;
												else 
													reg[$2] = 0;
											} else {
												printf("error bad register\n");
											}
										}
			| tINF tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												if(reg[$3] < reg[$4])
													reg[$2] = 1;
												else 
													reg[$2] = 0;
											} else {
												printf("error bad register\n");
											}
										}
			| tINFE tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												if(reg[$3] <= reg[$4])
													reg[$2] = 1;
												else 
													reg[$2] = 0;
											} else {
												printf("error bad register\n");
											}
										}
			| tSUP tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												if(reg[$3] > reg[$4])
													reg[$2] = 1;
												else 
													reg[$2] = 0;
											} else {
												printf("error bad register\n");
											}
										}
			| tSUPE tPARAM tPARAM tPARAM {
											if($2 < NBREG & $3 < NBREG & $4 < NBREG){
												if(reg[$3] >= reg[$4])
													reg[$2] = 1;
												else 
													reg[$2] = 0;
											} else {
												printf("error bad register\n");
											}
										}
			| tJMP tPARAM
			| tJMPC tPARAM tPARAM		

			| tPRINTF tPARAM 			{
											if($2 < NBREG)
												printf("%d\n",reg[$2]);
											else
												printf("error bad register\n");
										}
;


%%
int main(){
	yyparse();
}
