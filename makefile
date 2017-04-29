all: lexer

lex.yy.c: lexer.l
	lex lexer.l  

lexer: lex.yy.c
	g++ lexer lex.yy.c -ll

test: input
	cat input | ./lexer

clean:
	-rm -f lex.yy.c
	-rm -f lexer

