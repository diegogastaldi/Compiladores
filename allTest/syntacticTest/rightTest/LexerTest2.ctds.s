.text

.globl	main
.type	main, @function 
main: 
enter   $(8 * 3), $0 

mov 		$0, %rax
leave
ret

