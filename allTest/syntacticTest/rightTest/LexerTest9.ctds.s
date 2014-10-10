.text

.globl	method
.type	method, @function 
method: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

.globl	method2
.type	method2, @function 
method2: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

