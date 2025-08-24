CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Werror -O2
TARGET = hello

all: $(TARGET)

$(TARGET): hello.c
	$(CC) $(CFLAGS) -o $@ $<

.PHONY: test clean
test: $(TARGET)
	bash run.sh

clean:
	rm -f $(TARGET) actual.txt expected.txt
