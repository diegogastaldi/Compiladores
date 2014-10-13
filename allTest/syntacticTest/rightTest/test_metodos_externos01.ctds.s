.L01: 
		.string "%d" 

.L00: 
		.string "-estoEsUnaPrueba" 

.text

.globl	alo
.type	alo, @function 
alo: 
enter   $(4 * 3), $0 

movl 	$1, -8(%rbp)

mov		0(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, 0(%rbp)

mov		0(%rbp), %rax
leave
ret

.globl	alo_2
.type	alo_2, @function 
alo_2: 
enter   $(4 * 8), $0 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	alo

movl 	$1, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

call 	alo
mov 	%rax, -24(%rbp) 

movl 	$1, -32(%rbp)

mov		-24(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -36(%rbp)

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

mov		-36(%rbp), %rax
mov		%rax, 0(%rbp)

mov 		$0, %rax
leave
ret

mov		$.L00, %r10
mov	 	%r10, %rdi

call 	printf

movl 	$5, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

call 	alo
mov 	%rax, -20(%rbp) 

mov		-20(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L01, %r10
mov	 	%r10, %rsi

call 	printf

call 	/home/programas/primer_primo_par

mov 		$0, %rax
leave
ret

