extern printf

section .data
    nr1: dd 4444123
    nr2: dw 10
    result: dd 0
    format_str db "%d",10,0

section .text
global main
main:
    push ebp
    mov ebp, esp

    ; TODO divide nr1 by nr2
    ; by using registers of size up to 16 bits and
    ; store the result in the "result" variable

    mov eax, [result]

    push eax
    push format_str
    call printf ; should be 444412
    add esp, 8

    leave
    ret
