.FL1: 
		.float 1.0 

.text

.globl	method
.type	method, @function 
method: 
enter   $(8 * 8), $0 

movss 		%xmm0, -16(%rbp) 
movss 		%xmm1, -8(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -56(%rbp) 

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.falseCondL0

mov	.FL1(%rip), %r10
mov	%r10, -64(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
jp	.L2 
movss		-16(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
jne	.L2 
movq		$1, %rax 
jmp	.L3 
.L2: 
movq		$0, %rax 
.L3: 
mov	%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -32(%rbp)

.falseCondL0: 

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax
leave
ret

