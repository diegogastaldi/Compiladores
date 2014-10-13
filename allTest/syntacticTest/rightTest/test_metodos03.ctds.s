.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 3), $0 

movl 	$1, -8(%rbp)

mov		0(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -12(%rbp)

mov		-12(%rbp), %rax
leave
ret

.globl	resto
.type	resto, @function 
resto: 
enter   $(4 * 11), $0 

movl 	$3, -12(%rbp)

movl 	$2, -16(%rbp)

mov		-12(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -20(%rbp)

mov		1(%rbp), %rax
cmp		-20(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -24(%rbp)

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10
cmp 	-24(%rbp), %r10

jne 		.falseCond0

movl 	$3, -32(%rbp)

mov		1(%rbp), %rax 
cltd
idivl	-32(%rbp) 
mov		%rax, -36(%rbp)

mov		-36(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.endIf1

.falseCond0: 

movl 	$2, -40(%rbp)

mov		-40(%rbp), %rax 
cltd
idivl	1(%rbp)
mov		%rax, -44(%rbp)

mov		-44(%rbp), %rax
mov		%rax, -8(%rbp)

.endIf1: 

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 11), $0 

movl 	$0, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$10.2, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

movl 	$5, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

call 	inc
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

call 	resto
mov 	%rax, -44(%rbp) 

movl 	$0, -52(%rbp)

mov 		-44, %rbx 
mov 		-52, %rdx 
mov 		%rbx, -8(%rbp, %rdx, 4) 

mov 		$0, %rax
leave
ret

