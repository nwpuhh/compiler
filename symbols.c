
#include "symbols.h"

void init_stack(symbol_stack * stack)
{
	stack->ebp = NULL;
	stack->esp = NULL;
}

int is_empty(const symbol_stack * stack)
{
	//The stack is empty, return 1
	if(stack->esp == stack->ebp && stack->esp == NULL)
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
		stack->esp = new_node;
		stack->ebp = new_node;
		// the first node's previous is NULL
		new_node->previous = NULL;
	}
	else
	{
		//give the esp to the previous pointer
		new_node->previous = esp;
		//update the esp
		stack->esp = new_node;
	}
}

//return symbol in the top of the stack if it is empty, else return NULL
symbol_node top(const symbol_stack * stack)
{	
	//if it is not empty, so return NULL
	if(is_empty(*stack))
		{printf("The stack is empty!!\n"); return NULL;}
	else
		return *(stack->esp) ;
}

//pop the top of the stack, and if it empty return NULL
symbol_node pop(symbol_stack * stack)
{
	//judge the stack is empty
	if(is_empty(*stack))
		{printf("The stack is empty!!\n"); return NULL;}
	else
	{
		//get the top of the stack, and store in the temp
		symbol_node * temp = stack->esp;
		//change the top pointer of the stack
		stack->esp = stack->esp->previous;

		return *temp;
	}
}

symbol_node research_by_id(const symbol_stack * stack, char* id_s)
{
	symbol_node * iter = NULL;
	//judge the stack is empty or not
	if(is_empty(*stack))
		{printf("The stack is empty!!\n"); return NULL;}
	else
	{
		//the iterator comes from the esp
		iter = stack->esp;
		do {
			//found the element by the id provioded
			if(strcmp((iter->element).id, id_s) == 0)
				break;
			//if not found it will continue until the first one
			iter = iter->previous;
		while(iter != NULL);

		if(iter != NULL)
			{printf("The element with that id is founded!!\n"); return *iter;}
		else
			{printf("No element in the stack with this id!!\n"); return NULL;}
	}
}

//print one var in the table
void print_symbol(const symbol* symbol)
{
	printf("%d\t\t%s\t\t%d\t\t%d\t\t\n", symbol->address, symbol->id,
			symbol->type, symbol->depth);
}

void print_stack(const symbol_stack * stack)
{
	if(is_empty(*stack))
		{ printf("The stack is empty!!\n"); }
	else
	{
		symbol_node * iter = stack->esp;
		printf("+++++++|+++++++|+++++++|+++++++|\n");
		printf("Address|  id   |  type | depth |\n");
		printf("+++++++|+++++++|+++++++|+++++++|\n");
		do {
			print_symbol(&(iter->element);
			iter = iter->previous;			
		} 
		while(iter != NULL);
	}
}

