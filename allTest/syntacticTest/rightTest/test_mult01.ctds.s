.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
enter   $(8 * 11), $0 
mov 		%rdi, -16(%rbp) 

movq 	$5, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2000, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1000, -64(%rbp)

mov		-16(%rbp), %r10 
mov		-32(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -72(%rbp)

mov		-64(%rbp), %r10 
mov		-72(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -80(%rbp)

mov		-24(%rbp), %r10 
mov		-80(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -88(%rbp)

mov		-88(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 8), $0 

movq 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	pruMult
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -56(%rbp) 

mov 		$0, %rax
leave
ret

