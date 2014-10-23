.L0L1: 
		.string "%d" 

.L0L0: 
		.string "-estoEsUnaPrueba" 

.text

.comm c, 8

.globl	alo
.type	alo, @function 
alo: 
enter   $(8 * 5), $0 
mov 		%rdi, -16(%rbp) 

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
enter   $(8 * 9), $0 
mov 		%rdi, -16(%rbp) 

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

movq 	$1, -64(%rbp)

mov		-48(%rbp), %r10 
mov		-64(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 13), $0 

mov		$0, %r10
mov		%r10, c(%rip)

mov		$.L0L0, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -24(%rbp) 

movq 	$5, -48(%rbp)

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo
mov 	%rax, -56(%rbp) 

mov		$.L0L1, %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -80(%rbp) 

mov 		$0, %rax 
call 	/home/programas/primer_primo_par
mov 	%rax, -96(%rbp) 

mov 		$0, %rax
leave
ret

