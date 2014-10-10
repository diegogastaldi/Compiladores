.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$90, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, -12(%rbp)

movl 	$7, -20(%rbp)

movl		-20(%rbp), %eax 
cltd
idivl	-16
movl		%edx, -24(%rbp)

movl		-24(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	pruAritmetica
movl 	%eax, -4(%rbp) 

movl		-4(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

