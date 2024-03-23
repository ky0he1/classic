CFLAGS=-std=c11 -g -fno-common
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

classic: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(OBJS): classic.h

test: classic
	./test.sh

clean:
	rm -f classic *.o *~ tmp*

.PHONY: test clean
