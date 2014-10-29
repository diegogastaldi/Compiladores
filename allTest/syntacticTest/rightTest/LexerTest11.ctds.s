.SL1: 
		.string "%f" 

.FL0: 
		.float 2.0 

.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 4), $0 
movss 		%xmm0, -8(%rbp) 

mov	.FL0(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -8(%rbp)

movss		-8(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 

movss		-16(%rbp), %xmm0

mov 		$1, %rax 

call 	inc
movss 	%xmm0, -24(%rbp) 

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL1, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

