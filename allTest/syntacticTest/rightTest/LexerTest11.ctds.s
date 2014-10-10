.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, 0(%rbp)

movl		0(%rbp), %eax
movl		%eax, 52(%rbp)

movl 	$0, -4(%rbp)

movl		-4(%rbp), %eax
movl		%eax, 48(%rbp)

movl 	$0, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, 44(%rbp)

movl 	$0, -12(%rbp)

movl		-12(%rbp), %eax
movl		%eax, 40(%rbp)

movl 	$0, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, 36(%rbp)

movl 	$0, -20(%rbp)

movl		-20(%rbp), %eax
movl		%eax, 32(%rbp)

movl 	$0, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, 28(%rbp)

movl 	$0, -28(%rbp)

movl		-28(%rbp), %eax
movl		%eax, 24(%rbp)

movl 	$0, -32(%rbp)

movl		-32(%rbp), %eax
movl		%eax, 20(%rbp)

movl 	$0, -36(%rbp)

movl		-36(%rbp), %eax
movl		%eax, 16(%rbp)

movl 	$0, -40(%rbp)

movl		-40(%rbp), %eax
movl		%eax, 12(%rbp)

movl 	$0, -44(%rbp)

movl		-44(%rbp), %eax
movl		%eax, 8(%rbp)

movl 	$0, -48(%rbp)

movl		-48(%rbp), %eax
movl		%eax, 4(%rbp)

movl 	$0, -52(%rbp)

movl		-52(%rbp), %eax
movl		%eax, 0(%rbp)

mov 		$0, %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 14), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		-52(%rbp), %edi
movl	 	%edi, -14(%rsp)

movl		-48(%rbp), %edi
movl	 	%edi, -18(%rsp)

movl		-44(%rbp), %edi
movl	 	%edi, -22(%rsp)

movl		-40(%rbp), %edi
movl	 	%edi, -26(%rsp)

movl		-36(%rbp), %edi
movl	 	%edi, -30(%rsp)

movl		-32(%rbp), %edi
movl	 	%edi, -34(%rsp)

movl		-28(%rbp), %edi
movl	 	%edi, -38(%rsp)

movl		-24(%rbp), %edi
movl	 	%edi, -42(%rsp)

movl		-20(%rbp), %edi
movl	 	%edi, -46(%rsp)

movl		-16(%rbp), %edi
movl	 	%edi, -50(%rsp)

movl		-12(%rbp), %edi
movl	 	%edi, -54(%rsp)

movl		-8(%rbp), %edi
movl	 	%edi, -58(%rsp)

movl		-4(%rbp), %edi
movl	 	%edi, -62(%rsp)

movl		0(%rbp), %edi
movl	 	%edi, -66(%rsp)

call 	inc

mov 		$0, %eax
leave
ret

