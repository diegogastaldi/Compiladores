.text

.comm x, 4

.globl	method
.type	method, @function 
method: 
enter   $(4 * 1), $0 

mov		-4(%rbp), %r10 
mov		-4(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -4(%rbp)

mov		-4(%rbp), %rax
mov		%rax, -4(%rbp)

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

