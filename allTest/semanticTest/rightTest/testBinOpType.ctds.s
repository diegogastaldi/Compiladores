.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 3), $0 
mov 		%rdi, -4(%rbp) 

movl 	$1.0, -8(%rbp)

mov		-4(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -12(%rbp)

mov		-12(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 4), $0 

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	inc
mov 	%rax, -8(%rbp) 

mov		-8(%rbp), %r10 
mov		-4(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -8(%rbp)

mov 		$0, %rax
leave
ret

