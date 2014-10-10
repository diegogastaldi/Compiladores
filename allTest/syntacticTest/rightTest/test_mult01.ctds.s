.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$5, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

movl 	$2000, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl 	$1000, -36(%rbp)

movl		-40(%rbp), %eax 
movl		-44(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -48(%rbp)

movl		-36(%rbp), %eax 
movl		-48(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -52(%rbp)

movl		-32(%rbp), %eax 
movl		-52(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -56(%rbp)

movl		-56(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$2, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	pruMult
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

