.SL0: 
		.string "%d %d %d %d %d %d %d %d %d %d %d %d  %d %d" 

.text

.globl	met
.type	met, @function 
met: 
enter   $(8 * 6), $0 


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
enter   $(8 * 6), $0 


mov 		$0, %rax 

call 	met
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$2, -32(%rbp)

mov		-16(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov		-16(%rbp), %r10
mov	 	%r10, %rdx

mov		-16(%rbp), %r10
mov	 	%r10, %rcx

mov		-16(%rbp), %r10
mov	 	%r10, %r8

mov		-16(%rbp), %r10
mov	 	%r10, %r9

mov		-16(%rbp), %r10
mov	 	%r10, 0(%rsp) 

mov		-16(%rbp), %r10
mov	 	%r10, 8(%rsp) 

mov		-16(%rbp), %r10
mov	 	%r10, 16(%rsp) 

mov		-16(%rbp), %r10
mov	 	%r10, 24(%rsp) 

mov		-16(%rbp), %r10
mov	 	%r10, 32(%rsp) 

mov		-16(%rbp), %r10
mov	 	%r10, 40(%rsp) 

mov		-16(%rbp), %r10
mov	 	%r10, 48(%rsp) 

mov		-16(%rbp), %r10
mov	 	%r10, 56(%rsp) 

mov		-16(%rbp), %r10
mov	 	%r10, 64(%rsp) 

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

