.SL1: 
		.string "%d" 

.SL0: 
		.string "-estoEsUnaPrueba" 

.text

.comm c, 8

.globl	alo
.type	alo, @function 
alo: 
enter   $(8 * 5), $0 
mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-16(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	alo_2
.type	alo_2, @function 
alo_2: 
enter   $(8 * 11), $0 
mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo
mov 	%rax, -40(%rbp) 

movq 	$1, -56(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo
mov 	%rax, -64(%rbp) 

movq 	$1, -80(%rbp)

mov		-64(%rbp), %r10 
mov		-80(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 10), $0 

mov		$0, %r10
mov		%r10, c(%rip)

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -16(%rbp) 

movq 	$5, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo
mov 	%rax, -40(%rbp) 

mov		$.SL1, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -56(%rbp) 

mov 		$0, %rax 
call 	/home/programas/primer_primo_par
mov 	%rax, -72(%rbp) 

mov 		$0, %rax
leave
ret

