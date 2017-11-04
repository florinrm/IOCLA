%include "io.inc"

%define ARRAY_SIZE 13
%define DECIMAL_PLACES 5

section .data
    num_array dw 76, 12, 65, 19, 781, 671, 431, 761, 782, 12, 91, 25, 9
    array_sum_prefix db "Sum of numbers: ",0
    array_mean_prefix db "Numbers mean: ",0
    decimal_point db ".",0

section .text
global CMAIN
CMAIN:
    xor eax, eax
    mov ecx, ARRAY_SIZE
    add_word_array_element:
        mov dx, word [num_array + 2* (ecx - 1)]
        add eax, edx
        loop add_word_array_element ; Decrement ecx, if not zero, add another element.

    ; TODO1 - compute the sum of the vector numbers - store it in ax

    PRINT_STRING array_sum_prefix
    PRINT_UDEC 2, ax
    NEWLINE
    xor dx, dx
    mov bx, ARRAY_SIZE
    ; TODO2 - compute the quotient of the mean
    div bx
    PRINT_STRING array_mean_prefix
    PRINT_UDEC 2, ax
    PRINT_STRING decimal_point

    mov ecx, DECIMAL_PLACES
compute_decimal_place:

    ; TODO3 - compute the current decimal place - store it in ax
    
    PRINT_UDEC 2, ax
    dec ecx
    cmp ecx, 0
    jg compute_decimal_place

    NEWLINE

    xor eax, eax
    ret
