.SL1: 
		.string "%f" 

.FL0: 
		.float 3.0 

.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 4), $0 

movss 		%xmm0, -8(%rbp) 

movss		-8(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


mov	.FL0(%rip), %r10
mov	%r10, -16(%rbp)

movss		-16(%rbp), %xmm0

mov 		$1, %rax 

call 	pruAritmetica
movss 	%xmm0, -24(%rbp) 

mov		$.SL1, %r10
mov	 	%r10, %rdi

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

