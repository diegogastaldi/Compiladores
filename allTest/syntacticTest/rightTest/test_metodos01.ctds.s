.FL0: 
		.float 8.0 

.text

.comm c, 8

.globl	alo
.type	alo, @function 
alo: 
enter   $(8 * 6), $0 
mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		0(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, 0(%rbp)

mov 		$0, %rax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(8 * 6), $0 
mov 		%rdi, -8(%rbp) 

mov		0(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	alo

movq 	$1, -32(%rbp)

mov		0(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, 0(%rbp)

mov		0(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 9), $0 

mov		$0, %r10
mov		%r10, c(%rip)

movq 	$7, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, c(%rip)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	alo2
mov 	%rax, -40(%rbp) 

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$3, -48(%rbp)

mov		-48(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	alo2
mov 	%rax, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		$0, %rax
leave
ret

