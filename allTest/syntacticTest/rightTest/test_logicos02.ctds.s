.FL20: 
		.float 10.0 

.FL19: 
		.float 0.66 

.FL18: 
		.float 3.3 

.L0L17: 
		.string "%f resultado : " 

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
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 
mov 		%rdx, -32(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -64(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
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

movss		-32(%rbp), %xmm0 
addss		-24(%rbp), %xmm0 
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

movss		-24(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -120(%rbp) 

movss		-24(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
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

movss		-32(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
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

movss		-32(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -176(%rbp) 

movss		-32(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
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

movss		-16(%rbp), %xmm0 
addss		-24(%rbp), %xmm0 
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




cmpq		$0, -240(%rbp)
je 		.L12
cmpq		$0, -248(%rbp)
je 		.L12
mov		$1, %r10
jmp		.L13
.L12:
mov		$0, %r10
.L13:
mov		%r10, -256(%rbp)

cmpq		$0, -232(%rbp)
je 		.L14
cmpq		$0, -256(%rbp)
je 		.L14
mov		$1, %r10
jmp		.L15
.L14:
mov		$0, %r10
.L15:
mov		%r10, -264(%rbp)

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
cmp 		-264(%rbp), %r10

jne 		.falseCondL16

movss		-32(%rbp), %xmm0
leave
ret

.falseCondL16: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 10), $0 

mov	.FL18(%rip), %r10
mov	%r10, -24(%rbp)

mov	.FL19(%rip), %r10
mov	%r10, -32(%rbp)

mov	.FL20(%rip), %r10
mov	%r10, -40(%rbp)

movss		-24, %xmm0

movss		-32, %xmm1

movss		-40, %xmm2

mov 		$0, %rax 
call 	promedio
mov 	%rax, -48(%rbp) 

mov		$.L0L17, %r10
mov	 	%r10, %rdi

movss		-48, %xmm1

mov 		$0, %rax 
call 	printf
mov 	%rax, -72(%rbp) 

mov 		$0, %rax
leave
ret

