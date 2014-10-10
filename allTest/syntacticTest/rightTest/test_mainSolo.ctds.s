.text

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

cmpl		$0, -32(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -36(%rbp) 

movl		-36(%rbp), %eax
movl		%eax, -40(%rbp)

cmpl		$0, -44(%rbp)
je 		.1
cmpl		$0, -48(%rbp)
je 		.1
movl		$1, %eax
jmp		.2
.1:
movl		$0, %eax
.2:
movl		%eax, -52(%rbp)

cmpl		$0, -56(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -60(%rbp) 

cmpl		$0, -52(%rbp)
jne 		.3
cmpl		$0, -60(%rbp)
je 		.4
.3: 
movl		$1, %eax
jmp 		.5
.4:
movl		$0, %eax
.5:
movl		%eax, -64(%rbp)

movl		-64(%rbp), %eax
movl		%eax, -68(%rbp)

movl		-72(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

