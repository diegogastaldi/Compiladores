.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1.0, -12(%rbp)

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

movl		-16(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl		-8(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	inc
movl 	%eax, -12(%rbp) 

movl		-12(%rbp), %eax 
movl		-16(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -20(%rbp)

movl		-20(%rbp), %eax
movl		%eax, -24(%rbp)

mov 		$0, %eax
leave
ret

