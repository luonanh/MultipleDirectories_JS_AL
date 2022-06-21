CC=gcc
CFLAGS=-g -Wall -std=c99
OBJS=obj/allocator.o obj/memtest.o
BIN=bin/main
SUBMITNAME=project.zip

all:$(BIN)

bin/main:$(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

obj/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) -r bin/* obj/* $(SUBMITNAME)

submit:
	$(RM) $(SUBMITNAME)
	zip $(SUBMITNAME) $(BIN)
