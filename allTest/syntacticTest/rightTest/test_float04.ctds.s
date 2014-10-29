.SL19: 
		.string "%f" 

.FL18: 
		.float 80.0 

.FL17: 
		.float 0 

.FL16: 
		.float 7.6 

.FL15: 
		.float 4.3 

.FL14: 
		.float 0 

.FL13: 
		.float 15.0 

.FL12: 
		.float 0 

.FL11: 
		.float 100.1 

.FL9: 
		.float 1.0 

.FL7: 
		.float 2.0 

.FL0: 
		.float 1.0 

.text

.comm w, 8

.comm m, 8

.comm res, 8

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(8 * 32), $0 
movss 		%xmm0, -8(%rbp) 
mov 		%rdi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq 	$0, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$0, -96(%rbp)

mov		-8(%rbp), %rax
cmp		-96(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.falseCondL1

mov		-8(%rbp), %rax 
neg		%rax 
mov		%rax, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL1: 

.beginWhileL3: 

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -136(%rbp)

mov 		-32(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -144(%rbp)

cmpq		$0, -136(%rbp)
jne 		.L4
cmpq		$0, -144(%rbp)
je 		.L5
.L4: 
mov		$1, %r10
jmp 		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.endWhileL2

mov	.FL7(%rip), %r10
mov	%r10, -168(%rbp)

movss		-16(%rbp), %xmm0 
mulss		-168(%rbp), %xmm0 
movss		%xmm0, -176(%rbp) 

movss		-48(%rbp), %xmm0 
mulss		-176(%rbp), %xmm0 
movss		%xmm0, -184(%rbp) 

mov		-184(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -192(%rbp)

mov		-32(%rbp), %r10 
mov		-192(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -208(%rbp) 

cmpq		$0, -208(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -216(%rbp) 

movq 	$1, -224(%rbp)

mov		-224(%rbp), %r10
cmp 		-216(%rbp), %r10

jne 		.falseCondL8

mov	.FL9(%rip), %r10
mov	%r10, -232(%rbp)

movss		-232(%rbp), %xmm0 
divss		-48(%rbp), %xmm0 
movss		%xmm0, -240(%rbp) 

movss		-240(%rbp), %xmm0
leave
ret

jmp 		.endIfL10

.falseCondL8: 

movss		-48(%rbp), %xmm0
leave
ret

.endIfL10: 

mov	.FL11(%rip), %r10
mov	%r10, -248(%rbp)

movss		-248(%rbp), %xmm1 
movss		.FL12(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -256(%rbp) 

movss		-256(%rbp), %xmm0
leave
ret

.globl	multRepeat
.type	multRepeat, @function 
multRepeat: 
enter   $(8 * 11), $0 
movss 		%xmm0, -8(%rbp) 
movss 		%xmm1, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movss		-16(%rbp), %xmm0 
mulss		-8(%rbp), %xmm0 
movss		%xmm0, -56(%rbp) 

movss		-16(%rbp), %xmm0 
mulss		-56(%rbp), %xmm0 
movss		%xmm0, -64(%rbp) 

movss		-16(%rbp), %xmm0 
mulss		-64(%rbp), %xmm0 
movss		%xmm0, -72(%rbp) 

movss		-8(%rbp), %xmm0 
mulss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

movss		-8(%rbp), %xmm0 
mulss		-80(%rbp), %xmm0 
movss		%xmm0, -88(%rbp) 

mov		-88(%rbp), %r10
mov		%r10, -32(%rbp)

movss		-32(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 14), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

mov		$0, %r10
mov		%r10, w(%rip)

mov		$0, %r10
mov		%r10, m(%rip)

mov		$0, %r10
mov		%r10, res(%rip)

mov	.FL13(%rip), %r10
mov	%r10, -32(%rbp)

movss		-32(%rbp), %xmm1 
movss		.FL14(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -40(%rbp) 

mov		-40(%rbp), %r10
mov		%r10, res(%rip)

mov	.FL15(%rip), %r10
mov	%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, w(%rip)

mov	.FL16(%rip), %r10
mov	%r10, -56(%rbp)

movss		-56(%rbp), %xmm1 
movss		.FL17(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, m(%rip)

mov	.FL18(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2, -80(%rbp)

movss		-24(%rbp), %xmm0

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	potencia
movss 	%xmm0, -88(%rbp) 

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		res(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-96(%rbp), %xmm0

movss		-16(%rbp), %xmm1

mov 		$2, %rax 

call 	multRepeat
movss 	%xmm0, -104(%rbp) 

mov		$.SL19, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

