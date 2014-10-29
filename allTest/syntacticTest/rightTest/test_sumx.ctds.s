.FL3: 
		.float 6.0 

.FL0: 
		.float 0.0 

.text

.globl	sumx
.type	sumx, @function 
sumx: 
enter   $(8 * 14), $0 
movss 		%xmm0, -8(%rbp) 
mov 		%rdi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$0, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL2: 

mov		-40(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.endWhileL1

movss		-32(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1, -104(%rbp)

mov		-40(%rbp), %r10 
mov		-104(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.beginWhileL2

.endWhileL1: 

movss		-32(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

mov	.FL3(%rip), %r10
mov	%r10, -16(%rbp)

movq 	$2, -24(%rbp)

movss		-16(%rbp), %xmm0

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	sumx
movss 	%xmm0, -32(%rbp) 

movss		-32(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

