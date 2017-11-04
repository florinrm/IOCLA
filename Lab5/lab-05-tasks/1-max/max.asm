%include "io.inc"

section .text
global CMAIN
CMAIN:
    ; cele doua numere se gasesc in eax si ebx
    mov eax, 4
    mov ebx, 1 
    cmp eax, ebx
    jle maximum
        PRINT_DEC 4, eax ; afiseaza minimul
    NEWLINE

    ret
    ; TODO: aflati maximul folosind doar o instructiune de salt si push/pop
    maximum:
        push eax
        mov eax, ebx
        PRINT_DEC 4, eax ; afiseaza minimul
        pop eax
        NEWLINE
        ret
        
