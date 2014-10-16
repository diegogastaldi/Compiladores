.text

.globl	method1
.type	method1, @function 
method1: 
enter   $(4 * 3), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %rax
leave
ret

.globl	method2
.type	method2, @function 
method2: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

.globl	method3
.type	method3, @function 
method3: 
enter   $(4 * 1), $0 

movl 	$2, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

mov 		$0, %rax 
call 	method3
mov 	%rax, -8(%rbp) 

movl 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	method1
mov 	%rax, -24(%rbp) 

mov		-8(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -8(%rbp)

mov 		$0, %rax 
call 	method2

mov 		$0, %rax
leave
ret

