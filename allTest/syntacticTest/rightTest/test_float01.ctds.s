.SL10: 
		.string "%f" 

.FL9: 
		.float 8.0 

.FL8: 
		.float 0 

.FL7: 
		.float 100.1 

.FL5: 
		.float 1.0 

.FL0: 
		.float 1.0 

.text

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

mov		-8(%rbp), %rax 
neg		%rax 
mov		%rax, -112(%rbp) 

mov		-112(%rbp), %r10
mov		%r10, -8(%rbp)

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL1: 

.beginWhileL3: 

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -128(%rbp)

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10
cmp 		-128(%rbp), %r10

jne 		.endWhileL2

movss		-48(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -136(%rbp) 

mov		-136(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -144(%rbp)

mov		-32(%rbp), %r10 
mov		-144(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -160(%rbp) 

movq 	$1, -168(%rbp)

mov		-168(%rbp), %r10
cmp 		-160(%rbp), %r10

jne 		.falseCondL4

mov	.FL5(%rip), %r10
mov	%r10, -168(%rbp)

movss		-168(%rbp), %xmm0 
divss		-48(%rbp), %xmm0 
movss		%xmm0, -176(%rbp) 

movss		-176(%rbp), %xmm0
leave
ret

jmp 		.endIfL6

.falseCondL4: 

movss		-48(%rbp), %xmm0
leave
ret

.endIfL6: 

mov	.FL7(%rip), %r10
mov	%r10, -184(%rbp)

movss		-184(%rbp), %xmm1 
movss		.FL8(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -192(%rbp) 

movss		-192(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

mov	.FL9(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2, -40(%rbp)

movss		-24(%rbp), %xmm0

mov		-40(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	potencia
movss 	%xmm0, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL10, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

