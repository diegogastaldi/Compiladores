.text

.globl	main
.type	main, @function 
main: 
enter   $(4 * 1), $0 

mov 		$0, %rax
leave
ret

.globl	met
.type	met, @function 
met: 
enter   $(4 * 5), $0 

mov		-8(%rbp), %r10 
mov		-4(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -12(%rbp)

mov		-12(%rbp), %rax
leave
ret

