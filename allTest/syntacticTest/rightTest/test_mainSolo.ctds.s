.text

.globl	main
.type	main, @function 
main: 
enter   $(8 * 10), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq 	$1, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -32(%rbp)

cmpq		$0, -16(%rbp)
je 		.L0
cmpq		$0, -32(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -64(%rbp)

cmpq		$0, -64(%rbp)
jne 		.L2
cmpq		$0, -32(%rbp)
je 		.L3
.L2: 
mov		$1, %r10
jmp 		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

