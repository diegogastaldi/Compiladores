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

mov		-16(%rbp), %r10
mov		%r10, -8(%rbp)

mov 		$0, %rax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(4 * 7), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo

movl 	$1, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-20(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -28(%rbp)

mov		-28(%rbp), %r10
mov		%r10, -8(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

