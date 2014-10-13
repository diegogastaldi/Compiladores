.text

.globl	a
.type	a, @function 
a: 
enter   $(4 * 4), $0 

movl 	$1, -4(%rbp)

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
cmp 	-4(%rbp), %r10

jne 		.falseCond0

movl 	$0, -12(%rbp)

mov		-12(%rbp), %rax
leave
ret

jmp 		.endIf1

.falseCond0: 

movl 	$0, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.endIf1: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

