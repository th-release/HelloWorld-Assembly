section .data
	text	db	"Hello, Assemble World!", 10

section .text
	global _start

_start:
	call _printHello

	mov rax, 60
	mov rdi, 0
	syscall
_printHello:
	mov rax,1
	mov rdi,1
	mov rsi, text	; TEXT 
	mov rdx, 22	; TEXT Length
	syscall
