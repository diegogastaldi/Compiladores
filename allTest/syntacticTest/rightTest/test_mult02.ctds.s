.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
enter   $(8 * 5), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$5, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$7, -32(%rbp)

mov		-16(%rbp), %r10 
mov		-32(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

mov 		$0, %rax 
call 	pruMult
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -40(%rbp) 

mov 		$0, %rax
leave
ret

