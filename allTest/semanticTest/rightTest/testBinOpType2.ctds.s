.text

.comm x, 4

.globl	method
.type	method, @function 
method: 
enter   $(4 * 1), $0 

cmpl		$0, -4(%rbp)
je 		.0
cmpl		$0, -4(%rbp)
je 		.0
mov		$1, %r10
jmp		.1
.0:
mov		$0, %r10
.1:
mov		%r11, -4(%rbp)

mov		-4(%rbp), %rax
mov		%rax, -4(%rbp)

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

