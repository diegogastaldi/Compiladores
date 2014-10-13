.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
enter   $(4 * 5), $0 

movl 	$5, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$7, -16(%rbp)

mov		-4(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -20(%rbp)

mov		-20(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 3), $0 

call 	pruMult
mov 	%rax, -8(%rbp) 

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

