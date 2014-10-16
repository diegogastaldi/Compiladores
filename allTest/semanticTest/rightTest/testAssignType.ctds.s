.text

.comm y, 4

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

.globl	main2
.type	main2, @function 
main2: 
enter   $(4 * 2), $0 
mov 		%rdi, -8(%rbp) 

mov		-8(%rbp), %r10
mov		%r10, y(%rip)

mov 		$0, %rax
leave
ret

