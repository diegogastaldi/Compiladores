.text

.globl	a
.type	a, @function 
a: 
enter   $(8 * 6), $0 


movq 	$1, -16(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 		-16(%rbp), %r10

jne 		.falseCondL0

movq 	$0, -32(%rbp)

mov		-32(%rbp), %rax
leave
ret

jmp 		.endIfL1

.falseCondL0: 

movq 	$0, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.endIfL1: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax
leave
ret

