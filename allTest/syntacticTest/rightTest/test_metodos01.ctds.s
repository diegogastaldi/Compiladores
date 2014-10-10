.text

.globl	alo
.type	alo, @function 
alo: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, 0(%rbp)

movl		0(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -4(%rbp)

movl		-4(%rbp), %eax
movl		%eax, 0(%rbp)

mov 		$0, %eax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		0(%rbp), %edi
movl	 	%edi, 0(%rsp)

call 	alo

movl 	$1, -4(%rbp)

movl		0(%rbp), %eax 
movl		-4(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, 0(%rbp)

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$7, -1(%rbp)

movl		-1(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$8.0, -5(%rbp)

movl		-5(%rbp), %eax
movl		%eax, 0(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, -9(%rsp)

call 	alo2
movl 	%eax, -13(%rbp) 

movl		-13(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$3, -21(%rbp)

movl		-21(%rbp), %eax 
movl		-4(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -25(%rbp)

movl		-25(%rbp), %edi
movl	 	%edi, -29(%rsp)

call 	alo2
movl 	%eax, -33(%rbp) 

movl		-33(%rbp), %eax
movl		%eax, -4(%rbp)

mov 		$0, %eax
leave
ret

