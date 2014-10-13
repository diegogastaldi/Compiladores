.L00: 
		.string "anidandofuncionesflotantes" 

.text

.globl	div
.type	div, @function 
div: 
enter   $(4 * 2), $0 

mov		1(%rbp), %rax 
cltd
idivl	0(%rbp) 
mov		%rax, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	resta
.type	resta, @function 
resta: 
enter   $(4 * 2), $0 

mov		0(%rbp), %r10 
mov		1(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	sum
.type	sum, @function 
sum: 
enter   $(4 * 2), $0 

mov		1(%rbp), %r10 
mov		0(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -8(%rbp)

.globl	main
.type	main, @function 
main: 
enter   $(4 * 19), $0 

mov		-8(%rbp), %rax
leave
ret

movl 	$6.982, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$2.5, -24(%rbp)

mov		-24(%rbp), %rax 
neg		%rax 
mov		%rax, -28(%rbp) 

mov		-28(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$3.5698, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov		-4(%rbp), %r10
mov	 	%r10, %rsi

call 	div
mov 	%rax, -44(%rbp) 

mov		-44(%rbp), %r10
mov	 	%r10, %rdi

mov		-4(%rbp), %r10
mov	 	%r10, %rdi

mov		-12(%rbp), %r10
mov	 	%r10, %rsi

call 	resta
mov 	%rax, -64(%rbp) 

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

call 	sum
mov 	%rax, -76(%rbp) 

mov		-76(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L00, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

