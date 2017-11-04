%include "io.inc"

%define NUM 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands
    mov ecx, NUM
push_nums:
    sub esp, 4
    mov [esp], ecx
    ;push ecx
    loop push_nums

    sub esp, 4
    mov [esp], dword 0
    ;push 0
    ;push "mere"
    sub esp, 4
    mov [esp], dword "mere"
    ;push "are "
    sub esp, 4
    mov [esp], dword "are "
    ;push "Ana "
    sub esp, 4
    mov [esp], dword "Ana "

    PRINT_STRING [esp]
    NEWLINE
    mov ebx, esp
    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]
    looping:
        PRINT_STRING "0x"
        PRINT_HEX 4, ebx
        PRINT_STRING ": 0x"
        PRINT_HEX 4, [ebx]
        NEWLINE
        add ebx, 4
        cmp ebx, ebp
        jne looping 

    ; TODO 3: print the string
    PRINT_STRING [esp]
    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
