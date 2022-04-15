section .data
	sentence db "hello", 10        ; new const with text
	size equ $ - sentence	       ; size of the sentence

section .text
global _start                          ; difine the start function
_start:	                               ; start the asm program
	call _print                    ; call print function
	call _exit	               ; call exit function

_print:
	mov rax, 1
	mov rdi, 1
	mov rsi, sentence
	mov rdx, size
	syscall
	ret                           ; return 

_exit:
	mov rax, 60
	mov rdi, 0
	syscall

