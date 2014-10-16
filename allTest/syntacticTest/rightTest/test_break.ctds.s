.L0L2: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(4 * 10), $0 
mov 		%rdi, -8(%rbp) 

movl 	$0, -20(%rbp)

mov		-20(%rbp), %r10
mov		%r10, -12(%rbp)

movl 	$1, -24(%rbp)

mov		-12(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -28(%rbp)

mov		-28(%rbp), %r10
mov		%r10, -12(%rbp)

movl 	$0, -32(%rbp)

mov		-8(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.falseCondL0

jmp 		.endIfL1

.falseCondL0: 

.endIfL1: 

mov		-12(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

mov		$.L0L2, %r10
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

