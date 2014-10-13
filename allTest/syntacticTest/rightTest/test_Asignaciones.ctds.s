.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 15), $0 


mov		$1, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$3, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	pruAritmetica
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

