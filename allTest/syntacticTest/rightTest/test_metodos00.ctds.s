.text

.globl	alo
.type	alo, @function 
alo: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -12(%rbp)

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

mov 		$0, %eax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	alo

movl 	$1, -12(%rbp)

movl 	$1, -16(%rbp)

movl		-12(%rbp), %eax 
movl		-16(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -20(%rbp)

movl		-20(%rbp), %eax
movl		%eax, -24(%rbp)

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

