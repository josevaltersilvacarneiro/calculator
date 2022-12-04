global _start

section .data
message: db 'hello, world', 10

section .text
_start:
	mov	rax, 1		; The system call number must be stored in rax
	mov	rdi, 1		; argument #1 in rdi: where write (descritor) ?
	mov	rsi, message	; argument #2 in rsi: where start the string  ?
	mov	rdx, 14		; argument #3 in rdx: How much bytes must be  ?
	syscall			; this instruction mades a system cal
