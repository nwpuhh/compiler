
#include "symbols.h"

void init_stack(symbol_stack * stack)
{
	stack->ebp = NULL;
	stack->esp = NULL;
}

int is_empty(symbol_stack stack)
{
	//The stack is empty, return 1
	if(stack.esp == stack.ebp && stack.esp == NULL)
		return 1;
	else 
		return 0;
}

void push(symbol_stack * stack, symbol_node * new_node)
{	
	//if the stack is empty
	if(is_empty(*stack)) 
	{	
		//the esp and ebp are all point to the node
		esp = new_node;
		ebp = new_node;
		// the first node's previous is NULL
		new_node->previous = NULL;
	}
	else
	{
		//give the esp to the previous pointer
		new_node->previous = esp;
		//update the esp
		esp = new_node;
	}
}

symbol_node top(symbol_stack stack)
{	
	//if it is not empty, so return NULL
	if(is_empty(stack))
		{printf("The stack is empty!!\n"); return NULL;}
	else
		return *esp ;
}

symbol_node pop(symbol_stack * stack)
{
	//judge the stack is empty
	if(is_empty)
}


