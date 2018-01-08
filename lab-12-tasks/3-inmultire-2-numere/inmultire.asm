extern printf

section .data
    nr1: db 0x90, 0x02 ; =656
    nr2: db 0x04
    result: dw 0
    format_str db "%d",10,0

section .text
global main
main:
    push ebp
    mov ebp, esp

    ; TODO multiply nr1 by nr2 using only 8bit registers
    ;      store the result in the "result" variable
    
    xor eax, eax
    xor edx, edx
    
    mov dl, byte[nr1]
    mov al, byte[nr2]
    mul dl
   
    mov byte[result], al
    mov dh, ah
    
    mov dl, byte[nr1 + 1]
    mov al, byte[nr2]
    mul dl
    
    add al, dh
    mov [result + 1], al

   
    mov ax, [result]
    push eax
    push format_str
    call printf ; should be 2624
    add esp, 8

    leave
    ret
