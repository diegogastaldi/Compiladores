.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 6), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$90, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$7, -32(%rbp)

mov		-16(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rdx, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax 

call 	pruAritmetica
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

