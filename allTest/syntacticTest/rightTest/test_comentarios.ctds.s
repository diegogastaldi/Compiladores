.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 8), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
cmp 	-16(%rbp), %r10

jne 		.falseCondL0

movl 	$5, -24(%rbp)

mov		-12(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.endIfL1

.falseCondL0: 

mov		-8(%rbp), %rax
mov		%rax, -16(%rbp)

.endIfL1: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

movl 	$4, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$8, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

