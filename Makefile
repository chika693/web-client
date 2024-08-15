CC=gcc
CFLAGS=-g -Wall
LINKER=$(CC) $(CFLAGS) -o
OTHER_FLAGS=
SRC=src
OBJ=obj
BINDIR=build
SRCS=$(wildcard $(SRC)/*.c)
OBJS=$(patsubst $(SRC)/*.c, $(OBJ)/%.c, $(SRCS))
BIN=$(BINDIR)/web_client.exe


all:$(BIN)

$(BIN): $(OBJS)
	$(LINKER) $@ $(OBJS) 


$(OBJ)/%.o: $(SRC)/%.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	rm -rf $(OBJ)/* $(BINDIR)/*
