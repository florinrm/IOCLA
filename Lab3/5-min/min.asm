%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;cele doua numere se gasesc in eax si ebx
    mov eax, 4
    mov ebx, 1
    ; TODO: aflati minimul
    cmp eax, ebx
    jl print_1
    xchg eax, ebx
    print_1:
        PRINT_DEC 4, eax ; afiseaza minimul
        NEWLINE
    ret