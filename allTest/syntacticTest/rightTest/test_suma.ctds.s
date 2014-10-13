.text

.globl	suma
.type	suma, @function 
suma: 
enter   $(4 * 8), $0 

movl 	$0, -8(%rbp)

mov 		1(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -12(%rbp)

movl 	$1, -16(%rbp)

mov		-16(%rbp), %r10
cmp 	-12(%rbp), %r10

jne 		.falseCond0

mov		0(%rbp), %rax
leave
ret

jmp 		.endIf1

.falseCond0: 

movl 	$0, -20(%rbp)

mov 		0(%rbp), %rax
cmp		-20(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -24(%rbp)

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10
cmp 	-24(%rbp), %r10

jne 		.falseCond2

mov		1(%rbp), %rax
leave
ret

jmp 		.endIf3

.falseCond2: 

mov		1(%rbp), %r10 
mov		0(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
leave
ret

.endIf3: 

.endIf1: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

movl 	$9, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$4, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

call 	suma
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

