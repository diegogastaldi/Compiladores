.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 10), $0 

mov		1(%rbp), %rax
cmp		0(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -12(%rbp)

movl 	$1, -16(%rbp)

mov		-16(%rbp), %r10
cmp 	-12(%rbp), %r10

jne 		.falseCond0

mov		1(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 	-20(%rbp), %r10

jne 		.falseCond1

mov		0(%rbp), %r10 
mov		1(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -4(%rbp)

jmp 		.endIf2

.falseCond1: 

mov		1(%rbp), %r10 
mov		0(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -4(%rbp)

.endIf2: 

jmp 		.endIf3

.falseCond0: 

movl 	$5, -36(%rbp)

mov		1(%rbp), %r10 
mov		-36(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, -4(%rbp)

.endIf3: 

mov		-4(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 19), $0 

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

call 	printf

movl 	$4, -36(%rbp)

mov		-36(%rbp), %r10
mov	 	%r10, %rdi

movl 	$4, -44(%rbp)

mov		-44(%rbp), %r10
mov	 	%r10, %rsi

call 	pruAritmetica
mov 	%rax, -52(%rbp) 

mov		-52(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

movl 	$5, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

movl 	$8, -72(%rbp)

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

call 	pruAritmetica
mov 	%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

