.SL14: 
		.string "%f" 

.FL13: 
		.float 2.0 

.FL12: 
		.float 0.0 

.FL11: 
		.float 0.0 

.FL10: 
		.float 0.0 

.FL9: 
		.float 0.0 

.FL8: 
		.float 0.0 

.FL7: 
		.float 0.0 

.FL6: 
		.float 0.0 

.FL5: 
		.float 0.0 

.FL4: 
		.float 0.0 

.FL3: 
		.float 0.0 

.FL2: 
		.float 0.0 

.FL1: 
		.float 0.0 

.FL0: 
		.float 0.0 

.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 43), $0 
movss 		%xmm0, -8(%rbp) 
movss 		%xmm1, -16(%rbp) 
movss 		%xmm2, -24(%rbp) 
movss 		%xmm3, -32(%rbp) 
movss 		%xmm4, -40(%rbp) 
movss 		%xmm5, -48(%rbp) 
movss 		%xmm6, -56(%rbp) 
movss 		%xmm7, -64(%rbp) 
mov 		8(%rbp), %r10
mov 		%r10, -72(%rbp) 
mov 		16(%rbp), %r10
mov 		%r10, -80(%rbp) 
mov 		24(%rbp), %r10
mov 		%r10, -88(%rbp) 
mov 		32(%rbp), %r10
mov 		%r10, -96(%rbp) 
mov 		40(%rbp), %r10
mov 		%r10, -104(%rbp) 
mov 		48(%rbp), %r10
mov 		%r10, -112(%rbp) 

mov	.FL0(%rip), %r10
mov	%r10, -240(%rbp)

mov		-240(%rbp), %r10
mov		%r10, -120(%rbp)

mov	.FL1(%rip), %r10
mov	%r10, -248(%rbp)

mov		-248(%rbp), %r10
mov		%r10, -112(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -104(%rbp)

mov	.FL3(%rip), %r10
mov	%r10, -264(%rbp)

mov		-264(%rbp), %r10
mov		%r10, -96(%rbp)

mov	.FL4(%rip), %r10
mov	%r10, -272(%rbp)

mov		-272(%rbp), %r10
mov		%r10, -88(%rbp)

mov	.FL5(%rip), %r10
mov	%r10, -280(%rbp)

mov		-280(%rbp), %r10
mov		%r10, -80(%rbp)

mov	.FL6(%rip), %r10
mov	%r10, -288(%rbp)

mov		-288(%rbp), %r10
mov		%r10, -72(%rbp)

mov	.FL7(%rip), %r10
mov	%r10, -296(%rbp)

mov		-296(%rbp), %r10
mov		%r10, -64(%rbp)

mov	.FL8(%rip), %r10
mov	%r10, -304(%rbp)

mov		-304(%rbp), %r10
mov		%r10, -56(%rbp)

mov	.FL9(%rip), %r10
mov	%r10, -312(%rbp)

mov		-312(%rbp), %r10
mov		%r10, -48(%rbp)

mov	.FL10(%rip), %r10
mov	%r10, -320(%rbp)

mov		-320(%rbp), %r10
mov		%r10, -40(%rbp)

mov	.FL11(%rip), %r10
mov	%r10, -328(%rbp)

mov		-328(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL12(%rip), %r10
mov	%r10, -336(%rbp)

mov		-336(%rbp), %r10
mov		%r10, -24(%rbp)

mov	.FL13(%rip), %r10
mov	%r10, -344(%rbp)

mov		-344(%rbp), %r10
mov		%r10, -16(%rbp)

movss		-16(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 26), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq		$0, %r10
mov		%r10, -48(%rbp)

movq		$0, %r10
mov		%r10, -56(%rbp)

movq		$0, %r10
mov		%r10, -64(%rbp)

movq		$0, %r10
mov		%r10, -72(%rbp)

movq		$0, %r10
mov		%r10, -80(%rbp)

movq		$0, %r10
mov		%r10, -88(%rbp)

movq		$0, %r10
mov		%r10, -96(%rbp)

movq		$0, %r10
mov		%r10, -104(%rbp)

movq		$0, %r10
mov		%r10, -112(%rbp)

movq		$0, %r10
mov		%r10, -120(%rbp)

movss		-16(%rbp), %xmm0

movss		-24(%rbp), %xmm1

movss		-32(%rbp), %xmm2

movss		-40(%rbp), %xmm3

movss		-48(%rbp), %xmm4

movss		-56(%rbp), %xmm5

movss		-64(%rbp), %xmm6

movss		-72(%rbp), %xmm7

mov		-80(%rbp), %r10
mov		%r10, -136(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -144(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -152(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -160(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -168(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -176(%rbp)

mov 		$0, %rax 
call 	inc
mov 	%rax, -184(%rbp) 

mov		-184(%rbp), %r10
mov		%r10, -128(%rbp)

mov		$.SL14, %r10
mov	 	%r10, %rdi

movss		-128(%rbp), %xmm0

mov 		$0, %rax 
call 	printf
mov 	%rax, -200(%rbp) 

mov 		$0, %rax
leave
ret

