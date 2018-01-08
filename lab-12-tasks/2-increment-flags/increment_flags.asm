;%include "io.inc"
extern printf

section .data
    nr: db 0x88, 0x1
    format_str db "%d",10,0

section .text
global main
main:

   push ebp
   mov ebp, esp
   xor eax,eax

   ;TODO modify code so that the infinite loop stops and prints 512

for:
   add byte [nr], 1
   jnc for

   inc byte [nr + 1]

   mov ax, [nr]

   push eax
   push format_str
   call printf ; should be 512
   add esp, 8

   leave
   ret
