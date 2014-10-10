.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -2(%rbp)

movl		-2(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$8, -6(%rbp)

movl		-6(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$699, -10(%rbp)

movl		-10(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -14(%rbp)

movl		-14(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$2, -18(%rbp)

movl		-4(%rbp), %eax 
movl		-18(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -22(%rbp)

movl		-22(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$2, -26(%rbp)

movl		-4(%rbp), %eax 
cltd
idivl	-26
movl		%eax, -30(%rbp)

movl		0(%rbp), %eax 
cltd
idivl	-30
movl		%eax, -34(%rbp)

movl		0(%rbp), %eax 
cltd
idivl	-34
movl		%eax, -38(%rbp)

movl		-38(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$2, -42(%rbp)

movl		-42(%rbp), %eax 
cltd
idivl	0
movl		%edx, -46(%rbp)

movl		-46(%rbp), %eax
movl		%eax, 0(%rbp)

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$3, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

call 	pruAritmetica
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, -16(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

