.L04: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(4 * 13), $0 

movl 	$0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -4(%rbp)

.beginWhile1: 

movl 	$10, -20(%rbp)

mov		-4(%rbp), %rax
cmp		-20(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -24(%rbp)

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10
cmp 	-24(%rbp), %r10

jne 		.endWhile0

movl 	$1, -32(%rbp)

mov		-4(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -36(%rbp)

mov		-36(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$2.3, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$0, -44(%rbp)

mov		0(%rbp), %rax
cmp		-44(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -48(%rbp)

movl 	$1, -52(%rbp)

mov		-52(%rbp), %r10
cmp 	-48(%rbp), %r10

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

