.text

.comm a, 4

.comm b, 4

.globl	method
.type	method, @function 
method: 
enter   $(4 * 2), $0 
mov 		%rdi, -8(%rbp) 

mov 		$0, %rax
leave
ret

.globl	method2
.type	method2, @function 
method2: 
enter   $(4 * 0), $0 

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

