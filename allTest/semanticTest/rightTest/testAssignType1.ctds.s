.text

.comm y, 4

.globl	method
.type	method, @function 
method: 
enter   $(4 * 1), $0 

movl 	$2.0, -4(%rbp)

mov		-4(%rbp), %rax
leave
ret

.globl	main2
.type	main2, @function 
main2: 
enter   $(4 * 4), $0 
mov 		%rdi, -4(%rbp) 

call 	method
mov 	%rax, -8(%rbp) 

mov		-4(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
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

