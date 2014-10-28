.SL1: 
		.string "%d" 

.SL0: 
		.string "-estoEsUnaPrueba" 

.text

.comm c, 8

.globl	alo
.type	alo, @function 
alo: 
enter   $(8 * 7), $0 
mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-8(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	alo_2
.type	alo_2, @function 
alo_2: 
enter   $(8 * 10), $0 
mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	alo

movq 	$1, -40(%rbp)

mov		-40(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	alo
mov 	%rax, -48(%rbp) 

movq 	$1, -56(%rbp)

mov		-48(%rbp), %r10 
mov		-56(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -8(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 8), $0 

mov		$0, %r10
mov		%r10, c(%rip)

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

movq 	$5, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	alo
mov 	%rax, -32(%rbp) 

mov		$.SL1, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax 

call 	/home/programas/primer_primo_par

mov 		$0, %rax
leave
ret

