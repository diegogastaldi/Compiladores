.SL0: 
		.string "Parte if" 

.text

.globl	if1
.type	if1, @function 
if1: 
enter   $(8 * 2), $0 


mov		$.SL0, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax 

call 	if1

mov 		$0, %rax
leave
ret

