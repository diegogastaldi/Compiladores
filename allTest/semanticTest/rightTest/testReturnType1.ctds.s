.text

.globl	a
.type	a, @function 
a: 
enter   $(4 * 1), $0 

movl 	$0, -4(%rbp)

mov		-4(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

