.L0L0: 
		.string "%f" 

.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 17), $0 
mov 		%rdi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$1.0, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$8, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$699.0, -64(%rbp)

mov		-64(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2, -80(%rbp)

mov		-32(%rbp), %r10 
mov		-80(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$2, -96(%rbp)

mov		-32(%rbp), %rax 
cltd
idivq	-96(%rbp) 
mov		%rax, -104(%rbp)

mov		-16(%rbp), %rax 
cltd
idivq	-104(%rbp) 
mov		%rax, -112(%rbp)

mov		-24(%rbp), %rax 
cltd
idivq	-112(%rbp) 
mov		%rax, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2, -128(%rbp)

mov		-128(%rbp), %rax 
cltd
idivq	-24(%rbp)
mov		%rax, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 9), $0 

movq 	$3.0, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -40(%rbp) 

mov		$.L0L0, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -64(%rbp) 

mov 		$0, %rax
leave
ret

