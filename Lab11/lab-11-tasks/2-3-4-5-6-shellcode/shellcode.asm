extern gets
extern puts

section .data
greeting db "Hello there! What is your name?",0
honeypot db "You shouldn't be here!",0
great db "Mad skills, yo!",0
not_great1 db "Not today, son.",0
not_great2 db "Not today either, son.",0
not_great3 db "How about no.",0
amazing db "B3y0nd G0dl1k3!",0

section .text
global main

main:
    push ebp
    mov ebp, esp
    push greeting
    call puts
    pop eax
    call vuln
    leave
    ret
    call flag1
    call flag2
vuln:
    push ebp
    mov ebp, esp
    sub esp, 56
    sub esp, 12
    lea eax, [ebp-48]
    push eax
    call gets
    add esp, 16
    leave
    ret
flag1:
    push ebp
    mov ebp, esp
    push honeypot
    call puts
    pop eax
    leave
    ret
flag2:
    push ebp
    mov ebp, esp
    sub esp, 8
    mov eax, [ebp+8]
    imul eax, [ebp+12]
    mov edx, eax
    mov eax, [ebp+16]
    add eax, edx
    cmp eax, 4919
    jne bye1
    mov edx, [ebp+8]
    mov eax, [ebp+12]
    add eax, edx
    cmp eax, 311
    jne bye2
    mov eax, [ebp+8]
    sub eax, [ebp+12]
    cmp eax, 289
    jne bye3
    sub esp, 12
    push great
    call puts
    add esp, 16
    leave
    ret
bye1:
    push not_great1
    call puts
    leave
    ret
bye2:
    push not_great2
    call puts
    leave
    ret
bye3:
    push not_great3
    call puts
    leave
    ret
