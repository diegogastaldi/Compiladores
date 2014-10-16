.text

.globl	sumx
.type	sumx, @function 
sumx: 
enter   $(4 * 11), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$0.0, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -16(%rbp)

movl 	$0, -20(%rbp)

mov		-20(%rbp), %r10
mov		%r10, -20(%rbp)

.beginWhileL1: 

mov		-20(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -24(%rbp)

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10
cmp 	-24(%rbp), %r10

jne 		.endWhileL0

mov		-16(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

movl 	$1, -36(%rbp)

mov		-20(%rbp), %r10 
mov		-36(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -20(%rbp)

jmp 		.beginWhileL1

.endWhileL0: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

movl 	$6.0, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	sumx
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

