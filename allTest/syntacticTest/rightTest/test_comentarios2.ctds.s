.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 9), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

mov		-8(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.falseCondL0

mov		-8(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.endIfL1

.falseCondL0: 

mov		0(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL1: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

movq 	$4, -16(%rbp)

movq 	$8, -24(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	pruAritmetica
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

