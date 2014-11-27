.SL4: 
		.string "mcd%d" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(8 * 14), $0 

mov 		%rdi, -16(%rbp) 
mov 		%rsi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

mov		-16(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
cmp 		-72(%rbp), %r10

jne 		.falseCondL0

mov		-16(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.endIfL1

.falseCondL0: 

mov		-8(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -48(%rbp)

.endIfL1: 

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL3: 

movq 	$0, -88(%rbp)

mov		-40(%rbp), %rax
cmp		-88(%rbp), %rax
setne 	%al
movzb 	%al, %rax
mov		%rax, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.endWhileL2

mov		-32(%rbp), %rax 
cltd
idivq	-48(%rbp)
mov		%rdx, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


movq 	$6, -16(%rbp)

movq 	$9, -24(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	maxcomdiv
mov 	%rax, -32(%rbp) 

mov		$.SL4, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

