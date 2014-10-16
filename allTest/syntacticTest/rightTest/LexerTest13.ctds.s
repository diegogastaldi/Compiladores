.text

.globl	method
.type	method, @function 
method: 
enter   $(4 * 10), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-8(%rbp), %rax
cmp		-12(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
cmp 	-16(%rbp), %r10

jne 		.falseCondL0

movl 	$1, -24(%rbp)

movl 	$1.0, -28(%rbp)

mov 		-12(%rbp), %rax
cmp		-28(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -32(%rbp)

cmpl		$0, -24(%rbp)
je 		.L1
cmpl		$0, -32(%rbp)
je 		.L1
mov		$1, %r10
jmp		.L2
.L1:
mov		$0, %r10
.L2:
mov		%r10, -36(%rbp)

mov		-36(%rbp), %r10
mov		%r10, -16(%rbp)

.falseCondL0: 

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

