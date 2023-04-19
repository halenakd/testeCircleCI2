CC=gcc
CFLAGS=-Wall -Wextra -pedantic -std=c99

SRC=helloworld.c
OBJ=$(SRC:.c=.o)

TARGET=myproject

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(TARGET) $(OBJ)
