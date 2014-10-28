.text

.comm a, 8

.comm b, 8

.globl	method
.type	method, @function 
method: 
enter   $(8 * 2), $0 

mov 		$0, %rax
leave
ret

.globl	method2
.type	method2, @function 
method2: 
enter   $(8 * 2), $0 

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 

mov		$0, %r10
mov		%r10, a(%rip)

mov		$0, %r10
mov		%r10, b(%rip)

mov 		$0, %rax
leave
ret

