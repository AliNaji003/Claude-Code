CC      = gcc
CFLAGS  = -Wall -Wextra -std=c11 -g

QUELLEN  = $(wildcard lektionen/*.c) $(wildcard uebungen/*.c)
PROGRAMME = $(patsubst %.c,bin/%,$(notdir $(QUELLEN)))

vpath %.c lektionen uebungen

all: $(PROGRAMME)

bin/%: %.c | bin
	$(CC) $(CFLAGS) -o $@ $<

bin:
	mkdir -p bin

clean:
	rm -rf bin

.PHONY: all clean
