.text

.comm c, 4

.globl	alo
.type	alo, @function 
alo: 
enter   $(4 * 9), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$1, -16(%rbp)

mov		-16(%rbp), %r10
cmp 	-12(%rbp), %r10

jne 		.falseCondL0

movl 	$1, -20(%rbp)

mov		-8(%rbp), %r10 
mov		-20(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.endIfL1

.falseCondL0: 

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -8(%rbp)

.endIfL1: 

mov 		$0, %rax
leave
ret

.globl	Alo
.type	Alo, @function 
Alo: 
enter   $(4 * 4), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov 		$0, %rax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(4 * 7), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	alo

movl 	$1, -24(%rbp)

mov		-8(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 10), $0 

movl 	$7, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$8.0, -12(%rbp)

mov		-12(%rbp), %r10
mov		%r10, c(%rip)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo2
mov 	%rax, -20(%rbp) 

mov		-20(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$0, -28(%rbp)

mov		-28(%rbp), %r10
mov	 	%r10, %rdi

movl 	$3, -36(%rbp)

mov		-36(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	alo

mov 		$0, %rax
leave
ret

