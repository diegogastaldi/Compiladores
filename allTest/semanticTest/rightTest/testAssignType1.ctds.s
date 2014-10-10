.text

.globl	method
.type	method, @function 
method: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$2.0, -4(%rbp)

movl		-4(%rbp), %eax
leave
ret

.globl	main2
.type	main2, @function 
main2: 
pushq	%rbp
movq		%rsp, %rbp

call 	method
movl 	%eax, -12(%rbp) 

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

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

