.FL3: 
		.float 3.0 

.L0L2: 
		.string "%f" 

.FL1: 
		.float 699.0 

.FL0: 
		.float 1.0 

.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 15), $0 
mov 		%rdi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$8, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL1(%rip), %r10
mov	%r10, -64(%rbp)

movss		-64(%rbp), %xmm0 
addss		-24(%rbp), %xmm0 
movss		%xmm0, -72(%rbp) 

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

movss		-32(%rbp), %xmm0 
divss		-96(%rbp), %xmm0 
movss		%xmm0, -104(%rbp) 

movss		-16(%rbp), %xmm0 
divss		-104(%rbp), %xmm0 
movss		%xmm0, -112(%rbp) 

movss		-24(%rbp), %xmm0 
divss		-112(%rbp), %xmm0 
movss		%xmm0, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -24(%rbp)

movss		-16(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 8), $0 

mov	.FL3(%rip), %r10
mov	%r10, -24(%rbp)

movss		-24, %xmm0

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -32(%rbp) 

mov		$.L0L2, %r10
mov	 	%r10, %rdi

movss		-32, %xmm1

mov 		$0, %rax 
call 	printf
mov 	%rax, -56(%rbp) 

mov 		$0, %rax
leave
ret
