.text

.globl	alo
.type	alo, @function 
alo: 
enter   $(4 * 6), $0 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
cmp 	1(%rbp), %r10

jne 		.falseCond0

movl 	$1, -12(%rbp)

mov		0(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, 0(%rbp)

jmp 		.endIf1

.falseCond0: 

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10 
mov		0(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, 0(%rbp)

.endIf1: 

mov 		$0, %rax
leave
ret

.globl	Alo
.type	Alo, @function 
Alo: 
enter   $(4 * 1), $0 

mov 		$0, %rax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(4 * 6), $0 

mov		0(%rbp), %r10
mov	 	%r10, %rdi

movl 	$1, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rsi

call 	alo

movl 	$1, -20(%rbp)

mov		0(%rbp), %r10 
mov		-20(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, 0(%rbp)

mov		0(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 11), $0 

movl 	$7, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$8.0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -4(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	alo2
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$3, -32(%rbp)

mov		-32(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -36(%rbp)

mov		-36(%rbp), %r10
mov	 	%r10, %rdi

movl 	$0, -44(%rbp)

mov		-44(%rbp), %r10
mov	 	%r10, %rsi

call 	alo

mov 		$0, %rax
leave
ret

