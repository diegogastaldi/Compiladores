.L0L1: 
		.string "%d" 

.L0L0: 
		.string "-estoEsUnaPrueba" 

.text

.comm c, 4

.globl	alo
.type	alo, @function 
alo: 
enter   $(4 * 4), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	alo_2
.type	alo_2, @function 
alo_2: 
enter   $(4 * 10), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo
mov 	%rax, -28(%rbp) 

movl 	$1, -36(%rbp)

mov		-28(%rbp), %r10 
mov		-36(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, -8(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

mov		$.L0L0, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov		$.L0L1, %r10
mov	 	%r10, %rdi

movl 	$5, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax 
call 	/home/programas/primer_primo_par

mov 		$0, %rax
leave
ret

