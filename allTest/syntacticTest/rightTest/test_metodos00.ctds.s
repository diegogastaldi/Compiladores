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

mov 		$0, %rax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(4 * 6), $0 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	alo

movl 	$1, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-16(%rbp), %r10 
mov		-20(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, 0(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 1), $0 

mov 		$0, %rax
leave
ret

