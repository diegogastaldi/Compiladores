.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 14), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$8, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -16(%rbp)

movl 	$699, -20(%rbp)

mov		-20(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$2, -28(%rbp)

mov		-16(%rbp), %r10 
mov		-28(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -16(%rbp)

movl 	$2, -36(%rbp)

mov		-16(%rbp), %rax 
cltd
idivl	-36(%rbp) 
mov		%rax, -40(%rbp)

mov		-8(%rbp), %rax 
cltd
idivl	-40(%rbp) 
mov		%rax, -44(%rbp)

mov		-12(%rbp), %rax 
cltd
idivl	-44(%rbp) 
mov		%rax, -48(%rbp)

mov		-48(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$2, -52(%rbp)

mov		-52(%rbp), %rax 
cltd
idivl	-12(%rbp)
mov		%rax, -56(%rbp)

mov		-56(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %rax
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

