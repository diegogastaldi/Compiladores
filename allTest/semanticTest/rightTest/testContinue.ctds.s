.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 7), $0 
mov 		%rdi, -8(%rbp) 

.beginWhileL1: 

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
cmp 		-8(%rbp), %r10

jne 		.endWhileL0

mov		-8(%rbp), %rax
leave
ret

jmp 		.beginWhileL1

jmp 		.beginWhileL1

.endWhileL0: 

movq 	$1, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 3), $0 

mov 		$0, %rax
leave
ret

