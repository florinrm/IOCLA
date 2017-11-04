%include "io.inc"

section .data
    myString: db "Hello, World!",0
    otherString: db "Goodbye, World!",0

section .text
global CMAIN
CMAIN:
    mov ecx, 6                 ; N = valoarea registrului ecx
    mov eax, 1
    mov ebx, 1
    cmp eax, ebx
    je print                   ; TODO1: eax > ebx?
    ret
print:
    PRINT_STRING myString
    NEWLINE
    sub ecx, 1
    jnz print
    
    PRINT_STRING otherString
    NEWLINE

    ret
