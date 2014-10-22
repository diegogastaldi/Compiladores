.text

.globl	method
.type	method, @function 
method: 
enter   $(8 * 12), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

mov		-16(%rbp), %rax
cmp		-24(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.falseCondL0

movq 	$1, -72(%rbp)

movq 	$1.0, -80(%rbp)

mov 		-24(%rbp), %rax
cmp		-80(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -88(%rbp)

cmpq		$0, -72(%rbp)
je 		.L1
cmpq		$0, -88(%rbp)
je 		.L1
mov		$1, %r10
jmp		.L2
.L1:
mov		$0, %r10
.L2:
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

