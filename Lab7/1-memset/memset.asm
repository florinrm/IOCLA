%include "io.inc"

extern printf

%DEFINE LENGTH 20

section .data
    string db "Nunc tristique ante maximus, dictum nunc in, ultricies dui.", 0
    format db "String after memset:", 13, "%s", 13, 0
    char db 'a'

section .text
global CMAIN


memset:
    ; TODO implement memset function
    ; void *memset(void *s, int c, size_t n);
    ; fll n bytes of memory starting at s with the character c
    push ebp
    mov ebp, esp
    
    mov ecx, dword[ebp + 16]
    mov al, byte[ebp + 12]
    mov edi, dword[ebp + 8]
    
    rep stosb
    
    ;mov esp, ebp
    
    leave
    ret

CMAIN:
    push ebp
    mov ebp, esp
    
    ; initialize the char to memset with
    ; char in bl must be promoted to double-word ebx when passed on the stack
    xor ebx, ebx
    mov bl, [char]
    
    ; call the memset function - memset(string, c, LENGTH)
    push LENGTH
    push ebx
    push string
    call memset
    add esp, 12
    
    ; print the string
    push string
    push format
    call printf
    add esp, 8

    xor eax, eax
    leave
    ret