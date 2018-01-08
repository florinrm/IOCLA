;%include "io.inc"
extern printf

section .data
    v: db 12, 56, 93, 44, 55, 23, 44, 71, 43
    len: dd $-v
    sum: dw 0
    format_str db "%d",10,0

section .text
global main
main:
    push ebp
    mov ebp, esp
    mov ecx, dword[len]
    xor eax, eax
    xor ebx, ebx
    xor edx, edx
    
    ; TODO sum vector of BYTE elements into "sum" WORD variable
    xor eax, eax
    mov ax, [sum]
    
    looping:
        add al, byte [v + ecx - 1]
        adc ah, 0
        sub ecx, 1
        cmp ecx, 0
        jge looping

    ;mov [sum], bh

    push eax
    push format_str
    call printf ; should be 441
    add esp, 8

    leave
    ret
