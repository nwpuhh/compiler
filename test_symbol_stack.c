#include "symbols.h"
#include <string.h>

int main()
{
    //define the stack of the symbol, and init
    symbol_stack stack;
    init_stack(&stack);
    printf("Stack is initialized!!\n");

    //First try
    if(is_empty(stack))
        printf("Stack is empty\n");
    else
        printf("Stack is not empty\n");

    
    

}