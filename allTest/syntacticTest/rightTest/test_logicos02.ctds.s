.FL32: 
		.float 10.0 

.FL31: 
		.float 0.66 

.FL30: 
		.float 3.3 

.SL29: 
		.string "%f resultado : " 

.FL21: 
		.float 0 

.FL20: 
		.float 1 

.FL17: 
		.float 0 

.FL16: 
		.float 1 

.FL13: 
		.float 0 

.FL12: 
		.float 1 

.FL11: 
		.float 2.0 

.FL7: 
		.float 2.0 

.FL3: 
		.float 2.0 

.text

.globl	promedio
.type	promedio, @function 
promedio: 
enter   $(8 * 34), $0 
movss 		%xmm0, -8(%rbp) 
movss 		%xmm1, -16(%rbp) 
movss 		%xmm2, -24(%rbp) 

movss		-8(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -64(%rbp) 

movss		-8(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -72(%rbp) 

cmpq		$0, -64(%rbp)
je 		.L0
cmpq		$0, -72(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.falseCondL2

movss		-24(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -96(%rbp) 

mov	.FL3(%rip), %r10
mov	%r10, -104(%rbp)

movss		-96(%rbp), %xmm0 
divss		-104(%rbp), %xmm0 
movss		%xmm0, -112(%rbp) 

movss		-112(%rbp), %xmm0
leave
ret

.falseCondL2: 

movss		-16(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -120(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -128(%rbp) 

cmpq		$0, -120(%rbp)
je 		.L4
cmpq		$0, -128(%rbp)
je 		.L4
mov		$1, %r10
jmp		.L5
.L4:
mov		$0, %r10
.L5:
mov		%r10, -136(%rbp)

movq 	$1, -144(%rbp)

mov		-144(%rbp), %r10
cmp 		-136(%rbp), %r10

jne 		.falseCondL6

movss		-24(%rbp), %xmm0 
addss		-8(%rbp), %xmm0 
movss		%xmm0, -152(%rbp) 

mov	.FL7(%rip), %r10
mov	%r10, -160(%rbp)

movss		-152(%rbp), %xmm0 
divss		-160(%rbp), %xmm0 
movss		%xmm0, -168(%rbp) 

movss		-168(%rbp), %xmm0
leave
ret

.falseCondL6: 

movss		-24(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -176(%rbp) 

movss		-24(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -184(%rbp) 

cmpq		$0, -176(%rbp)
je 		.L8
cmpq		$0, -184(%rbp)
je 		.L8
mov		$1, %r10
jmp		.L9
.L8:
mov		$0, %r10
.L9:
mov		%r10, -192(%rbp)

movq 	$1, -200(%rbp)

mov		-200(%rbp), %r10
cmp 		-192(%rbp), %r10

jne 		.falseCondL10

movss		-8(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -208(%rbp) 

mov	.FL11(%rip), %r10
mov	%r10, -216(%rbp)

movss		-208(%rbp), %xmm0 
divss		-216(%rbp), %xmm0 
movss		%xmm0, -224(%rbp) 

movss		-224(%rbp), %xmm0
leave
ret

.falseCondL10: 

movss		-24(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
jp	.L14 
movss		-24(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
jne	.L14 
mov		.FL12(%rip), %rax 
jmp	.L15 
.L14: 
mov	.FL13, %rax 
.L15: 
mov	%rax, -232(%rbp) 

movss		-24(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
jp	.L18 
movss		-24(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
jne	.L18 
mov		.FL16(%rip), %rax 
jmp	.L19 
.L18: 
mov	.FL17, %rax 
.L19: 
mov	%rax, -240(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
jp	.L22 
movss		-16(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
jne	.L22 
mov		.FL20(%rip), %rax 
jmp	.L23 
.L22: 
mov	.FL21, %rax 
.L23: 
mov	%rax, -248(%rbp) 

cmpq		$0, -240(%rbp)
je 		.L24
cmpq		$0, -248(%rbp)
je 		.L24
mov		$1, %r10
jmp		.L25
.L24:
mov		$0, %r10
.L25:
mov		%r10, -256(%rbp)

cmpq		$0, -232(%rbp)
je 		.L26
cmpq		$0, -256(%rbp)
je 		.L26
mov		$1, %r10
jmp		.L27
.L26:
mov		$0, %r10
.L27:
mov		%r10, -264(%rbp)

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
cmp 		-264(%rbp), %r10

jne 		.falseCondL28

movss		-24(%rbp), %xmm0
leave
ret

.falseCondL28: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

mov	.FL30(%rip), %r10
mov	%r10, -16(%rbp)

mov	.FL31(%rip), %r10
mov	%r10, -24(%rbp)

mov	.FL32(%rip), %r10
mov	%r10, -32(%rbp)

movss		-16(%rbp), %xmm0

movss		-24(%rbp), %xmm1

movss		-32(%rbp), %xmm2

mov 		$3, %rax 

call 	promedio
movss 	%xmm0, -40(%rbp) 

mov		$.SL29, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

