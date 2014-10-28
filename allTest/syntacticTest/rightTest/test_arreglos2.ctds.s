.SL2: 
		.string "%f" 

.FL1: 
		.float 0 

.FL0: 
		.float 2.6 

.text

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

mov	.FL0(%rip), %r10
mov	%r10, -24(%rbp)

movss		-24(%rbp), %xmm1 
movss		.FL1(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -32(%rbp) 

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL2, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

