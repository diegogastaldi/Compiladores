.text

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

.globl	met
.type	met, @function 
met: 
enter   $(4 * 1), $0 

mov		-12(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

