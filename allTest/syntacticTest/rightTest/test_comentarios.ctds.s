.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
pushq	%rbp
movq		%rsp, %rbp

movl		-16(%rbp), %eax
cmpl		-20(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -24(%rbp)

movl 	$1, -28(%rbp)

movl		-28(%rbp), %eax
cmpl 	-24(%rbp), %eax

jne 		.falseCond1

movl 	$5, -36(%rbp)

movl		-32(%rbp), %eax 
movl		-36(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -40(%rbp)

movl		-40(%rbp), %eax
movl		%eax, -44(%rbp)

jmp 		.endIf2

.falseCond1: 

movl		-48(%rbp), %eax
movl		%eax, -52(%rbp)

.endIf2: 

movl		-56(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$4, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$8, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	pruAritmetica
movl 	%eax, -12(%rbp) 

movl		-12(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

