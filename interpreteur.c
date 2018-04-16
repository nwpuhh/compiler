#include "interpreteur.h"
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>


void init_operations(table_ops * operations)
{
	operations->len = 0;
}

int add_op(table_ops * operations, char * op, int a, int b, int c, int nbParam)
{
	operation new ;
	strncpy(new.op, op,10);
	new.a = a ;
	new.b = b ;
	new.c = c ;
	new.nbParam = nbParam ;
	if(operations->len < SIZE_TABLE){
		operations->table[operations->len++] = new;
		return 0 ;
	} else {
		printf("Error operations overflow\n");
		return -1 ;
	}
}


void print_ops(const table_ops operations)
{
	printf("OP  A  B  C  \n");
	for(int i = 0; i < operations.len; i++)
	{		
		printf("%s %d %d %d \n", operations.table[i].op,operations.table[i].a,operations.table[i].b,operations.table[i].c );
	}
}

void to_file(const table_ops operations, const char* filename){
	FILE * fp = fopen(filename, "w");
	if(fp == NULL){
		perror("opening fail");
		exit(-1);
	}
	operation current ;
	for(int i = 0; i < operations.len; i++)
	{
		current = operations.table[i];
		if(current.nbParam == 1){
				fprintf(fp,"%s %d\n",current.op, current.a);
		}else if(current.nbParam == 2){
				fprintf(fp,"%s %d %d\n",current.op, current.a, current.b);
		}else if(current.nbParam == 3){
				fprintf(fp,"%s %d %d %d\n",current.op, current.a, current.b, current.c);
		}else {
			printf("error too many arg\n");
			exit(-1);
		}
	}
	fclose(fp);
}
	
