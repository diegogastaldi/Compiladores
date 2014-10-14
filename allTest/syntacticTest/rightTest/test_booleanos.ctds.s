.text

.globl	neg
.type	neg, @function 
neg: 
enter   $(4 * 3), $0 
mov 		%rdi, -8(%rbp) 

cmpl		$0, -8(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -12(%rbp) 

mov		-12(%rbp), %rax
leave
ret

.globl	and
.type	and, @function 
and: 
enter   $(4 * 5), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

cmpl		$0, -12(%rbp)
je 		.L0
cmpl		$0, -8(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	or
.type	or, @function 
or: 
enter   $(4 * 5), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

cmpl		$0, -12(%rbp)
jne 		.L2
cmpl		$0, -8(%rbp)
je 		.L3
.L2: 
mov		$1, %r10
jmp 		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 17), $0 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$0, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	neg
mov 	%rax, -20(%rbp) 

mov		-20(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

call 	neg
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

call 	and
mov 	%rax, -52(%rbp) 

mov		-52(%rbp), %r10
mov	 	%r10, %rsi

call 	or
mov 	%rax, -64(%rbp) 

mov		-64(%rbp), %rax
mov		%rax, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

