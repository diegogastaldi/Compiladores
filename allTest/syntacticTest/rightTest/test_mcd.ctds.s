.L0L4: 
		.string "mcd%d" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(4 * 11), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
cmp 	-16(%rbp), %r10

jne 		.falseCondL0

mov		-12(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -24(%rbp)

jmp 		.endIfL1

.falseCondL0: 

mov		-8(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -24(%rbp)

.endIfL1: 

movl 	$1, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -20(%rbp)

.beginWhileL3: 

movl 	$0, -28(%rbp)

mov		-20(%rbp), %rax
cmp		-28(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -32(%rbp)

movl 	$1, -36(%rbp)

mov		-36(%rbp), %r10
cmp 	-32(%rbp), %r10

jne 		.endWhileL2

mov		-24(%rbp), %rax 
cltd
idivl	-16(%rbp)
mov		%rax, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, -20(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -24(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 8), $0 

movl 	$9, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

call 	maxcomdiv
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L0L4, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

