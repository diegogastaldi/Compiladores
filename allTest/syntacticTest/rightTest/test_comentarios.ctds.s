.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 6), $0 

mov		1(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -12(%rbp)

movl 	$1, -16(%rbp)

mov		-16(%rbp), %r10
cmp 	-12(%rbp), %r10

jne 		.falseCond0

movl 	$5, -20(%rbp)

mov		1(%rbp), %r10 
mov		-20(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -4(%rbp)

jmp 		.endIf1

.falseCond0: 

mov		0(%rbp), %rax
mov		%rax, -4(%rbp)

.endIf1: 

mov		-4(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

movl 	$8, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$4, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

call 	pruAritmetica
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

