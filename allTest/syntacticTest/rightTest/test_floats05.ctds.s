.L00: 
		.string "anidandofuncionesflotantes" 

.text

.globl	div
.type	div, @function 
div: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		4(%rbp), %eax 
cltd
idivl	0
movl		%eax, 0(%rbp)

movl		0(%rbp), %eax
leave
ret

.globl	resta
.type	resta, @function 
resta: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		0(%rbp), %eax 
movl		4(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, 0(%rbp)

movl		0(%rbp), %eax
leave
ret

.globl	sum
.type	sum, @function 
sum: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		4(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, 0(%rbp)

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$6.982, -3(%rbp)

movl		-3(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$2.5, -7(%rbp)

movl		-7(%rbp), %eax 
negl		%eax 
movl		%eax, -11(%rbp) 

movl		-11(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$3.5698, -15(%rbp)

movl		-15(%rbp), %eax
movl		%eax, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, -19(%rsp)

movl		0(%rbp), %edi
movl	 	%edi, -23(%rsp)

call 	div
movl 	%eax, -27(%rbp) 

movl		-27(%rbp), %edi
movl	 	%edi, -35(%rsp)

movl		0(%rbp), %edi
movl	 	%edi, -39(%rsp)

movl		-8(%rbp), %edi
movl	 	%edi, -43(%rsp)

call 	resta
movl 	%eax, -47(%rbp) 

movl		-47(%rbp), %edi
movl	 	%edi, -55(%rsp)

call 	sum
movl 	%eax, -59(%rbp) 

movl		-59(%rbp), %edi
movl	 	%edi, -67(%rsp)

movl		$.L00, %edi
movl	 	%edi, -71(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

