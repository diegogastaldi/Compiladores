.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 5), $0 

movl 	$90, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$7, -16(%rbp)

mov		-16(%rbp), %rax 
cltd
idivl	-4(%rbp)
mov		%rax, -20(%rbp)

mov		-20(%rbp), %rax
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

