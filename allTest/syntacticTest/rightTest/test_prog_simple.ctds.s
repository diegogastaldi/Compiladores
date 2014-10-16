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

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

