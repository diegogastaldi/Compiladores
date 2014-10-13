.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
enter   $(4 * 9), $0 

movl 	$5, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$2000, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$1000, -24(%rbp)

mov		0(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -28(%rbp)

mov		-24(%rbp), %r10 
mov		-28(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -32(%rbp)

mov		-4(%rbp), %r10 
mov		-32(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -36(%rbp)

mov		-36(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$2, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	pruMult
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

