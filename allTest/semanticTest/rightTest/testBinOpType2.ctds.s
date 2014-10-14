.text

.comm x, 4

.globl	method
.type	method, @function 
method: 
enter   $(4 * 1), $0 

cmpl		$0, -8(%rbp)
je 		.L0
cmpl		$0, null(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -8(%rbp)

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

