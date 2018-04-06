#include <stdlib.h>
#include <stdio.h>


typedef struct symbol { 
	//address in range of 0 to 255
	int address;
	char id[100] ;
	char type [5] ;
	int depth;
	int tmp;
} symbol ;

typedef struct symbol_node {
	//The data of the node
	symbol   element;
	//The pointer of the previous node
	struct symbol_node *  previous;
} symbol_node;

//The stack of the symbol_node
typedef struct symbol_stack {
	//The base and the sommet of the stack
	symbol_node * ebp;
	symbol_node * esp;
} symbol_stack;

//constructor
void init_stack(symbol_stack * stack);

//judge the stack is empty or not: 0->no others->yes
int is_empty(const symbol_stack* stack);

//insert node in stack
void push(symbol_stack * stack, symbol_node * new_node);

//get the top of the stack
symbol_node * top(const symbol_stack* stack);

//pop node from stack, and return the node
symbol_node  pop(symbol_stack * stack);

//serach the node by the id
symbol_node * research_by_id(const symbol_stack * stack, char* id_s);

//print the stack from the top to the bottom
void print_stack(const symbol_stack * stack);

//print the symbol(the var in the table)
void print_symbol(const symbol* symbol);


symbol ts_new_tmp(symbol_stack * stack ,int address);

symbol ts_new(symbol_stack * stack, int address, const char* id, const char* type, int depth);

