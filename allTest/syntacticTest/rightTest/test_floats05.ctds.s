.SL4: 
		.string "anidandofuncionesflotantes" 

.FL3: 
		.float 3.5698 

.FL2: 
		.float 0 

.FL1: 
		.float 2.5 

.FL0: 
		.float 6.982 

.text

.globl	div
.type	div, @function 
div: 
enter   $(8 * 6), $0 
movss 		%xmm0, -8(%rbp) 
cvtps2pd	%xmm0, %xmm0 
movss 		%xmm1, -16(%rbp) 
cvtps2pd	%xmm0, %xmm0 

movss		-24(%rbp), %xmm0 
divss		-16(%rbp), %xmm0 
movss		%xmm0, -48(%rbp) 

movss		-48(%rbp), %xmm0
leave
ret

.globl	resta
.type	resta, @function 
resta: 
enter   $(8 * 6), $0 
movss 		%xmm0, -8(%rbp) 
cvtps2pd	%xmm0, %xmm0 
movss 		%xmm1, -16(%rbp) 
cvtps2pd	%xmm0, %xmm0 

movss		-24(%rbp), %xmm0 
subss		-16(%rbp), %xmm0 
movss		%xmm0, -48(%rbp) 

movss		-48(%rbp), %xmm0
leave
ret

.globl	sum
.type	sum, @function 
sum: 
enter   $(8 * 6), $0 
movss 		%xmm0, -8(%rbp) 
cvtps2pd	%xmm0, %xmm0 
movss 		%xmm1, -16(%rbp) 
cvtps2pd	%xmm0, %xmm0 

movss		-24(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -48(%rbp) 

movss		-48(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 13), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov	.FL1(%rip), %r10
mov	%r10, -48(%rbp)

movss		-48(%rbp), %xmm1 
movss		.FL2(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -56(%rbp) 

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL3(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

movss		-32(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

movss		-16(%rbp), %xmm1
cvtps2pd	%xmm0, %xmm0 

mov 		$2, %rax 

call 	resta
movss 	%xmm0, -80(%rbp) 

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

movss		-24(%rbp), %xmm1
cvtps2pd	%xmm0, %xmm0 

mov 		$2, %rax 

call 	div
movss 	%xmm0, -88(%rbp) 

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

movss		-88(%rbp), %xmm1
cvtps2pd	%xmm0, %xmm0 

mov 		$2, %rax 

call 	sum
movss 	%xmm0, -96(%rbp) 

mov		$.SL4, %r10
mov	 	%r10, %rdi

movss		-96(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

