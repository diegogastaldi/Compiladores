.FL2: 
		.float 10.2 

.text

.comm res, 8

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 6), $0 

mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-8(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	resto
.type	resto, @function 
resto: 
enter   $(8 * 8), $0 

mov 		%rdi, -16(%rbp) 
movss 		%xmm0, -8(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$6, -56(%rbp)

mov		-16(%rbp), %rax
cmp		-56(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 		-64(%rbp), %r10

jne 		.falseCondL0

movq 	$3, -72(%rbp)

mov		-16(%rbp), %rax 
cltd
idivq	-72(%rbp) 
mov		%rax, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.endIfL1

.falseCondL0: 

movq 	$2, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL1: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 8), $0 


mov		$0, %r10
mov		%r10, res(%rip)

movq 	$0, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, res(%rip)

movq 	$5, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	inc
mov 	%rax, -40(%rbp) 

mov	.FL2(%rip), %r10
mov	%r10, -48(%rbp)

mov		-40(%rbp), %r10
mov	 	%r10, %rdi

movss		-48(%rbp), %xmm0

mov 		$1, %rax 

call 	resto
mov 	%rax, -56(%rbp) 

movq 	$0, -64(%rbp)

mov 		-56(%rbp), %r10 
movl		-64(%rbp), %edx 
cltq 
mov 		%r10, -16(%rbp, %rdx, 8) 

mov 		$0, %rax
leave
ret

