.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		4(%rbp), %eax
cmpl		0(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -1(%rbp)

movl 	$1, -5(%rbp)

movl		-5(%rbp), %eax
cmpl 	-1(%rbp), %eax

jne 		.falseCond0

movl 	$5, -9(%rbp)

movl		4(%rbp), %eax 
movl		-9(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -13(%rbp)

movl		-13(%rbp), %eax
movl		%eax, 0(%rbp)

jmp 		.endIf1

.falseCond0: 

movl		0(%rbp), %eax
movl		%eax, 0(%rbp)

.endIf1: 

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$8, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

movl 	$4, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -12(%rsp)

call 	pruAritmetica
movl 	%eax, -16(%rbp) 

movl		-16(%rbp), %edi
movl	 	%edi, -24(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

