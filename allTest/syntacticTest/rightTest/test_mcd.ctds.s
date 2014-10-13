.L04: 
		.string "mcd%d" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(4 * 11), $0 

mov		1(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 	-20(%rbp), %r10

jne 		.falseCond0

mov		1(%rbp), %rax
mov		%rax, -4(%rbp)

mov		0(%rbp), %rax
mov		%rax, -12(%rbp)

jmp 		.endIf1

.falseCond0: 

mov		0(%rbp), %rax
mov		%rax, -4(%rbp)

mov		1(%rbp), %rax
mov		%rax, -12(%rbp)

.endIf1: 

movl 	$1, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -8(%rbp)

.beginWhile3: 

movl 	$0, -32(%rbp)

mov		-8(%rbp), %rax
cmp		-32(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.endWhile2

mov		-12(%rbp), %rax 
cltd
idivl	-4(%rbp)
mov		%rax, -44(%rbp)

mov		-44(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -4(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -12(%rbp)

jmp 		.beginWhile3

.endWhile2: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 8), $0 

mov		-4(%rbp), %rax
leave
ret

movl 	$9, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

call 	maxcomdiv
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L04, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

