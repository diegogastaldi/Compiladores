.L01: 
		.string "%d" 

.L00: 
		.string "-estoEsUnaPrueba" 

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

movl		0(%rbp), %eax
leave
ret

.globl	alo_2
.type	alo_2, @function 
alo_2: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

call 	alo

movl 	$1, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -12(%rsp)

call 	alo
movl 	%eax, -16(%rbp) 

movl 	$1, -24(%rbp)

movl		-16(%rbp), %eax 
movl		-24(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -28(%rbp)

movl		-28(%rbp), %eax
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

movl		$.L00, %edi
movl	 	%edi, 0(%rsp)

call 	printf

movl 	$5, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, -8(%rsp)

call 	alo
movl 	%eax, -12(%rbp) 

movl		-12(%rbp), %edi
movl	 	%edi, -20(%rsp)

movl		$.L01, %edi
movl	 	%edi, -24(%rsp)

call 	printf

call 	/home/programas/primer_primo_par

mov 		$0, %eax
leave
ret

