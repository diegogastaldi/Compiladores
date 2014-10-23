.FL1: 
		.float 1.0 

.text

.globl	method
.type	method, @function 
method: 
enter   $(8 * 12), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
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


cmpq		$0, -72(%rbp)
je 		.L2
cmpq		$0, -88(%rbp)
je 		.L2
mov		$1, %r10
jmp		.L3
.L2:
mov		$0, %r10
.L3:
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
enter   $(8 * 1), $0 

mov 		$0, %rax
leave
ret

