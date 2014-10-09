.text

.globl	method
.type	method, @function 
method: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

