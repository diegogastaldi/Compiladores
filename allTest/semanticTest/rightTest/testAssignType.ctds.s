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
enter   $(4 * 1), $0 
mov 		%rdi, -4(%rbp) 

mov		-4(%rbp), %rax
mov		%rax, -4(%rbp)

mov 		$0, %rax
leave
ret

