.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
enter   $(4 * 3), $0 

movl 	$5, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -8(%rbp)

movl 	$7, -12(%rbp)

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 3), $0 

mov 		$0, %rax 
call 	pruMult
mov 	%rax, -8(%rbp) 

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

