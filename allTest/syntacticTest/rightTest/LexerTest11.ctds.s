.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 43), $0 
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
mov 		24(%rbp), %r10
mov 		%r10, -80(%rbp) 
mov 		32(%rbp), %r10
mov 		%r10, -88(%rbp) 
mov 		40(%rbp), %r10
mov 		%r10, -96(%rbp) 
mov 		48(%rbp), %r10
mov 		%r10, -104(%rbp) 
mov 		56(%rbp), %r10
mov 		%r10, -112(%rbp) 
mov 		64(%rbp), %r10
mov 		%r10, -120(%rbp) 

movq 	$0, -240(%rbp)

mov		-240(%rbp), %r10
mov		%r10, -120(%rbp)

movq 	$0, -248(%rbp)

mov		-248(%rbp), %r10
mov		%r10, -112(%rbp)

movq 	$0, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -104(%rbp)

movq 	$0, -264(%rbp)

mov		-264(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$0, -272(%rbp)

mov		-272(%rbp), %r10
mov		%r10, -88(%rbp)

movq 	$0, -280(%rbp)

mov		-280(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$0, -288(%rbp)

mov		-288(%rbp), %r10
mov		%r10, -72(%rbp)

movq 	$0, -296(%rbp)

mov		-296(%rbp), %r10
mov		%r10, -64(%rbp)

movq 	$0, -304(%rbp)

mov		-304(%rbp), %r10
mov		%r10, -56(%rbp)

movq 	$0, -312(%rbp)

mov		-312(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$0, -320(%rbp)

mov		-320(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$0, -328(%rbp)

mov		-328(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$0, -336(%rbp)

mov		-336(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -344(%rbp)

mov		-344(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 35), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq		$0, %r10
mov		%r10, -48(%rbp)

movq		$0, %r10
mov		%r10, -56(%rbp)

movq		$0, %r10
mov		%r10, -64(%rbp)

movq		$0, %r10
mov		%r10, -72(%rbp)

movq		$0, %r10
mov		%r10, -80(%rbp)

movq		$0, %r10
mov		%r10, -88(%rbp)

movq		$0, %r10
mov		%r10, -96(%rbp)

movq		$0, %r10
mov		%r10, -104(%rbp)

movq		$0, %r10
mov		%r10, -112(%rbp)

movq		$0, %r10
mov		%r10, -120(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov		-32(%rbp), %r10
mov	 	%r10, %rdx

mov		-40(%rbp), %r10
mov	 	%r10, %rcx

mov		-48(%rbp), %r10
mov	 	%r10, %r8

mov		-56(%rbp), %r10
mov	 	%r10, %r9

mov		-64(%rbp), %r10
mov	 	%r10, -184(%rbp)

mov		-72(%rbp), %r10
mov	 	%r10, -192(%rbp)

mov		-80(%rbp), %r10
mov	 	%r10, -200(%rbp)

mov		-88(%rbp), %r10
mov	 	%r10, -208(%rbp)

mov		-96(%rbp), %r10
mov	 	%r10, -216(%rbp)

mov		-104(%rbp), %r10
mov	 	%r10, -224(%rbp)

mov		-112(%rbp), %r10
mov	 	%r10, -232(%rbp)

mov		-120(%rbp), %r10
mov	 	%r10, -240(%rbp)

mov 		$0, %rax 
call 	inc
mov 	%rax, -248(%rbp) 

mov		-248(%rbp), %r10
mov		%r10, -128(%rbp)

mov		-128(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -272(%rbp) 

mov 		$0, %rax
leave
ret

