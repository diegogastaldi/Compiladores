.L0L0: 
		.string "anidandofuncionesflotantes" 

.text

.globl	div
.type	div, @function 
div: 
enter   $(4 * 5), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-12(%rbp), %rax 
cltd
idivl	-8(%rbp) 
mov		%rax, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	resta
.type	resta, @function 
resta: 
enter   $(4 * 5), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	sum
.type	sum, @function 
sum: 
enter   $(4 * 5), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-12(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 18), $0 

movl 	$6.982, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -8(%rbp)

movl 	$2.5, -12(%rbp)

mov		-12(%rbp), %rax 
neg		%rax 
mov		%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov		%r10, -16(%rbp)

movl 	$3.5698, -20(%rbp)

mov		-20(%rbp), %r10
mov		%r10, -12(%rbp)

mov		$.L0L0, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	resta
mov 	%rax, -36(%rbp) 

mov		-36(%rbp), %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov		-12(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	div
mov 	%rax, -56(%rbp) 

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	sum
mov 	%rax, -68(%rbp) 

mov		-68(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

