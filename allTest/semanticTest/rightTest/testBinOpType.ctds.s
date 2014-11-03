.FL0: 
		.float 1.0 

.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 20), $0 

movss 		%xmm0, -64(%rbp) 
movss 		%xmm1, -56(%rbp) 
movss 		%xmm2, -48(%rbp) 
movss 		%xmm3, -40(%rbp) 
movss 		%xmm4, -32(%rbp) 
movss 		%xmm5, -24(%rbp) 
movss 		%xmm6, -16(%rbp) 
movss 		%xmm7, -8(%rbp) 

mov	.FL0(%rip), %r10
mov	%r10, -144(%rbp)

movss		-64(%rbp), %xmm0 
addss		-144(%rbp), %xmm0 
movss		%xmm0, -152(%rbp) 

movss		-152(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

movss		-24(%rbp), %xmm0

movss		-24(%rbp), %xmm1

movss		-24(%rbp), %xmm2

movss		-24(%rbp), %xmm3

movss		-24(%rbp), %xmm4

movss		-24(%rbp), %xmm5

movss		-24(%rbp), %xmm6

movss		-24(%rbp), %xmm7

mov 		$8, %rax 

call 	inc
movss 	%xmm0, -32(%rbp) 

movss		-32(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -40(%rbp) 

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		$0, %rax
leave
ret

