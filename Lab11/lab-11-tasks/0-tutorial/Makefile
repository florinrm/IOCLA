CC=gcc
CFLAGS=-m32 -masm=intel
ASM=nasm
ASMFLAGS=-f elf32

all: tutorial

tutorial:  tutorial.o
	$(CC) $(CFLAGS) -o $@ $^

tutorial.o: tutorial.asm
	$(ASM) $(ASMFLAGS) $< -o $@

clean:
	rm -f *.o tutorial
