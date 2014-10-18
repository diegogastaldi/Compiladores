.text

.globl	method1
.type	method1, @function 
method1: 
enter   $(8 * 4), $0 
mov 		%rdi, -16(%rbp) 

movq 	$1.0, -32(%rbp)

mov		-32(%rbp), %rax
leave
ret

.globl	method2
.type	method2, @function 
method2: 
enter   $(8 * 1), $0 

mov 		$0, %rax
leave
ret

.globl	method3
.type	method3, @function 
method3: 
enter   $(8 * 3), $0 

movq 	$2.0, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 9), $0 

mov 		$0, %rax 
call 	method3
mov 	%rax, -24(%rbp) 

movq 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	method1
mov 	%rax, -56(%rbp) 

mov		-24(%rbp), %r10 
mov		-56(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		$0, %rax 
call 	method2

mov 		$0, %rax
leave
ret

