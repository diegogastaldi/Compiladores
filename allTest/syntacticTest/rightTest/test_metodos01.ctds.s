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

movl		-8(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	alo

movl 	$1, -16(%rbp)

movl		-12(%rbp), %eax 
movl		-16(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -20(%rbp)

movl		-20(%rbp), %eax
movl		%eax, -24(%rbp)

movl		-28(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$7, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, -12(%rbp)

movl 	$8.0, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

movl		-24(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	alo2
movl 	%eax, -28(%rbp) 

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

movl 	$3, -36(%rbp)

movl		-36(%rbp), %eax 
movl		-40(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -44(%rbp)

movl		-44(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	alo2
movl 	%eax, -48(%rbp) 

movl		-48(%rbp), %eax
movl		%eax, -52(%rbp)

mov 		$0, %eax
leave
ret

