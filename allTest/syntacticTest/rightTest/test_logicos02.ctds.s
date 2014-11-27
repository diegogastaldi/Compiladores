.SL26: 
		.string "%f resultado : " 

.FL25: 
		.float 10.0 

.FL24: 
		.float 0.66 

.FL23: 
		.float 3.3 

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
enter   $(8 * 30), $0 

movss 		%xmm0, -24(%rbp) 
movss 		%xmm1, -16(%rbp) 
movss 		%xmm2, -8(%rbp) 

movss		-24(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -64(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
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
movss		%xmm0, -88(%rbp) 

mov	.FL3(%rip), %r10
mov	%r10, -96(%rbp)

movss		-88(%rbp), %xmm0 
divss		-96(%rbp), %xmm0 
movss		%xmm0, -104(%rbp) 

movss		-104(%rbp), %xmm0
leave
ret

.falseCondL2: 

movss		-24(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -112(%rbp) 

movss		-8(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -120(%rbp) 

cmpq		$0, -112(%rbp)
je 		.L4
cmpq		$0, -120(%rbp)
je 		.L4
mov		$1, %r10
jmp		.L5
.L4:
mov		$0, %r10
.L5:
mov		%r10, -128(%rbp)

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10
cmp 		-128(%rbp), %r10

jne 		.falseCondL6

movss		-24(%rbp), %xmm0 
addss		-8(%rbp), %xmm0 
movss		%xmm0, -136(%rbp) 

mov	.FL7(%rip), %r10
mov	%r10, -144(%rbp)

movss		-136(%rbp), %xmm0 
divss		-144(%rbp), %xmm0 
movss		%xmm0, -152(%rbp) 

movss		-152(%rbp), %xmm0
leave
ret

.falseCondL6: 

movss		-16(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -160(%rbp) 

movss		-8(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -168(%rbp) 

cmpq		$0, -160(%rbp)
je 		.L8
cmpq		$0, -168(%rbp)
je 		.L8
mov		$1, %r10
jmp		.L9
.L8:
mov		$0, %r10
.L9:
mov		%r10, -176(%rbp)

movq 	$1, -184(%rbp)

mov		-184(%rbp), %r10
cmp 		-176(%rbp), %r10

jne 		.falseCondL10

movss		-8(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -184(%rbp) 

mov	.FL11(%rip), %r10
mov	%r10, -192(%rbp)

movss		-184(%rbp), %xmm0 
divss		-192(%rbp), %xmm0 
movss		%xmm0, -200(%rbp) 

movss		-200(%rbp), %xmm0
leave
ret

.falseCondL10: 

movss		-24(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
jp	.L12 
movss		-24(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
jne	.L12 
movq		$1, %rax 
jmp	.L13 
.L12: 
movq		$0, %rax 
.L13: 
mov	%rax, -208(%rbp) 

movss		-24(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
jp	.L14 
movss		-24(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
jne	.L14 
movq		$1, %rax 
jmp	.L15 
.L14: 
movq		$0, %rax 
.L15: 
mov	%rax, -216(%rbp) 

cmpq		$0, -208(%rbp)
je 		.L16
cmpq		$0, -216(%rbp)
je 		.L16
mov		$1, %r10
jmp		.L17
.L16:
mov		$0, %r10
.L17:
mov		%r10, -224(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
jp	.L18 
movss		-16(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
jne	.L18 
movq		$1, %rax 
jmp	.L19 
.L18: 
movq		$0, %rax 
.L19: 
mov	%rax, -232(%rbp) 

cmpq		$0, -224(%rbp)
je 		.L20
cmpq		$0, -232(%rbp)
je 		.L20
mov		$1, %r10
jmp		.L21
.L20:
mov		$0, %r10
.L21:
mov		%r10, -240(%rbp)

movq 	$1, -248(%rbp)

mov		-248(%rbp), %r10
cmp 		-240(%rbp), %r10

jne 		.falseCondL22

movss		-24(%rbp), %xmm0
leave
ret

.falseCondL22: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 


mov	.FL23(%rip), %r10
mov	%r10, -16(%rbp)

mov	.FL24(%rip), %r10
mov	%r10, -24(%rbp)

mov	.FL25(%rip), %r10
mov	%r10, -32(%rbp)

movss		-16(%rbp), %xmm0

movss		-24(%rbp), %xmm1

movss		-32(%rbp), %xmm2

mov 		$3, %rax 

call 	promedio
movss 	%xmm0, -40(%rbp) 

mov		$.SL26, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

