.L0L0: 
		.string "anidandofuncionesflotantes" 

.text

.globl	div
.type	div, @function 
div: 
enter   $(8 * 6), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

mov		-24(%rbp), %rax 
cltd
idivq	-16(%rbp) 
mov		%rax, -48(%rbp)

mov		-48(%rbp), %rax
leave
ret

.globl	resta
.type	resta, @function 
resta: 
enter   $(8 * 6), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

mov		-16(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-48(%rbp), %rax
leave
ret

.globl	sum
.type	sum, @function 
sum: 
enter   $(8 * 6), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

mov		-24(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-48(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 24), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$6.982, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$2.5, -48(%rbp)

mov		-48(%rbp), %rax 
neg		%rax 
mov		%rax, -56(%rbp) 

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$3.5698, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	resta
mov 	%rax, -96(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	div
mov 	%rax, -136(%rbp) 

mov		-96(%rbp), %r10
mov	 	%r10, %rdi

mov		-136(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	sum
mov 	%rax, -160(%rbp) 

mov		$.L0L0, %r10
mov	 	%r10, %rdi

mov		-160(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -184(%rbp) 

mov 		$0, %rax
leave
ret

