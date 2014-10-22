.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 5), $0 

movq 	$90, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$7, -32(%rbp)

mov		-32(%rbp), %rax 
cltd
idivq	-16(%rbp)
mov		%rax, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -40(%rbp) 

mov 		$0, %rax
leave
ret

