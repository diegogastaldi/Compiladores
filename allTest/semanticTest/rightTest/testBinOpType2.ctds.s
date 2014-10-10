.text

.globl	method
.type	method, @function 
method: 
pushq	%rbp
movq		%rsp, %rbp

cmpl		$0, -8(%rbp)
je 		.1
cmpl		$0, -12(%rbp)
je 		.1
movl		$1, %eax
jmp		.2
.1:
movl		$0, %eax
.2:
movl		%eax, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

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

