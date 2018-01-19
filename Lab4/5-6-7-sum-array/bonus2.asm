%include "io.inc"

%define ARRAY_SIZE    10

section .data
    byte_array dd 8, 19, 12, 3, 6, 200, 128, 19, 78, 102

section .text
global CMAIN
CMAIN:
    mov ecx, ARRAY_SIZE     ; Use ecx as loop counter.
    xor eax, eax            ; Use eax to store the sum.
    xor edx, edx 
    mov ebx, 0
    add_byte_array_element:
        mov edi, 2
        mov eax, dword [byte_array + 4 * ecx - 4]
        div edi
        cmp edx, 0
        je par
        jmp impar
        par:
            inc ebx
        impar:
            loop add_byte_array_element
    PRINT_STRING "Numarul de numere pare: "
    PRINT_UDEC 4, ebx
    NEWLINE
    mov ecx, ARRAY_SIZE
    sub ecx, ebx
    PRINT_STRING "Numarul de numere impare: "
    PRINT_UDEC 4, ecx
    NEWLINE
    mov eax, 0
    NEWLINE
    ret