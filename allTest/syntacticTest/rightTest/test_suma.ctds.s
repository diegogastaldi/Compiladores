.text

.globl	suma
.type	suma, @function 
suma: 
enter   $(4 * 11), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$0, -16(%rbp)

mov 		-12(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 	-20(%rbp), %r10

jne 		.falseCondL0

mov		-8(%rbp), %rax
leave
ret

jmp 		.endIfL1

.falseCondL0: 

movl 	$0, -28(%rbp)

mov 		-8(%rbp), %rax
cmp		-28(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -32(%rbp)

movl 	$1, -36(%rbp)

mov		-36(%rbp), %r10
cmp 	-32(%rbp), %r10

jne 		.falseCondL2

mov		-12(%rbp), %rax
leave
ret

jmp 		.endIfL3

.falseCondL2: 

mov		-12(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.endIfL3: 

.endIfL1: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

movl 	$4, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$9, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	suma
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

