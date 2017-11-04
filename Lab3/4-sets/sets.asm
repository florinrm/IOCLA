%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139 
    mov ebx, 169
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE
    PRINT_DEC 4, ebx ; afiseaza cea de-a doua multime
    NEWLINE

    ; TODO1: reuniunea a doua multimi
    or eax, ebx
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE
    PRINT_DEC 4, ebx ; afiseaza cea de-a doua multime
    NEWLINE

    ; TODO2: adaugarea unui element in multime
    or eax, 0b00100
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE

    ; TODO3: intersectia a doua multimi
    and eax, ebx

    ; TODO4: complementul unei multimi
    not eax
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE

    ; TODO5: eliminarea unui element
    mov ecx, 8
    not ecx
    and eax, ecx
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE

    ; TODO6: diferenta de multimi EAX-EBX
    mov ecx, eax
    and ecx, ebx
    not ecx
    and eax, ecx
    
    ;xor eax, ebx
    
    ;xor eax, eax
    ret
