.text

.comm c, 4

.globl	alo
.type	alo, @function 
alo: 
enter   $(4 * 4), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -8(%rbp)

mov 		$0, %rax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(4 * 5), $0 
mov 		%rdi, -8(%rbp) 

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo

movl 	$1, -16(%rbp)

mov		-8(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 10), $0 

movl 	$7, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$8.0, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, null(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo2
mov 	%rax, -20(%rbp) 

mov		-20(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$3, -28(%rbp)

mov		-28(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	alo2
mov 	%rax, -40(%rbp) 

mov		-40(%rbp), %rax
mov		%rax, -8(%rbp)

mov 		$0, %rax
leave
ret

