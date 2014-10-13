.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 15), $0 

movl 	$0, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, 13(%rbp)

movl 	$0, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, 12(%rbp)

movl 	$0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, 11(%rbp)

movl 	$0, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, 10(%rbp)

movl 	$0, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, 9(%rbp)

movl 	$0, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, 8(%rbp)

movl 	$0, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, 7(%rbp)

movl 	$0, -36(%rbp)

mov		-36(%rbp), %rax
mov		%rax, 6(%rbp)

movl 	$0, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, 5(%rbp)

movl 	$0, -44(%rbp)

mov		-44(%rbp), %rax
mov		%rax, 4(%rbp)

movl 	$0, -48(%rbp)

mov		-48(%rbp), %rax
mov		%rax, 3(%rbp)

movl 	$0, -52(%rbp)

mov		-52(%rbp), %rax
mov		%rax, 2(%rbp)

movl 	$0, -56(%rbp)

mov		-56(%rbp), %rax
mov		%rax, 1(%rbp)

movl 	$0, -60(%rbp)

mov		-60(%rbp), %rax
mov		%rax, 0(%rbp)

mov		0(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 32), $0 

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov		-52(%rbp), %r10
mov	 	%r10, %rsi

mov		-48(%rbp), %r10
mov	 	%r10, %rdx

mov		-44(%rbp), %r10
mov	 	%r10, %rcx

mov		-40(%rbp), %r10
mov	 	%r10, %r8

mov		-36(%rbp), %r10
mov	 	%r10, %r9

mov		-32(%rbp), %r10
mov	 	%r10, -92(%rbp)

mov		-28(%rbp), %r10
mov	 	%r10, -96(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, -100(%rbp)

mov		-20(%rbp), %r10
mov	 	%r10, -104(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, -108(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, -112(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, -116(%rbp)

mov		-4(%rbp), %r10
mov	 	%r10, -120(%rbp)

call 	inc
mov 	%rax, -124(%rbp) 

mov		-124(%rbp), %rax
mov		%rax, -60(%rbp)

mov		-60(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

