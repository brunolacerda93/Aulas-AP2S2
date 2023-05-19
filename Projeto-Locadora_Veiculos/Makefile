all: Program.c tools.h
	gcc Program.c -o Program.out
	./Program.out

Val: Program.c tools.h
	valgrind --leak-check=full --track-origin=yes
	./Program.out