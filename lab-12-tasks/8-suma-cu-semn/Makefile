# IOCLA 2016
# USO remembers

BIN=suma_semn
CC=gcc
CFLAGS=-m32 -masm=intel
ASM=nasm
ASMFLAGS=-f elf32

all: $(BIN)

$(BIN):  $(BIN).o
	$(CC) $(CFLAGS) -o $@ $^

$(BIN).o: $(BIN).asm
	$(ASM) $(ASMFLAGS) $< -o $@

clean:
	rm -f *.o $(BIN)
