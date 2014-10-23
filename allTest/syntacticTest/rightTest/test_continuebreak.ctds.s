.FL15: 
		.float 0 

.FL14: 
		.float 2.0 

.FL13: 
		.float 6752.0 

.FL12: 
		.float 0 

.FL11: 
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
enter   $(8 * 32), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -72(%rbp)

movss		-72(%rbp), %xmm1 
movss		.FL1(%rip), %xmm0 
xorps		%xmm1, %xmm0 
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

movss		-104(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -112(%rbp) 

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.endWhileL3

mov	.FL5(%rip), %r10
mov	%r10, -128(%rbp)

movss		-32(%rbp), %xmm0 
subss		-128(%rbp), %xmm0 
movss		%xmm0, -136(%rbp) 

mov		-136(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL6(%rip), %r10
mov	%r10, -144(%rbp)

movss		-24(%rbp), %xmm0 
ucomiss		-144(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -152(%rbp) 

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.falseCondL7

mov	.FL8(%rip), %r10
mov	%r10, -168(%rbp)


movq 	$1, -184(%rbp)

mov		-184(%rbp), %r10
cmp 		-176(%rbp), %r10

jne 		.falseCondL9

movss		-24(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -192(%rbp) 

movss		-48(%rbp), %xmm0 
mulss		-192(%rbp), %xmm0 
movss		%xmm0, -200(%rbp) 

mov		-200(%rbp), %r10
mov		%r10, -48(%rbp)

.falseCondL9: 

jmp 		.beginWhileL4

jmp 		.endIfL10

.falseCondL7: 

mov	.FL11(%rip), %r10
mov	%r10, -208(%rbp)

movss		-208(%rbp), %xmm1 
movss		.FL12(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -216(%rbp) 

mov	.FL13(%rip), %r10
mov	%r10, -224(%rbp)

movss		-216(%rbp), %xmm0 
addss		-224(%rbp), %xmm0 
movss		%xmm0, -232(%rbp) 

mov		-232(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.endWhileL3

.endIfL10: 

jmp 		.beginWhileL4

.endWhileL3: 

mov	.FL14(%rip), %r10
mov	%r10, -240(%rbp)

movss		-240(%rbp), %xmm0 
mulss		-48(%rbp), %xmm0 
movss		%xmm0, -248(%rbp) 

movss		-248(%rbp), %xmm1 
movss		.FL15(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -256(%rbp) 

movss		-256(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 8), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

movss		-16, %xmm0

movss		-24, %xmm1

mov 		$0, %rax 
call 	pruContinue
mov 	%rax, -32(%rbp) 

movss		-32, %xmm0

mov 		$0, %rax 
call 	printf
mov 	%rax, -56(%rbp) 

mov 		$0, %rax
leave
ret

