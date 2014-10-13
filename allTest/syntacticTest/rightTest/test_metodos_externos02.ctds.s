.L05: 
		.string "%d%f" 

.L04: 
		.string "mcd" 

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
mov		%rax, -8(%rbp)

mov		0(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.endIf1

.falseCond0: 

mov		0(%rbp), %rax
mov		%rax, -8(%rbp)

mov		1(%rbp), %rax
mov		%rax, -16(%rbp)

.endIf1: 

movl 	$1, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -12(%rbp)

.beginWhile3: 

movl 	$0, -32(%rbp)

mov		-12(%rbp), %rax
cmp		-32(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.endWhile2

mov		-16(%rbp), %rax 
cltd
idivl	-8(%rbp)
mov		%rax, -44(%rbp)

mov		-44(%rbp), %rax
mov		%rax, -12(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.beginWhile3

.globl	main
.type	main, @function 
main: 
enter   $(4 * 16), $0 

.endWhile2: 

mov		-8(%rbp), %rax
leave
ret

movl 	$3, -8(%rbp)

movl 	$7, -12(%rbp)

movl 	$6, -16(%rbp)

mov		-12(%rbp), %rax 
cltd
idivl	-16(%rbp) 
mov		%rax, -20(%rbp)

mov		-20(%rbp), %r10 
mov		-4(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-8(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -28(%rbp)

mov		-28(%rbp), %r10
mov	 	%r10, %rdi

movl 	$9, -36(%rbp)

mov		-36(%rbp), %r10
mov	 	%r10, %rdi

movl 	$6, -44(%rbp)

mov		-44(%rbp), %r10
mov	 	%r10, %rsi

call 	maxcomdiv
mov 	%rax, -52(%rbp) 

mov		-52(%rbp), %r10
mov	 	%r10, %rsi

mov		$.L04, %r10
mov	 	%r10, %rdx

mov		$.L05, %r10
mov	 	%r10, %rcx

call 	printf

mov 		$0, %rax
leave
ret

