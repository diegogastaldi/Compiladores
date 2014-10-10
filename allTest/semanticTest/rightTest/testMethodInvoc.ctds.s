.text

.globl	method1
.type	method1, @function 
method1: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1.0, -8(%rbp)

movl		-8(%rbp), %eax
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

.globl	method3
.type	method3, @function 
method3: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$2.0, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, -12(%rbp)

movl		-16(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	method3
movl 	%eax, -8(%rbp) 

movl 	$2, -12(%rbp)

movl		-12(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	method1
movl 	%eax, -16(%rbp) 

movl		-8(%rbp), %eax 
movl		-16(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -20(%rbp)

movl		-20(%rbp), %eax
movl		%eax, -24(%rbp)

call 	method2

mov 		$0, %eax
leave
ret

