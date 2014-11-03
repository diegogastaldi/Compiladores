.text

.comm x, 8

.globl	method
.type	method, @function 
method: 
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

mov 		x(%rip), %r10 
mov		%r10, -24(%rbp) 

cmpq		$0, -16(%rbp)
je 		.L0
cmpq		$0, -24(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov		$0, %r10
mov		%r10, x(%rip)

mov 		$0, %rax
leave
ret

