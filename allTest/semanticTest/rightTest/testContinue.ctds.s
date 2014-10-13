.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 3), $0 
mov 		%rdi, -4(%rbp) 

.beginWhile1: 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
cmp 	-4(%rbp), %r10

jne 		.endWhile0

mov		-4(%rbp), %rax
leave
ret

jmp 		.beginWhile1

jmp 		.beginWhile1

.endWhile0: 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

