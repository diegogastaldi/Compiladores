.text

.globl	method
.type	method, @function 
method: 
enter   $(4 * 1), $0 

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 1), $0 

mov 		$0, %rax
leave
ret

