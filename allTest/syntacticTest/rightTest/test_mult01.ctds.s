.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
enter   $(4 * 8), $0 
mov 		%rdi, -8(%rbp) 

movl 	$5, -12(%rbp)

mov		-12(%rbp), %r10
mov		%r10, -12(%rbp)

movl 	$2000, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -16(%rbp)

movl 	$1000, -20(%rbp)

mov		-8(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -24(%rbp)

mov		-20(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -28(%rbp)

mov		-12(%rbp), %r10 
mov		-28(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -32(%rbp)

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$2, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	pruMult
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

