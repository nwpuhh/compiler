all:compiler

lex.yy.c:compiler.l
	./flex compiler.l

compiler.tab.c: compiler.y
	./bison/bin/bison -d -v compiler.y

compiler: compiler.tab.c lex.yy.c symbols.c symbols.h
	gcc -o compiler lex.yy.c compiler.tab.c symbols.c libfl.a bison/lib/liby.a

test: compiler
	./compiler < test.c


