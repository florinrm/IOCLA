%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov eax, 211     ; to be broken down into powers of 2
    mov ebx, 1       ; stores the current power
    mov ecx, 8
    ;test eax, ebx
    ;jnz putere
    ;jz not_putere
    ; TODO generate and print the powers of 2
    putere:
        test eax, ebx
        jz not_putere
        PRINT_DEC 4, ebx
        NEWLINE
    not_putere:
       shl ebx, 1
       sub ecx, 1
       test ecx, ecx
       jnz putere
    xor eax, eax
    ret