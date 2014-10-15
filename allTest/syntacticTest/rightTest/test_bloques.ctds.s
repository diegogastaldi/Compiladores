.L0L4: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(4 * 11), $0 
mov 		%rdi, -8(%rbp) 

movl 	$0, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -12(%rbp)

.beginWhileL1: 

movl 	$10, -16(%rbp)

mov		-12(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 	-20(%rbp), %r10

jne 		.endWhileL0

movl 	$1, -28(%rbp)

mov		-12(%rbp), %r10 
mov		-28(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$0, -36(%rbp)

mov		-8(%rbp), %rax
cmp		-36(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -40(%rbp)

movl 	$1, -44(%rbp)

mov		-44(%rbp), %r10
cmp 	-40(%rbp), %r10

jne 		.falseCondL2

jmp 		.endWhileL0

jmp 		.endIfL3

.falseCondL2: 

jmp 		.beginWhileL1

.endIfL3: 

jmp 		.beginWhileL1

.endWhileL0: 

mov		-12(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 6), $0 

mov		$.L0L4, %r10
mov	 	%r10, %rdi

movl 	$1, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	breaks
mov 	%rax, -20(%rbp) 

mov		-20(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

