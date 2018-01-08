extern printf

section .data
    number dd 1024
    put2 db 4
    format_str db "Result: %d",10,0

section .text
global main
main:

    push ebp
    mov ebp, esp

    mov eax,[number]
    mov cl, [put2]

    ; TODO divide number to 2 to put2
    shr eax, cl
    shr eax, cl
    shr eax, 1

    push eax
    push format_str
    call printf
    add esp, 8

    leave
    ret
