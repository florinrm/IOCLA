extern puts
extern gets

section .data
msg: db "What is your name?",0

section .text
global main
main:
    push ebp
    mov ebp, esp
    push msg
    call puts
    call read_input
    leave
    ret
read_input:
    push ebp
    mov ebp, esp
    sub esp, 40
    sub esp, 12
    lea eax, [ebp-28]
    push eax
    call gets
    add esp, 16
    leave
    ret
