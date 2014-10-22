.text

.comm x, 8

.globl	method
.type	method, @function 
method: 
enter   $(8 * 4), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

mov 		x(%rip), %r10 
mov		%r10, -24(%rbp) 

mov		-16(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 1), $0 

mov		$0, %r10
mov		%r10, x(%rip)

mov 		$0, %rax
leave
ret

