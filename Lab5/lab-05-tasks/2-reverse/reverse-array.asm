%include "io.inc"

section .data

%define ARRAY_LEN 7

    input dd 122, 184, 199, 242, 263, 845, 911
    output times ARRAY_LEN dd 0

section .text
global CMAIN
CMAIN:
    push ARRAY_LEN
    pop ecx
    ; TODO push the elements of the array on the stack
    putting_array:
        push dword [input + 4 * ecx - 4]
        loop putting_array
        push ARRAY_LEN
        pop ecx
    reversing:
        pop dword [output + 4 * ecx - 4]
        loop reversing
    ; TODO retrieve the elements (pop) from the stack into the output array

    PRINT_STRING "Reversed array:"
    NEWLINE
    xor ecx, ecx
print_array:
    PRINT_UDEC 4, [output + 4 * ecx]
    NEWLINE
    inc ecx
    cmp ecx, ARRAY_LEN
    jb print_array

    xor eax, eax
    ret
