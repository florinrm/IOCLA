extern printf

section .data
    nr: dq 0x000000FFABCD23AA
    len: dd $-nr
    format_str: db "This is it: %llx",10,0
    res: dq 0

section .text
global main
main:
    mov ebp, esp; for correct debugging

    push ebp
    mov ebp, esp
    xor eax, eax
    xor ebx, ebx
    xor edx, edx

   ; TODO multiply nr by 2 without using mul
    mov eax, [nr]
    shl eax, 1
    adc ebx, 0
    
    mov [res], eax
    
    mov eax, [nr + 4]
    shl eax, 1
    add eax, ebx
    
    mov [res + 4], eax

    mov eax, [res]
    mov edx, [res+4]
    

    push edx
    push eax
    push format_str
    call printf
    add esp, 12

    leave
    ret
