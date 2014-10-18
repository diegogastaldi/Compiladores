.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 19), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 
mov 		%rdx, -32(%rbp) 
mov 		%rcx, -40(%rbp) 
mov 		%r8, -48(%rbp) 
mov 		%r9, -56(%rbp) 
mov 		8(%rbp), %r10
mov 		%r10, -64(%rbp) 
mov 		16(%rbp), %r10
mov 		%r10, -72(%rbp) 

movq 	$1.0, -144(%rbp)

mov		-72(%rbp), %r10 
mov		-144(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 14), $0 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov		-24(%rbp), %r10
mov	 	%r10, %rdx

mov		-24(%rbp), %r10
mov	 	%r10, %rcx

mov		-24(%rbp), %r10
mov	 	%r10, %r8

mov		-24(%rbp), %r10
mov	 	%r10, %r9

mov		-24(%rbp), %r10
mov	 	%r10, -80(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, -88(%rbp)

mov 		$0, %rax 
call 	inc
mov 	%rax, -96(%rbp) 

mov		-96(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		$0, %rax
leave
ret

