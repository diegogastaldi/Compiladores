.SL0: 
		.string "15 = %d" 

.text

.globl	for1
.type	for1, @function 
for1: 
enter   $(8 * 6), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$15, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL0, %r10
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

call 	for1

mov 		$0, %rax
leave
ret

