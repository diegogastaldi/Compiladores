.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 18), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 
mov 		%rdx, -16(%rbp) 
mov 		%rcx, -20(%rbp) 
mov 		%r8, -24(%rbp) 
mov 		%r9, -28(%rbp) 
mov 		4(%rbp), %r10
mov 		%r10, -32(%rbp) 
mov 		8(%rbp), %r10
mov 		%r10, -36(%rbp) 

movl 	$1, -40(%rbp)

mov		-36(%rbp), %r10 
mov		-40(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -44(%rbp)

mov		-44(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 11), $0 

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

mov		-12(%rbp), %r10
mov	 	%r10, %rsi

mov		-12(%rbp), %r10
mov	 	%r10, %rdx

mov		-12(%rbp), %r10
mov	 	%r10, %rcx

mov		-12(%rbp), %r10
mov	 	%r10, %r8

mov		-12(%rbp), %r10
mov	 	%r10, %r9

mov		-12(%rbp), %r10
mov	 	%r10, -32(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, -36(%rbp)

mov 		$0, %rax 
call 	inc
mov 	%rax, -40(%rbp) 

mov		-40(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -12(%rbp)

mov 		$0, %rax
leave
ret

