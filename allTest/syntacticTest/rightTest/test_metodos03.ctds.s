.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -12(%rbp)

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

movl		-16(%rbp), %eax
leave
ret

.globl	resto
.type	resto, @function 
resto: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$3, -20(%rbp)

movl 	$2, -24(%rbp)

movl		-20(%rbp), %eax 
movl		-24(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -28(%rbp)

movl		-16(%rbp), %eax
cmpl		-28(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -32(%rbp)

movl 	$1, -36(%rbp)

movl		-36(%rbp), %eax
cmpl 	-32(%rbp), %eax

jne 		.falseCond1

movl 	$3, -44(%rbp)

movl		-40(%rbp), %eax 
cltd
idivl	-44
movl		%eax, -48(%rbp)

movl		-48(%rbp), %eax
movl		%eax, -52(%rbp)

jmp 		.endIf2

.falseCond1: 

movl 	$2, -60(%rbp)

movl		-60(%rbp), %eax 
cltd
idivl	-56
movl		%edx, -64(%rbp)

movl		-64(%rbp), %eax
movl		%eax, -68(%rbp)

.endIf2: 

movl		-72(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, -12(%rbp)

movl 	$10.2, -16(%rbp)

movl		-16(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$5, -20(%rbp)

movl		-20(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	inc
movl 	%eax, -24(%rbp) 

movl		-24(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	resto
movl 	%eax, -28(%rbp) 

movl 	$0, -36(%rbp)

movl 	-28, %ebx 
movl 	-36, %edx 
movl 	%ebx, -32(%rbp, %rdx, 4) 

mov 		$0, %eax
leave
ret

