CFLAGS=-std=c11 -g -fno-common

classic: main.o
	$(CC) -o classic main.o $(LDFLAGS)

test: classic
	./test.sh

clean:
	rm -f classic *.o *~ tmp*

.PHONY: test clean
