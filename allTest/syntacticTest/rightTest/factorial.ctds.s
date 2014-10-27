.SL0: 
		.string "%d" 

.text

.globl	met
.type	met, @function 
met: 
enter   $(8 * 5), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

mov		-24(%rbp), %r10 
mov		-16(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 8), $0 

mov 		$0, %rax 
call 	met
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$2, -40(%rbp)

mov		-16(%rbp), %r10 
mov		-40(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -56(%rbp) 

mov 		$0, %rax
leave
ret

