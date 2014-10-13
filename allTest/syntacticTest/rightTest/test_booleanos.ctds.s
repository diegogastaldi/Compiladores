.text

.globl	neg
.type	neg, @function 
neg: 
enter   $(4 * 2), $0 

cmpl		$0, 0(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -8(%rbp) 

mov		-8(%rbp), %rax
leave
ret

.globl	and
.type	and, @function 
and: 
enter   $(4 * 2), $0 

cmpl		$0, 1(%rbp)
je 		.0
cmpl		$0, 0(%rbp)
je 		.0
mov		$1, %r10
jmp		.1
.0:
mov		$0, %r10
.1:
mov		%r11, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	or
.type	or, @function 
or: 
enter   $(4 * 2), $0 

cmpl		$0, 1(%rbp)
jne 		.2
cmpl		$0, 0(%rbp)
je 		.3
.2: 
mov		$1, %r10
jmp 		.4
.3:
mov		$0, %r10
.4:
mov		%r10, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 19), $0 

movl 	$1, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$0, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -12(%rbp)

mov		-4(%rbp), %r10
mov	 	%r10, %rdi

call 	neg
mov 	%rax, -40(%rbp) 

mov		-40(%rbp), %rax
mov		%rax, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

call 	neg
mov 	%rax, -52(%rbp) 

mov		-52(%rbp), %r10
mov	 	%r10, %rdi

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

mov		-4(%rbp), %r10
mov	 	%r10, %rsi

call 	and
mov 	%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

call 	or
mov 	%rax, -84(%rbp) 

mov		-84(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

