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
movss 		%xmm1, -16(%rbp) 

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
movss 		%xmm1, -16(%rbp) 

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
movss 		%xmm1, -16(%rbp) 

movss		-24(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -48(%rbp) 

movss		-48(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 16), $0 

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
xorps		%xmm1, %xmm0 
movss		%xmm0, -56(%rbp) 

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL3(%rip), %r10
mov	%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -24(%rbp)

movss		-32(%rbp), %xmm0

movss		-16(%rbp), %xmm1

mov 		$0, %rax 
call 	resta
mov 	%rax, -72(%rbp) 

movss		-16(%rbp), %xmm0

movss		-24(%rbp), %xmm1

mov 		$0, %rax 
call 	div
mov 	%rax, -88(%rbp) 

movss		-72(%rbp), %xmm0

movss		-88(%rbp), %xmm1

mov 		$0, %rax 
call 	sum
mov 	%rax, -104(%rbp) 

mov		$.SL4, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0

mov 		$0, %rax 
call 	printf
mov 	%rax, -120(%rbp) 

mov 		$0, %rax
leave
ret

