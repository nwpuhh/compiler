all:compiler

lex.yy.c:compiler.l
	./flex compiler.l 

compiler.tab.c: compiler.y
	bison -d -v compiler.y

compiler: compiler.tab.c lex.yy.c symbols.c symbols.h interpreteur.c interpreteur.h
	gcc -o compiler lex.yy.c compiler.tab.c symbols.c interpreteur.c libfl.a 
 
test: compiler
	./compiler < test.c


debug: compiler.tab.c lex.yy.c symbols.c symbols.h interpreteur.c interpreteur.h
	gcc -g -o compiler lex.yy.c compiler.tab.c symbols.c interpreteur.c libfl.a bison/lib/liby.a
