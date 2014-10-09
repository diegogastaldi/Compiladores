.text

.globl	alo
.type	alo, @function 
alo: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -16(%rbp)

movl		-16(%rbp), %eax
cmpl 	-12(%rbp), %eax

jne 		falseCondL1

movl 	$1, -24(%rbp)

movl		-20(%rbp), %eax 
movl		-24(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -28(%rbp)

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

jmp 		endIfL2

.falseCondL1: 

movl 	$1, -40(%rbp)

movl		-40(%rbp), %eax 
movl		-36(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -44(%rbp)

movl		-44(%rbp), %eax
movl		%eax, -48(%rbp)

.endIfL2: 

mov 		$0, %eax
leave
ret

.globl	Alo
.type	Alo, @function 
Alo: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

.globl	alo2
.type	alo2, @function 
alo2: 
pushq	%rbp
movq		%rsp, %rbp

movl		-8(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$true, -12(%rbp)

movl		-12(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	alo

movl 	$1, -20(%rbp)

movl		-16(%rbp), %eax 
movl		-20(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl		-32(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$7, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, -12(%rbp)

movl 	$8.0, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

movl		-24(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	alo2
movl 	%eax, -28(%rbp) 

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

movl 	$3, -36(%rbp)

movl		-36(%rbp), %eax 
movl		-40(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -44(%rbp)

movl		-44(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$false, -48(%rbp)

movl		-48(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	alo

mov 		$0, %eax
leave
ret

