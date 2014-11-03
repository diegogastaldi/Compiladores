.text

.comm a, 8

.comm b, 8

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov		$0, %r10
mov		%r10, a(%rip)

mov		$0, %r10
mov		%r10, b(%rip)

mov 		$0, %rax
leave
ret

