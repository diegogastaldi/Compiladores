.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$5, -2(%rbp)

movl		-2(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$2000, -6(%rbp)

movl		-6(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$1000, -10(%rbp)

movl		0(%rbp), %eax 
movl		-4(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -14(%rbp)

movl		-10(%rbp), %eax 
movl		-14(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -18(%rbp)

movl		0(%rbp), %eax 
movl		-18(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -22(%rbp)

movl		-22(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$2, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

call 	pruMult
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, -16(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

