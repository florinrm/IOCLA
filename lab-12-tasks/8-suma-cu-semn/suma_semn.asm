extern printf

section .data
    v: dB 12, -56, 93, 44, 55, -23, 44, 71, 43
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
        mov bh, byte [v + ecx - 1]
        cmp bh, 0
        jle lel
        jmp feck
        lel:
            mov bl, bh
            sub bh, bl
            sub bh, bl
            sub al, bh
            jmp meh
        feck:
        add al, bh
        meh:
        adc ah, 0
        sub ecx, 1
        cmp ecx, 0
        jge looping
       
    push eax
    push format_str
    call printf ; should be 283
    add esp, 8

    leave
    ret
