#include <stdio.h>
#include "interpreteur.h"

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
void init_operations(table_ops * operations) {
		operations = malloc(sizeof(table_ops));
	}


//add the operations
int add_op(table_ops * operations, char * op, int a, int b, int c, int nbParam){
		operation new_op ;
		strncpy(new_op.op,op,10);
		new_op.a = a ;
		new_op.b = b ;
		new_op.c = c ;
		new_op.nbParam = nbParam;
		if(len = SIZE_TABLE){
			printf("too much operations\n");
			return -1 ;
		} 
		operations->table[len++] = new_op ;
		return 0;
}

//print the table of operations
void print_ops(const table_ops operations){
		int i ;
		operation OP ;
		for (i = 0 ; i < operations.len ; i++){
			OP = operations.table[i] ;
			if(OP.nbParam == 1)
				printf("%s %d\n",OP.op,OP.a); 
			else if(OP.nbParam == 2)
				printf("%s %d %d\n", OP.op, OP.a, OP.b);
			else if (OP.nbParam == 3)
				printf("%s %d %d %d\n", OP.op, OP.a, OP.b, OP.c);
		}
}

void to_file(const table_ops operations, const char* filename){
		FILE * res ;
		int i ;
		operation OP ;
		res = fopen(filename, "w");
		for (i = 0 ; i < operations.len ; i++){
			OP = operations.table[i] ;
			if(OP.nbParam == 1)
				fprintf(res,"%s %d\n",OP.op,OP.a); 
			else if(OP.nbParam == 2)
				fprintf(res,"%s %d %d\n", OP.op, OP.a, OP.b);
			else if (OP.nbParam == 3)
				fprintf(res,"%s %d %d %d\n", OP.op, OP.a, OP.b, OP.c);
		}
		fclose(res);
}

