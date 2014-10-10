.text

.globl	a
.type	a, @function 
a: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -4(%rbp)

movl		-4(%rbp), %eax
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

