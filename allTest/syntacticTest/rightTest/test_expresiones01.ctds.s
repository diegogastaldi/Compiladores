.FL11: 
		.float 2.0 

.FL10: 
		.float 1.0 

.FL9: 
		.float 2.0 

.FL6: 
		.float 4.0 

.FL2: 
		.float 4.0 

.FL1: 
		.float 4.0 

.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(8 * 28), $0 
mov 		%rdi, -16(%rbp) 

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
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -24(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -96(%rbp)


movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.falseCondL3

.beginWhileL5: 

mov	.FL6(%rip), %r10
mov	%r10, -120(%rbp)

movss		-24(%rbp), %xmm0 
ucomiss		-120(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -128(%rbp) 

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10
cmp 		-128(%rbp), %r10

jne 		.endWhileL4

.beginWhileL8: 

movq 	$4, -144(%rbp)

mov		-40(%rbp), %rax
cmp		-144(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.endWhileL7

movq 	$1, -168(%rbp)

mov		-168(%rbp), %r10 
mov		-40(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -176(%rbp)

mov		-176(%rbp), %r10
mov		%r10, -40(%rbp)

mov	.FL9(%rip), %r10
mov	%r10, -184(%rbp)

movss		-24(%rbp), %xmm0 
mulss		-184(%rbp), %xmm0 
movss		%xmm0, -192(%rbp) 

mov		-192(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL8

.endWhileL7: 

mov	.FL10(%rip), %r10
mov	%r10, -200(%rbp)

movss		-24(%rbp), %xmm0 
addss		-200(%rbp), %xmm0 
movss		%xmm0, -208(%rbp) 

mov		-208(%rbp), %r10
mov		%r10, -24(%rbp)

mov	.FL11(%rip), %r10
mov	%r10, -216(%rbp)

movss		-32(%rbp), %xmm0 
divss		-216(%rbp), %xmm0 
movss		%xmm0, -224(%rbp) 

mov		-224(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL5

.endWhileL4: 

.falseCondL3: 

.falseCondL0: 

movss		-32(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 7), $0 

movq 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	prueba
mov 	%rax, -24(%rbp) 

movss		-24, %xmm0

mov 		$0, %rax 
call 	printf
mov 	%rax, -48(%rbp) 

mov 		$0, %rax
leave
ret
