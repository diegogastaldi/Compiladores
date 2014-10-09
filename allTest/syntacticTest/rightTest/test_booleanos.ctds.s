.text

.globl	neg
.type	neg, @function 
neg: 
pushq	%rbp
movq		%rsp, %rbp

cmpl		$0, -8(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -12(%rbp) 

movl		-12(%rbp), %eax
leave
ret

.globl	and
.type	and, @function 
and: 
pushq	%rbp
movq		%rsp, %rbp

cmpl		$0, -12(%rbp)
je 		.L1
cmpl		$0, -16(%rbp)
je 		.L1
movl		$1, %eax
jmp		.L2
.L1:
movl		$0, %eax
.L2:
movl		%eax, -20(%rbp)

movl		-20(%rbp), %eax
leave
ret

.globl	or
.type	or, @function 
or: 
pushq	%rbp
movq		%rsp, %rbp

cmpl		$0, -12(%rbp)
jne 		.L3
cmpl		$0, -16(%rbp)
je 		.L4
.L3: 
movl		$1, %eax
jmp 		.L5
.L4:
movl		$0, %eax
.L5:
movl		%eax, -20(%rbp)

movl		-20(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$true, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl 	$false, -32(%rbp)

movl		-32(%rbp), %eax
movl		%eax, -36(%rbp)

movl		-40(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	neg
movl 	%eax, -44(%rbp) 

movl		-44(%rbp), %eax
movl		%eax, -48(%rbp)

movl		-52(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	neg
movl 	%eax, -56(%rbp) 

movl		-56(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-60(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-64(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	and
movl 	%eax, -68(%rbp) 

movl		-68(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	or
movl 	%eax, -72(%rbp) 

movl		-72(%rbp), %eax
movl		%eax, -76(%rbp)

call 	printf()

mov 		$0, %eax
leave
ret

