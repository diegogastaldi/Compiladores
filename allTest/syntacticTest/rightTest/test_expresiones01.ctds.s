.FL13: 
		.float 2.0 

.FL12: 
		.float 1.0 

.FL11: 
		.float 2.0 

.FL8: 
		.float 4.0 

.FL2: 
		.float 4.0 

.FL1: 
		.float 4.0 

.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(8 * 24), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq 	$50, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$0, -64(%rbp)

mov		-40(%rbp), %rax
cmp		-64(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
cmp 		-72(%rbp), %r10

jne 		.falseCondL0

mov	.FL1(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -24(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -88(%rbp)

movss		-24(%rbp), %xmm0 
ucomiss		-88(%rbp), %xmm0 
jp	.L3 
movss		-24(%rbp), %xmm0 
ucomiss		-88(%rbp), %xmm0 
jne	.L3 
movq		$1, %rax 
jmp	.L4 
.L3: 
movq		$0, %rax 
.L4: 
mov	%rax, -96(%rbp) 

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.falseCondL5

.beginWhileL7: 

mov	.FL8(%rip), %r10
mov	%r10, -104(%rbp)

movss		-104(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -112(%rbp) 

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.endWhileL6

.beginWhileL10: 

movq 	$4, -120(%rbp)

mov		-40(%rbp), %rax
cmp		-120(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -128(%rbp)

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10
cmp 		-128(%rbp), %r10

jne 		.endWhileL9

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10 
mov		-40(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -144(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -40(%rbp)

mov	.FL11(%rip), %r10
mov	%r10, -152(%rbp)

movss		-24(%rbp), %xmm0 
mulss		-152(%rbp), %xmm0 
movss		%xmm0, -160(%rbp) 

mov		-160(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL10

.endWhileL9: 

mov	.FL12(%rip), %r10
mov	%r10, -168(%rbp)

movss		-24(%rbp), %xmm0 
addss		-168(%rbp), %xmm0 
movss		%xmm0, -176(%rbp) 

mov		-176(%rbp), %r10
mov		%r10, -24(%rbp)

mov	.FL13(%rip), %r10
mov	%r10, -184(%rbp)

movss		-32(%rbp), %xmm0 
divss		-184(%rbp), %xmm0 
movss		%xmm0, -192(%rbp) 

mov		-192(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL7

.endWhileL6: 

.falseCondL5: 

.falseCondL0: 

movss		-32(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


movq 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	prueba
movss 	%xmm0, -24(%rbp) 

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

