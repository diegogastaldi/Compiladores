.L04: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(4 * 11), $0 

movl 	$0, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -4(%rbp)

.beginWhile1: 

movl 	$10, -16(%rbp)

mov		-4(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 	-20(%rbp), %r10

jne 		.endWhile0

movl 	$1, -28(%rbp)

mov		-4(%rbp), %r10 
mov		-28(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$0, -36(%rbp)

mov		0(%rbp), %rax
cmp		-36(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -40(%rbp)

movl 	$1, -44(%rbp)

mov		-44(%rbp), %r10
cmp 	-40(%rbp), %r10

jne 		.falseCond2

jmp 		.endWhile0

jmp 		.endIf3

.falseCond2: 

jmp 		.beginWhile1

.endIf3: 

jmp 		.beginWhile1

.endWhile0: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 6), $0 

mov		-4(%rbp), %rax
leave
ret

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	breaks
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L04, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

