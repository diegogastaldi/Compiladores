.L0L3: 
		.string "y==%d\n" 

.L0L1: 
		.string "y==1\n" 

.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 4), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 11), $0 

mov 		$0, %rax 

mov 	%rax, -8(%rbp) 

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	inc
mov 	%rax, -20(%rbp) 

mov		-20(%rbp), %r10
mov		%r10, -8(%rbp)

movl 	$1, -28(%rbp)

mov 		-8(%rbp), %rax
cmp		-28(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -32(%rbp)

movl 	$1, -36(%rbp)

mov		-36(%rbp), %r10
cmp 	-32(%rbp), %r10

jne 		.falseCondL0

mov		$.L0L1, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

jmp 		.endIfL2

.falseCondL0: 

mov		$.L0L3, %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

.endIfL2: 

mov 		$0, %rax
leave
ret

