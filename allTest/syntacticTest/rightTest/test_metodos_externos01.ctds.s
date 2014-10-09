.L02: 
		.string "%d" 

.L01: 
		.string "-estoEsUnaPrueba" 

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

movl		-24(%rbp), %eax
leave
ret

.globl	alo_2
.type	alo_2, @function 
alo_2: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	alo

movl 	$1, -12(%rbp)

movl		-12(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	alo
movl 	%eax, -16(%rbp) 

movl 	$1, -20(%rbp)

movl		-16(%rbp), %eax 
movl		-20(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

mov 		$0, %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl		$.L01, %edi
movl	 	%edi, 8(%rsp)

call 	printf

movl		$.L02, %edi
movl	 	%edi, 8(%rsp)

movl 	$5, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	alo
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	printf

call 	/home/programas/primer_primo_par

mov 		$0, %eax
leave
ret

