.SL20: 
		.string "%f" 

.FL19: 
		.float 1.0 

.FL18: 
		.float 0 

.FL17: 
		.float 2.0 

.FL16: 
		.float 6752.0 

.FL15: 
		.float 0 

.FL14: 
		.float 1000.2343 

.FL8: 
		.float 0.0 

.FL6: 
		.float 2.0 

.FL5: 
		.float 1.0 

.FL2: 
		.float 23.0 

.FL1: 
		.float 0 

.FL0: 
		.float 1.0 

.text

.globl	pruContinue
.type	pruContinue, @function 
pruContinue: 
enter   $(8 * 30), $0 

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

movss		-72(%rbp), %xmm1 
movss		.FL1(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$23, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -40(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL4: 

movq 	$0, -104(%rbp)

movss		-32(%rbp), %xmm0 
ucomiss		-104(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -112(%rbp) 

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.endWhileL3

mov	.FL5(%rip), %r10
mov	%r10, -120(%rbp)

movss		-32(%rbp), %xmm0 
subss		-120(%rbp), %xmm0 
movss		%xmm0, -128(%rbp) 

mov		-128(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL6(%rip), %r10
mov	%r10, -136(%rbp)

movss		-136(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -144(%rbp) 

movq 	$1, -152(%rbp)

mov		-152(%rbp), %r10
cmp 		-144(%rbp), %r10

jne 		.falseCondL7

mov	.FL8(%rip), %r10
mov	%r10, -152(%rbp)

	movss		-32(%rbp), %xmm0 
	ucomiss		-152(%rbp), %xmm0 
	jp	.L9 
	movss		-32(%rbp), %xmm0 
	ucomiss		-152(%rbp), %xmm0 
	je	.L10 
.L9: 
	movq		$1, %rax 
	jmp	.L11 
.L10: 
	movq		$0, %rax 
.L11: 
	mov		%rax, -160(%rbp) 

movq 	$1, -168(%rbp)

mov		-168(%rbp), %r10
cmp 		-160(%rbp), %r10

jne 		.falseCondL12

movss		-48(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -168(%rbp) 

movss		-168(%rbp), %xmm0 
mulss		-8(%rbp), %xmm0 
movss		%xmm0, -176(%rbp) 

mov		-176(%rbp), %r10
mov		%r10, -48(%rbp)

.falseCondL12: 

jmp 		.beginWhileL4

jmp 		.endIfL13

.falseCondL7: 

mov	.FL14(%rip), %r10
mov	%r10, -184(%rbp)

movss		-184(%rbp), %xmm1 
movss		.FL15(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -192(%rbp) 

mov	.FL16(%rip), %r10
mov	%r10, -200(%rbp)

movss		-192(%rbp), %xmm0 
addss		-200(%rbp), %xmm0 
movss		%xmm0, -208(%rbp) 

mov		-208(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.endWhileL3

.endIfL13: 

jmp 		.beginWhileL4

.endWhileL3: 

mov	.FL17(%rip), %r10
mov	%r10, -216(%rbp)

movss		-216(%rbp), %xmm1 
movss		.FL18(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -224(%rbp) 

mov	.FL19(%rip), %r10
mov	%r10, -232(%rbp)

movss		-224(%rbp), %xmm0 
addss		-232(%rbp), %xmm0 
movss		%xmm0, -240(%rbp) 

movss		-240(%rbp), %xmm0
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

mov		$.SL20, %r10
mov	 	%r10, %rdi

movss		-32(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

