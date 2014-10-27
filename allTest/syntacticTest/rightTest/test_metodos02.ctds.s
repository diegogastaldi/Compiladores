.FL2: 
		.float 8.0 

.text

.comm c, 8

.globl	alo
.type	alo, @function 
alo: 
enter   $(8 * 10), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

movq 	$1, -48(%rbp)

mov		-48(%rbp), %r10
cmp 		-24(%rbp), %r10

jne 		.falseCondL0

movq 	$1, -56(%rbp)

mov		-16(%rbp), %r10 
mov		-56(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -16(%rbp)

jmp 		.endIfL1

.falseCondL0: 

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10 
mov		-16(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

.endIfL1: 

mov 		$0, %rax
leave
ret

.globl	Alo
.type	Alo, @function 
Alo: 
enter   $(8 * 5), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

mov 		$0, %rax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(8 * 8), $0 
mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	alo
mov 	%rax, -40(%rbp) 

movq 	$1, -56(%rbp)

mov		-16(%rbp), %r10 
mov		-56(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 11), $0 

mov		$0, %r10
mov		%r10, c(%rip)

movq 	$7, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, c(%rip)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo2
mov 	%rax, -40(%rbp) 

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -56(%rbp)

movq 	$3, -64(%rbp)

mov		-64(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -72(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	alo
mov 	%rax, -80(%rbp) 

mov 		$0, %rax
leave
ret

