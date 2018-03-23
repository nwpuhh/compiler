#include <stdlib.h>
#include <stdio.h>

enum typeVar_t { INT , FLOAT};

struct symbol { 
	//address in range of 0 to 255
	int address;
	char* id;
	typeVar_t type;
	int depth;
};

struct symbol_node {
	//The data of the node
	symbol   element;
	//The pointer of the previous node
	symbol_node *  previous;
};

//The stack of the symbol_node
struct symbol_stack {
	//The base and the sommet of the stack
	symbol_node * ebp;
	symbol_node * esp;
};

//constructor
void init_stack(symbol_stack * stack);

//judge the stack is empty or not: 0->no others->yes
int is_empty(symbol_stack stack);

//insert node in stack
void push(symbol_stack * stack, symbol_node * new_node);

//get the top of the stack
symbol_node top(symbol_stack stack);

//pop node from stack, and return the node
symbol_node pop(symbol_stack * stack);

//serach the node by the id
symbol_node research_by_id(symbol_stack * stack, char* id_s);


int ts_new_tmp();

int ts_new();

