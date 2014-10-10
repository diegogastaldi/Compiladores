.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$5, -1(%rbp)

movl		-1(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$7, -5(%rbp)

movl		0(%rbp), %eax 
movl		-5(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -9(%rbp)

movl		-9(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

call 	pruMult
movl 	%eax, 0(%rbp) 

movl		0(%rbp), %edi
movl	 	%edi, -8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

