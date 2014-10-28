.FL2: 
		.float 4.0 

.FL1: 
		.float 3.0 

.SL0: 
		.string "%f" 

.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 6), $0 
movss 		%xmm0, -8(%rbp) 
movss 		%xmm1, -16(%rbp) 

movss		-8(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

mov	.FL1(%rip), %r10
mov	%r10, -16(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -24(%rbp)

movss		-16(%rbp), %xmm0

movss		-24(%rbp), %xmm1

mov 		$2, %rax 

call 	pruAritmetica
movss 	%xmm0, -32(%rbp) 

mov		$.SL0, %r10
mov	 	%r10, %rdi

movss		-32(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

