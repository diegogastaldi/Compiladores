.text

.comm y, 8

.globl	method
.type	method, @function 
method: 
enter   $(8 * 2), $0 

movq 	$2.0, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main2
.type	main2, @function 
main2: 
enter   $(8 * 6), $0 
mov 		%rdi, -16(%rbp) 

mov 		$0, %rax 
call 	method
mov 	%rax, -32(%rbp) 

mov		-16(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, y(%rip)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 1), $0 

mov 		$0, %rax
leave
ret

