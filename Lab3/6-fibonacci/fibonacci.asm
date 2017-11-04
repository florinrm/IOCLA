%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov eax, 7       ; vrem sa aflam al N-lea numar; N = 7
    ; TODO: calculati al N-lea numar fibonacci (f(0) = 0, f(1) = 1)
    mov ebx, 0
    mov ecx, 1
    add ebx, ecx
    fibo:
        add ebx, ecx
        xchg ebx, ecx
        sub eax, 1
        cmp eax, 1
        jnz fibo
    PRINT_DEC 4, ebx
    ret