#include <stdio.h>

#define SIZE_TABLE 1024

typedef struct operation {
	char op[10];
	int  a ;
	int  b ;
	int  c ;
	int nbParam ;
} operation;

typedef struct table_ops {
	int len;
	operation table[SIZE_TABLE];
} table_ops;


//init the table
void init_operations(table_ops * operations);

//add the operations
int add_op(table_ops * operations, char * op, int a, int b, int c, int nbParam);

//print the table of operations
void print_ops(const table_ops operations);

void to_file(const table_ops operations, const char* filename);
