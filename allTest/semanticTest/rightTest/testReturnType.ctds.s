.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 4), $0 

mov 		%rdi, -8(%rbp) 

movq 	$0, -32(%rbp)

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax
leave
ret

