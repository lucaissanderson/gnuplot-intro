SHELL := /bin/sh
CC = clang
CFLAGS = -Wall -Wpedantic -Werror -Wextra

all: monte_carlo riemann format

monte_carlo: monte_carlo.o
	$(CC) -o monte_carlo monte_carlo.o

monte_carlo.o: monte_carlo.c
	$(CC) $(CFLAGS) -c monte_carlo.c

riemann: riemann.o
	$(CC) -o riemann riemann.o -lm

riemann.o: riemann.c
	$(CC) $(CFLAGS) -c riemann.c

clean:
	rm -f monte_carlo riemann *.o

format:
	clang-format -i -style=file *.[ch]
