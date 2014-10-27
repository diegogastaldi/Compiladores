.SL5: 
		.string "%d" 

.text

.globl	neg
.type	neg, @function 
neg: 
enter   $(8 * 4), $0 
mov 		%rdi, -8(%rbp) 

cmpq		$0, -16(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -32(%rbp) 

mov		-32(%rbp), %rax
leave
ret

.globl	and
.type	and, @function 
and: 
enter   $(8 * 6), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

cmpq		$0, -24(%rbp)
je 		.L0
cmpq		$0, -16(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -48(%rbp)

mov		-48(%rbp), %rax
leave
ret

.globl	or
.type	or, @function 
or: 
enter   $(8 * 6), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

cmpq		$0, -24(%rbp)
jne 		.L2
cmpq		$0, -16(%rbp)
je 		.L3
.L2: 
mov		$1, %r10
jmp 		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -48(%rbp)

mov		-48(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 18), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq 	$1, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	neg
mov 	%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	and
mov 	%rax, -88(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	neg
mov 	%rax, -104(%rbp) 

mov		-88(%rbp), %r10
mov	 	%r10, %rdi

mov		-104(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	or
mov 	%rax, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL5, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -136(%rbp) 

mov 		$0, %rax
leave
ret

