#include <stdio.h>

#define SIZE_TABLE 1024

struct operation {
	char op[10];
	int  a;
	int  b;
	int  c;
}

struct table_ops {
	int len;
	operation table[SIZE_TABLE];
}

//define the global variable of the table
table_ops table;

//init the table
void init();

//
void add_op(table_ops * table, op)




