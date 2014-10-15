.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 12), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
cmp 	-16(%rbp), %r10

jne 		.falseCondL0

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -24(%rbp)

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10
cmp 	-24(%rbp), %r10

jne 		.falseCondL1

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.endIfL2

.falseCondL1: 

mov		-12(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -36(%rbp)

mov		-36(%rbp), %rax
mov		%rax, -16(%rbp)

.endIfL2: 

jmp 		.endIfL3

.falseCondL0: 

movl 	$5, -40(%rbp)

mov		-12(%rbp), %r10 
mov		-40(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -44(%rbp)

mov		-44(%rbp), %rax
mov		%rax, -16(%rbp)

.endIfL3: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 21), $0 

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
call 	printf

movl 	$4, -36(%rbp)

mov		-36(%rbp), %r10
mov	 	%r10, %rdi

movl 	$4, -44(%rbp)

mov		-44(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -52(%rbp) 

mov		-52(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

movl 	$8, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

movl 	$5, -72(%rbp)

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

