.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 3), $0 

movl 	$90, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$7, -12(%rbp)

mov		-12(%rbp), %rax 
cltd
idivl	-8(%rbp)
mov		%rax, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 3), $0 

call 	pruAritmetica
mov 	%rax, -8(%rbp) 

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

