.text

.comm x, 4

.globl	method
.type	method, @function 
method: 
enter   $(4 * 2), $0 

mov 		x(%rip), %r10 
mov		%r10, -8(%rbp) 

mov		-8(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -12(%rbp)

mov		-12(%rbp), %r10
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

