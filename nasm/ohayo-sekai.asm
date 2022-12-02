; ohayo-sekai.asm
;
; by akumaru

global_start

section .text:

_start:
    mov eax, 0x4 	; use the write syscall
    mov ebx, 1
    mov ecx, message
    mov edx, message_length
    int 0x80

    mov eax, 0x1
    mov ebx, 0
    int 0x80 

section .data:
    message: db "Ohayo, Sekai!", 0xA
    message_length equ $-message
