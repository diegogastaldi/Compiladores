.text

.globl	method1
.type	method1, @function 
method1: 
enter   $(4 * 2), $0 
mov 		%rdi, -4(%rbp) 

movl 	$1.0, -8(%rbp)

mov		-8(%rbp), %rax
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

movl 	$2.0, -4(%rbp)

mov		-4(%rbp), %rax
mov		%rax, -4(%rbp)

mov		-4(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

call 	method3
mov 	%rax, -4(%rbp) 

movl 	$2, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

call 	method1
mov 	%rax, -20(%rbp) 

mov		-4(%rbp), %r10 
mov		-20(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -4(%rbp)

call 	method2

mov 		$0, %rax
leave
ret

