.text

.comm res, 4

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 4), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	resto
.type	resto, @function 
resto: 
enter   $(4 * 13), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$3, -16(%rbp)

movl 	$2, -20(%rbp)

mov		-16(%rbp), %r10 
mov		-20(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -24(%rbp)

mov		-12(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -28(%rbp)

movl 	$1, -32(%rbp)

mov		-32(%rbp), %r10
cmp 	-28(%rbp), %r10

jne 		.falseCondL0

movl 	$3, -36(%rbp)

mov		-12(%rbp), %rax 
cltd
idivl	-36(%rbp) 
mov		%rax, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.endIfL1

.falseCondL0: 

movl 	$2, -44(%rbp)

mov		-44(%rbp), %rax 
cltd
idivl	-12(%rbp)
mov		%rax, -48(%rbp)

mov		-48(%rbp), %rax
mov		%rax, -16(%rbp)

.endIfL1: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 11), $0 

movl 	$0, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, null(%rbp)

movl 	$10.2, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

movl 	$5, -20(%rbp)

mov		-20(%rbp), %r10
mov	 	%r10, %rdi

call 	inc
mov 	%rax, -28(%rbp) 

mov		-28(%rbp), %r10
mov	 	%r10, %rsi

call 	resto
mov 	%rax, -40(%rbp) 

movl 	$0, -48(%rbp)

mov 		-40, %rbx 
mov 		-48, %rdx 
mov 		%rbx, -8(%rbp, %rdx, 4) 

mov 		$0, %rax
leave
ret

