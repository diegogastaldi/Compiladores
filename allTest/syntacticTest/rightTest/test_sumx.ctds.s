.text

.globl	sumx
.type	sumx, @function 
sumx: 
enter   $(4 * 10), $0 

movl 	$0.0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$0, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -8(%rbp)

.beginWhile1: 

mov		-8(%rbp), %rax
cmp		0(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -24(%rbp)

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10
cmp 	-24(%rbp), %r10

jne 		.endWhile0

mov		-4(%rbp), %r10 
mov		1(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$1, -36(%rbp)

mov		-8(%rbp), %r10 
mov		-36(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.beginWhile1

.endWhile0: 

mov		-4(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

movl 	$2, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$6.0, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

call 	sumx
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

