.text

.comm a, 8

.globl	main
.type	main, @function 
main: 
enter   $(8 * 1), $0 

mov 		$0, %rax
leave
ret

