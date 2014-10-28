.SL2: 
		.string "%f" 

.FL1: 
		.float 0 

.FL0: 
		.float 2.6 

.text

.comm B, 8

.globl	main
.type	main, @function 
main: 
enter   $(8 * 7), $0 

mov		$0, %r10
mov		%r10, B(%rip)

mov	.FL0(%rip), %r10
mov	%r10, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movss		-16(%rbp), %xmm1 
movss		.FL1(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -32(%rbp) 

mov		-32(%rbp), %r10
mov		%r10, B(%rip)

mov 		B(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		$.SL2, %r10
mov	 	%r10, %rdi

movss		-48(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

