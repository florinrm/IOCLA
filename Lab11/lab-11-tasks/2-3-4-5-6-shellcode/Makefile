CC=gcc
CFLAGS=-m32 -masm=intel
ASM=nasm
ASMFLAGS=-f elf32

all: shellcode

shellcode:  shellcode.o
	$(CC) $(CFLAGS) -o $@ $^

shellcode.o: shellcode.asm
	$(ASM) $(ASMFLAGS) $< -o $@

clean:
	rm -f *.o shellcode
