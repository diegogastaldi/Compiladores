.L03: 
		.string "y==%d\n" 

.L01: 
		.string "y==1\n" 

.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 3), $0 

movl 	$1, -8(%rbp)

.globl	main
.type	main, @function 
main: 
enter   $(4 * 11), $0 

mov		0(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -12(%rbp)

mov		-12(%rbp), %rax
leave
ret

call 	get_int
mov 	%rax, -12(%rbp) 

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

call 	inc
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$1, -32(%rbp)

mov 		-4(%rbp), %rax
cmp		-32(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.falseCond0

mov		$.L01, %r10
mov	 	%r10, %rdi

call 	printf

jmp 		.endIf2

.falseCond0: 

mov		-4(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L03, %r10
mov	 	%r10, %rsi

call 	printf

.endIf2: 

mov 		$0, %rax
leave
ret

