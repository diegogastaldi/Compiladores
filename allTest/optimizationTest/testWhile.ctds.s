.SL2: 
		.string "0 = %d" 

.text

.globl	while1
.type	while1, @function 
while1: 
enter   $(8 * 10), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq 	$0, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$15, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -16(%rbp)

.beginWhileL1: 

movq 	$0, -64(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 		-64(%rbp), %r10

jne 		.endWhileL0

jmp 		.beginWhileL1

.endWhileL0: 

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax 

call 	while1

mov 		$0, %rax
leave
ret

