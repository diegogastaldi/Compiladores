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

movl 	$1, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

call 	alo

movl 	$1, -8(%rbp)

movl 	$1, -12(%rbp)

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, 0(%rbp)

mov 		$0, %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

