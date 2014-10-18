.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 8), $0 
mov 		%rdi, -16(%rbp) 

movq 	$1, -32(%rbp)

movq 	$3, -40(%rbp)

mov		-32(%rbp), %rax
cmp		-40(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -48(%rbp)

movq 	$0, -56(%rbp)

cmpq		$0, -48(%rbp)
je 		.L0
cmpq		$0, -56(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -64(%rbp)

mov		-64(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 1), $0 

mov 		$0, %rax
leave
ret

