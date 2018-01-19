%include "io.inc"

%define ARRAY_SIZE    10

section .data
    byte_array dd -8, 19, 12, 3, -6, 200, 128, 19, 78, 102

section .text
global CMAIN
CMAIN:
    mov ecx, ARRAY_SIZE     ; Use ecx as loop counter.
    xor eax, eax            ; Use eax to store the sum.
    xor edx, edx 
    xor ebx, ebx
    ;write your code here
    add_byte_array_element:
        mov edx, dword [byte_array + 4 * (ecx - 1)]
        cmp edx, 0
        jge positive
        jmp negative
        positive:
            inc ebx
        negative:
            loop add_byte_array_element
    PRINT_STRING "Numarul de numere pozitive: "
    PRINT_UDEC 4, ebx
    NEWLINE
    mov ecx, ARRAY_SIZE
    sub ecx, ebx
    PRINT_STRING "Numarul de numere negative: "
    PRINT_UDEC 4, ecx
    NEWLINE
    mov eax, 0
    NEWLINE
    ret