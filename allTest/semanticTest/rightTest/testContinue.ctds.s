.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 4), $0 
mov 		%rdi, -8(%rbp) 

.beginWhileL1: 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %r10
cmp 	-8(%rbp), %r10

jne 		.endWhileL0

mov		-8(%rbp), %rax
leave
ret

jmp 		.beginWhileL1

jmp 		.beginWhileL1

.endWhileL0: 

movl 	$1, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

