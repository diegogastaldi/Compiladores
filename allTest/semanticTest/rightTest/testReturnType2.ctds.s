.text

.globl	a
.type	a, @function 
a: 
enter   $(8 * 2), $0 


movq 	$0, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax
leave
ret

