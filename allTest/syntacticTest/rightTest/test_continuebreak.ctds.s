.SL15: 
		.string "%f" 

.FL14: 
		.float -1.0 

.FL13: 
		.float 5751.7656 

.FL7: 
		.float 0.0 

.FL5: 
		.float 2.0 

.FL4: 
		.float 1.0 

.FL1: 
		.float 23.0 

.FL0: 
		.float -1.0 

.text

.globl	pruContinue
.type	pruContinue, @function 
pruContinue: 
enter   $(8 * 22), $0 

movss 		%xmm0, -16(%rbp) 
movss 		%xmm1, -8(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$23, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -40(%rbp)

mov	.FL1(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL3: 

movq 	$0, -96(%rbp)

movss		-32(%rbp), %xmm0 
ucomiss		-96(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -104(%rbp) 

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.endWhileL2

mov	.FL4(%rip), %r10
mov	%r10, -112(%rbp)

movss		-32(%rbp), %xmm0 
subss		-112(%rbp), %xmm0 
movss		%xmm0, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL5(%rip), %r10
mov	%r10, -128(%rbp)

movss		-128(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -136(%rbp) 

movq 	$1, -144(%rbp)

mov		-144(%rbp), %r10
cmp 		-136(%rbp), %r10

jne 		.falseCondL6

mov	.FL7(%rip), %r10
mov	%r10, -144(%rbp)

	movss		-32(%rbp), %xmm0 
	ucomiss		-144(%rbp), %xmm0 
	jp	.L8 
	movss		-32(%rbp), %xmm0 
	ucomiss		-144(%rbp), %xmm0 
	je	.L9 
.L8: 
	movq		$1, %rax 
	jmp	.L10 
.L9: 
	movq		$0, %rax 
.L10: 
	mov		%rax, -152(%rbp) 

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.falseCondL11

movss		-48(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -160(%rbp) 

movss		-160(%rbp), %xmm0 
mulss		-8(%rbp), %xmm0 
movss		%xmm0, -168(%rbp) 

mov		-168(%rbp), %r10
mov		%r10, -48(%rbp)

.falseCondL11: 

jmp 		.beginWhileL3

jmp 		.endIfL12

.falseCondL6: 

mov	.FL13(%rip), %r10
mov	%r10, -160(%rbp)

mov		-160(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.endWhileL2

.endIfL12: 

jmp 		.beginWhileL3

.endWhileL2: 

mov	.FL14(%rip), %r10
mov	%r10, -144(%rbp)

movss		-144(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

movss		-16(%rbp), %xmm0

movss		-24(%rbp), %xmm1

mov 		$2, %rax 

call 	pruContinue
movss 	%xmm0, -32(%rbp) 

mov		$.SL15, %r10
mov	 	%r10, %rdi

movss		-32(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

