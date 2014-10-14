.text

.comm y, 4

.globl	method
.type	method, @function 
method: 
enter   $(4 * 1), $0 

movl 	$2.0, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	main2
.type	main2, @function 
main2: 
enter   $(4 * 5), $0 
mov 		%rdi, -8(%rbp) 

call 	method
mov 	%rax, -12(%rbp) 

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, null(%rbp)

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

