.SL22: 
		.string "%f" 

.FL21: 
		.float 0 

.FL20: 
		.float 1.0 

.FL19: 
		.float 2.0 

.FL18: 
		.float 6752.0 

.FL17: 
		.float 0 

.FL16: 
		.float 1000.2343 

.FL10: 
		.float 0 

.FL9: 
		.float 1 

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
enter   $(8 * 37), $0 
movss 		%xmm0, -8(%rbp) 
cvtps2pd	%xmm0, %xmm0 
movss 		%xmm1, -16(%rbp) 
cvtps2pd	%xmm0, %xmm0 

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

movq 	$23, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -40(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL4: 

movq 	$0, -112(%rbp)

movss		-112(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -120(%rbp) 

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 		-120(%rbp), %r10

jne 		.endWhileL3

mov	.FL5(%rip), %r10
mov	%r10, -136(%rbp)

movss		-32(%rbp), %xmm0 
subss		-136(%rbp), %xmm0 
movss		%xmm0, -144(%rbp) 

mov		-144(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL6(%rip), %r10
mov	%r10, -152(%rbp)

movss		-24(%rbp), %xmm0 
ucomiss		-152(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -160(%rbp) 

movq 	$1, -168(%rbp)

mov		-168(%rbp), %r10
cmp 		-160(%rbp), %r10

jne 		.falseCondL7

mov	.FL8(%rip), %r10
mov	%r10, -176(%rbp)

	movss		-32(%rbp), %xmm0 
	ucomiss		-176(%rbp), %xmm0 
	jp	.L11 
	movss		-32(%rbp), %xmm0 
	ucomiss		-176(%rbp), %xmm0 
	je	.L12 
.L11: 
	mov		.FL9(%rip), %rax 
	jmp	.L13 
.L12: 
	mov		.FL9(%rip), %rax 
.L13: 
	mov		%rax, -184(%rbp) 

movq 	$1, -192(%rbp)

mov		-192(%rbp), %r10
cmp 		-184(%rbp), %r10

jne 		.falseCondL14

movss		-24(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -200(%rbp) 

movss		-48(%rbp), %xmm0 
mulss		-200(%rbp), %xmm0 
movss		%xmm0, -208(%rbp) 

mov		-208(%rbp), %r10
mov		%r10, -48(%rbp)

.falseCondL14: 

jmp 		.beginWhileL4

jmp 		.endIfL15

.falseCondL7: 

mov	.FL16(%rip), %r10
mov	%r10, -216(%rbp)

movss		-216(%rbp), %xmm1 
movss		.FL17(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -224(%rbp) 

mov	.FL18(%rip), %r10
mov	%r10, -240(%rbp)

movss		-224(%rbp), %xmm0 
addss		-240(%rbp), %xmm0 
movss		%xmm0, -248(%rbp) 

mov		-248(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.endWhileL3

.endIfL15: 

jmp 		.beginWhileL4

.endWhileL3: 

mov	.FL19(%rip), %r10
mov	%r10, -256(%rbp)

mov	.FL20(%rip), %r10
mov	%r10, -264(%rbp)

movss		-48(%rbp), %xmm0 
addss		-264(%rbp), %xmm0 
movss		%xmm0, -272(%rbp) 

movss		-256(%rbp), %xmm0 
mulss		-272(%rbp), %xmm0 
movss		%xmm0, -280(%rbp) 

movss		-280(%rbp), %xmm1 
movss		.FL21(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -288(%rbp) 

movss		-288(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 5), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

movss		-24(%rbp), %xmm1
cvtps2pd	%xmm0, %xmm0 

mov 		$2, %rax 

call 	pruContinue
movss 	%xmm0, -32(%rbp) 

mov		$.SL22, %r10
mov	 	%r10, %rdi

movss		-32(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

