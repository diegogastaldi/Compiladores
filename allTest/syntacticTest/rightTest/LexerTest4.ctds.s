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
enter   $(8 * 16), $0 

mov 		$0, %rax 
call 	get_int
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	inc
mov 	%rax, -40(%rbp) 

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$1, -56(%rbp)

mov 		-16(%rbp), %rax
cmp		-56(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 		-64(%rbp), %r10

jne 		.falseCondL0

mov		$.L0L1, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -88(%rbp) 

jmp 		.endIfL2

.falseCondL0: 

mov		$.L0L3, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -120(%rbp) 

.endIfL2: 

mov 		$0, %rax
leave
ret

