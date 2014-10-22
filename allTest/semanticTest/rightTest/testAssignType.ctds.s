.text

.comm y, 8

.globl	main
.type	main, @function 
main: 
enter   $(8 * 1), $0 

mov		$0, %r10
mov		%r10, y(%rip)

mov 		$0, %rax
leave
ret

.globl	main2
.type	main2, @function 
main2: 
enter   $(8 * 3), $0 
mov 		%rdi, -16(%rbp) 

mov		-16(%rbp), %r10
mov		%r10, y(%rip)

mov 		$0, %rax
leave
ret

