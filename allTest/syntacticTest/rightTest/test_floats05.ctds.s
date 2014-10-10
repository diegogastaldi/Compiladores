.L01: 
		.string "anidandofuncionesflotantes" 

.text

.globl	div
.type	div, @function 
div: 
pushq	%rbp
movq		%rsp, %rbp

movl		-12(%rbp), %eax 
cltd
idivl	-16
movl		%eax, -20(%rbp)

movl		-20(%rbp), %eax
leave
ret

.globl	resta
.type	resta, @function 
resta: 
pushq	%rbp
movq		%rsp, %rbp

movl		-16(%rbp), %eax 
movl		-12(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -20(%rbp)

movl		-20(%rbp), %eax
leave
ret

.globl	sum
.type	sum, @function 
sum: 
pushq	%rbp
movq		%rsp, %rbp

movl		-12(%rbp), %eax 
movl		-16(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -20(%rbp)

movl		-20(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$6.982, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

movl 	$2.5, -24(%rbp)

movl		-24(%rbp), %eax 
negl		%eax 
movl		%eax, -28(%rbp) 

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

movl 	$3.5698, -36(%rbp)

movl		-36(%rbp), %eax
movl		%eax, -40(%rbp)

movl		$.L01, %edi
movl	 	%edi, 8(%rsp)

movl		-44(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-48(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	resta
movl 	%eax, -52(%rbp) 

movl		-52(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-56(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-60(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	div
movl 	%eax, -64(%rbp) 

movl		-64(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	sum
movl 	%eax, -68(%rbp) 

movl		-68(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

