; hello_world.asm
;
; Author: 0xdaemon

global _start


section .text:


_start:
    mov eax, 0x4            ; use the write syscall (0x4), eax stands for acumulator
    mov ebx, 1              ; use stdout as the fd (file descripor), ebx stand for
    mov ecx, message        ; use the message as the buffer
    mov edx, message_length ; supply the lenght
    int 0x80                ; interruption, (0x80 stands for syscall)

    mov eax, 0x1
    mov ebx, 0              ; as return 0
    int 0x80

section .data:
    message: db "Hello World!", 0xA ;db is for define bytes, 0xA  is for a new line character
    message_length: equ $-message
