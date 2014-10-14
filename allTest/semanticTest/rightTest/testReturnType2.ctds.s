.text

.globl	a
.type	a, @function 
a: 
enter   $(4 * 4), $0 

movl 	$1, -8(%rbp)

movl 	$1, -12(%rbp)

mov		-12(%rbp), %r10
cmp 	-8(%rbp), %r10

jne 		.falseCondL0

movl 	$0, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

jmp 		.endIfL1

.falseCondL0: 

movl 	$0, -20(%rbp)

mov		-20(%rbp), %rax
leave
ret

.endIfL1: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

