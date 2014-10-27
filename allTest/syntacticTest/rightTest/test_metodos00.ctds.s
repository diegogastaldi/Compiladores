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

mov 		$0, %rax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(8 * 9), $0 
mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo
mov 	%rax, -40(%rbp) 

movq 	$1, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-56(%rbp), %r10 
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
enter   $(8 * 1), $0 

mov		$0, %r10
mov		%r10, c(%rip)

mov 		$0, %rax
leave
ret

