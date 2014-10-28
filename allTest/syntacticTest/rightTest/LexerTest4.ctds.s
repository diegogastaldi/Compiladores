.SL3: 
		.string "y==%d\n" 

.SL1: 
		.string "y==1\n" 

.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 5), $0 
mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-16(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 9), $0 

mov 		$0, %rax 

call 	get_int
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	inc
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$1, -40(%rbp)

mov 		-16(%rbp), %rax
cmp		-40(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -48(%rbp)

movq 	$1, -56(%rbp)

mov		-56(%rbp), %r10
cmp 		-48(%rbp), %r10

jne 		.falseCondL0

mov		$.SL1, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

jmp 		.endIfL2

.falseCondL0: 

mov		$.SL3, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

.endIfL2: 

mov 		$0, %rax
leave
ret

