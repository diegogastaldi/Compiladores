.SL9: 
		.string "%f" 

.FL8: 
		.float 8.0 

.FL7: 
		.float 1.0 

.FL0: 
		.float 0.0 

.text

.globl	sumatoria
.type	sumatoria, @function 
sumatoria: 
enter   $(8 * 19), $0 
movss 		%xmm0, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL2: 

movq 	$0, -64(%rbp)

movss		-64(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -72(%rbp) 

movq 	$0, -80(%rbp)

movss		-80(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -88(%rbp) 

cmpq		$0, -72(%rbp)
jne 		.L3
cmpq		$0, -88(%rbp)
je 		.L4
.L3: 
mov		$1, %r10
jmp 		.L5
.L4:
mov		$0, %r10
.L5:
mov		%r10, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.endWhileL1

movq 	$0, -112(%rbp)

movss		-112(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -120(%rbp) 

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 		-120(%rbp), %r10

jne 		.falseCondL6

movss		-24(%rbp), %xmm0 
addss		-32(%rbp), %xmm0 
movss		%xmm0, -136(%rbp) 

mov		-136(%rbp), %r10
mov		%r10, -24(%rbp)

.falseCondL6: 

mov	.FL7(%rip), %r10
mov	%r10, -144(%rbp)

movss		-144(%rbp), %xmm0 
subss		-32(%rbp), %xmm0 
movss		%xmm0, -152(%rbp) 

mov		-152(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL2

.endWhileL1: 

mov		-24(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-40(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

mov	.FL8(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

movss		-24(%rbp), %xmm0

mov 		$1, %rax 

call 	sumatoria
movss 	%xmm0, -40(%rbp) 

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL9, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

