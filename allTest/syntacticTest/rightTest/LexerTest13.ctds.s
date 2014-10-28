.FL3: 
		.float 0 

.FL2: 
		.float 1 

.FL1: 
		.float 1.0 

.text

.globl	method
.type	method, @function 
method: 
enter   $(8 * 14), $0 
movss 		%xmm0, -8(%rbp) 
movss 		%xmm1, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movss		-8(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -56(%rbp) 

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.falseCondL0

movq 	$1, -72(%rbp)

mov	.FL1(%rip), %r10
mov	%r10, -80(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-80(%rbp), %xmm0 
jp	.L4 
movss		-16(%rbp), %xmm0 
ucomiss		-80(%rbp), %xmm0 
jne	.L4 
mov		.FL2(%rip), %rax 
jmp	.L5 
.L4: 
mov	.FL3, %rax 
.L5: 
mov	%rax, -88(%rbp) 

cmpq		$0, -72(%rbp)
je 		.L6
cmpq		$0, -88(%rbp)
je 		.L6
mov		$1, %r10
jmp		.L7
.L6:
mov		$0, %r10
.L7:
mov		%r10, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

.falseCondL0: 

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 3), $0 

mov 		$0, %rax
leave
ret

