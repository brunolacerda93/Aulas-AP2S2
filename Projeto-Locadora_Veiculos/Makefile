all: Program.c tools.h
	gcc Program.c -o Program.out
	./Program.out

val: Program.c tools.h
	gcc Program.c -o Program.out
	valgrind --leak-check=full --track-origins=yes ./Program.out