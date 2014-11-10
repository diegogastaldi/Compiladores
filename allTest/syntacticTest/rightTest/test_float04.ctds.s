.SL16: 
		.string "%f" 

.FL15: 
		.float 80.0 

.FL14: 
		.float -7.6 

.FL13: 
		.float 4.3 

.FL12: 
		.float -15.0 

.FL11: 
		.float -100.1 

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
enter   $(8 * 24), $0 

movss 		%xmm0, -16(%rbp) 
mov 		%rdi, -8(%rbp) 

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

mov		-8(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL1: 

.beginWhileL3: 

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -112(%rbp)

mov 		-32(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -120(%rbp)

cmpq		$0, -112(%rbp)
jne 		.L4
cmpq		$0, -120(%rbp)
je 		.L5
.L4: 
mov		$1, %r10
jmp 		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -128(%rbp)

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10
cmp 		-128(%rbp), %r10

jne 		.endWhileL2

movss		-48(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -136(%rbp) 

mov	.FL7(%rip), %r10
mov	%r10, -144(%rbp)

movss		-136(%rbp), %xmm0 
mulss		-144(%rbp), %xmm0 
movss		%xmm0, -152(%rbp) 

mov		-152(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -160(%rbp)

mov		-32(%rbp), %r10 
mov		-160(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -168(%rbp)

mov		-168(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

movq 	$1, -176(%rbp)

mov		-176(%rbp), %r10
cmp 		-40(%rbp), %r10

jne 		.falseCondL8

mov	.FL9(%rip), %r10
mov	%r10, -176(%rbp)

movss		-176(%rbp), %xmm0 
divss		-48(%rbp), %xmm0 
movss		%xmm0, -184(%rbp) 

movss		-184(%rbp), %xmm0
leave
ret

jmp 		.endIfL10

.falseCondL8: 

movss		-48(%rbp), %xmm0
leave
ret

.endIfL10: 

mov	.FL11(%rip), %r10
mov	%r10, -176(%rbp)

movss		-176(%rbp), %xmm0
leave
ret

.globl	multRepeat
.type	multRepeat, @function 
multRepeat: 
enter   $(8 * 12), $0 

movss 		%xmm0, -16(%rbp) 
movss 		%xmm1, -8(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movss		-8(%rbp), %xmm0 
mulss		-8(%rbp), %xmm0 
movss		%xmm0, -56(%rbp) 

movss		-56(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -64(%rbp) 

movss		-64(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -72(%rbp) 

movss		-72(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

movss		-80(%rbp), %xmm0 
mulss		-8(%rbp), %xmm0 
movss		%xmm0, -88(%rbp) 

mov		-88(%rbp), %r10
mov		%r10, -32(%rbp)

movss		-32(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 12), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

mov		$0, %r10
mov		%r10, w(%rip)

mov		$0, %r10
mov		%r10, m(%rip)

mov		$0, %r10
mov		%r10, res(%rip)

mov	.FL12(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, res(%rip)

mov	.FL13(%rip), %r10
mov	%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, w(%rip)

mov	.FL14(%rip), %r10
mov	%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, m(%rip)

mov	.FL15(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2, -64(%rbp)

movss		-24(%rbp), %xmm0

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	potencia
movss 	%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		res(%rip), %r10 
mov		%r10, -80(%rbp) 

movss		-80(%rbp), %xmm0

movss		-16(%rbp), %xmm1

mov 		$2, %rax 

call 	multRepeat
movss 	%xmm0, -88(%rbp) 

mov		$.SL16, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

