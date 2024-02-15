CFLAGS = -Wall -Wextra -std=gnu11 -pedantic

main: main.c
	gcc $(CFLAGS) -o main main.c
debug: main.c
	gcc $(CFLAGS) -o main main.c
	valgrind --leak-check=full --show-leak-kinds=all ./main
