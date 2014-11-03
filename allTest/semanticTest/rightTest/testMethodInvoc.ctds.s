.FL1: 
		.float 2.0 

.FL0: 
		.float 1.0 

.text

.globl	method1
.type	method1, @function 
method1: 
enter   $(8 * 4), $0 

mov 		%rdi, -8(%rbp) 

mov	.FL0(%rip), %r10
mov	%r10, -32(%rbp)

movss		-32(%rbp), %xmm0
leave
ret

.globl	method2
.type	method2, @function 
method2: 
enter   $(8 * 2), $0 


mov 		$0, %rax
leave
ret

.globl	method3
.type	method3, @function 
method3: 
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

mov	.FL1(%rip), %r10
mov	%r10, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movss		-16(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 


mov 		$0, %rax 

call 	method3
movss 	%xmm0, -24(%rbp) 

movq 	$2, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	method1
movss 	%xmm0, -40(%rbp) 

movss		-24(%rbp), %xmm0 
addss		-40(%rbp), %xmm0 
movss		%xmm0, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		$0, %rax 

call 	method2

mov 		$0, %rax
leave
ret

