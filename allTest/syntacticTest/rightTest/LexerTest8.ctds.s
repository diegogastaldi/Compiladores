.text

.globl	method
.type	method, @function 
method: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

.globl	method2
.type	method2, @function 
method2: 
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

