CC = gcc
CFLAGS = -Wall -Werror -Iinclude

SRC_DIR = src
LIB_DIR = lib

SRC = $(SRC_DIR)/darray.c
OBJ = $(SRC_DIR)/darray.o
LIB = $(LIB_DIR)/darray.a

all: $(LIB)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIB): $(OBJ)
	mkdir -p $(LIB_DIR)
	ar rcs $@ $^

clean:
	rm -f $(OBJ) $(LIB)

.PHONY: all clean
