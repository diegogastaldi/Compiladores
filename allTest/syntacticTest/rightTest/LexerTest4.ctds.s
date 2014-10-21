.L0L3: 
		.string "y==%d\n" 

.L0L1: 
		.string "y==1\n" 

.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 5), $0 
mov 		%rdi, -16(%rbp) 

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
enter   $(8 * 17), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

mov 		$0, %rax 
call 	get_int
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	inc
mov 	%rax, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$1, -64(%rbp)

mov 		-16(%rbp), %rax
cmp		-64(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
cmp 		-72(%rbp), %r10

jne 		.falseCondL0

mov		$.L0L1, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -96(%rbp) 

jmp 		.endIfL2

.falseCondL0: 

mov		$.L0L3, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -128(%rbp) 

.endIfL2: 

mov 		$0, %rax
leave
ret

