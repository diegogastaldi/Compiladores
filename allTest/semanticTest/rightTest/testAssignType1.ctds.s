.FL0: 
		.float 2.0 

.text

.comm y, 8

.globl	method
.type	method, @function 
method: 
enter   $(8 * 4), $0 

mov	.FL0(%rip), %r10
mov	%r10, -16(%rbp)

movss		-16(%rbp), %xmm0
leave
ret

.globl	main2
.type	main2, @function 
main2: 
enter   $(8 * 7), $0 
movss 		%xmm0, -8(%rbp) 

mov 		$0, %rax 

call 	method
movss 	%xmm0, -32(%rbp) 

movss		-8(%rbp), %xmm0 
addss		-32(%rbp), %xmm0 
movss		%xmm0, -40(%rbp) 

mov		-40(%rbp), %r10
mov		%r10, y(%rip)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 3), $0 

mov		$0, %r10
mov		%r10, y(%rip)

mov 		$0, %rax
leave
ret

