.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 42), $0 
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
mov 		12(%rbp), %r10
mov 		%r10, -40(%rbp) 
mov 		16(%rbp), %r10
mov 		%r10, -44(%rbp) 
mov 		20(%rbp), %r10
mov 		%r10, -48(%rbp) 
mov 		24(%rbp), %r10
mov 		%r10, -52(%rbp) 
mov 		28(%rbp), %r10
mov 		%r10, -56(%rbp) 
mov 		32(%rbp), %r10
mov 		%r10, -60(%rbp) 

movl 	$0, -64(%rbp)

mov		-64(%rbp), %rax
mov		%rax, -60(%rbp)

movl 	$0, -68(%rbp)

mov		-68(%rbp), %rax
mov		%rax, -56(%rbp)

movl 	$0, -72(%rbp)

mov		-72(%rbp), %rax
mov		%rax, -52(%rbp)

movl 	$0, -76(%rbp)

mov		-76(%rbp), %rax
mov		%rax, -48(%rbp)

movl 	$0, -80(%rbp)

mov		-80(%rbp), %rax
mov		%rax, -44(%rbp)

movl 	$0, -84(%rbp)

mov		-84(%rbp), %rax
mov		%rax, -40(%rbp)

movl 	$0, -88(%rbp)

mov		-88(%rbp), %rax
mov		%rax, -36(%rbp)

movl 	$0, -92(%rbp)

mov		-92(%rbp), %rax
mov		%rax, -32(%rbp)

movl 	$0, -96(%rbp)

mov		-96(%rbp), %rax
mov		%rax, -28(%rbp)

movl 	$0, -100(%rbp)

mov		-100(%rbp), %rax
mov		%rax, -24(%rbp)

movl 	$0, -104(%rbp)

mov		-104(%rbp), %rax
mov		%rax, -20(%rbp)

movl 	$0, -108(%rbp)

mov		-108(%rbp), %rax
mov		%rax, -16(%rbp)

movl 	$0, -112(%rbp)

mov		-112(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$0, -116(%rbp)

mov		-116(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 17), $0 

mov		-60(%rbp), %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov		-52(%rbp), %r10
mov	 	%r10, %rdx

mov		-48(%rbp), %r10
mov	 	%r10, %rcx

mov		-44(%rbp), %r10
mov	 	%r10, %r8

mov		-40(%rbp), %r10
mov	 	%r10, %r9

mov		-36(%rbp), %r10
mov	 	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, -36(%rbp)

mov		-28(%rbp), %r10
mov	 	%r10, -40(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, -44(%rbp)

mov		-20(%rbp), %r10
mov	 	%r10, -48(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, -52(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, -56(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, -60(%rbp)

call 	inc
mov 	%rax, -64(%rbp) 

mov		-64(%rbp), %rax
mov		%rax, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

