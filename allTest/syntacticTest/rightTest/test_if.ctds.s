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

movl		0(%rbp), %eax 
movl		4(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -9(%rbp)

movl		-9(%rbp), %eax
movl		%eax, 0(%rbp)

.falseCond0: 

movl 	4(%rbp), %eax
cmpl		0(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -13(%rbp)

movl 	$1, -17(%rbp)

movl		-17(%rbp), %eax
cmpl 	-13(%rbp), %eax

jne 		.falseCond1

movl 	$5, -21(%rbp)

movl		4(%rbp), %eax 
movl		-21(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -25(%rbp)

movl		-25(%rbp), %eax
movl		%eax, 0(%rbp)

jmp 		.endIf2

.falseCond1: 

movl		4(%rbp), %eax 
movl		0(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -29(%rbp)

movl		-29(%rbp), %eax
movl		%eax, 0(%rbp)

.endIf2: 

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

call 	printf

movl 	$4, -28(%rbp)

movl		-28(%rbp), %edi
movl	 	%edi, -32(%rsp)

movl 	$4, -36(%rbp)

movl		-36(%rbp), %edi
movl	 	%edi, -40(%rsp)

call 	pruAritmetica
movl 	%eax, -44(%rbp) 

movl		-44(%rbp), %edi
movl	 	%edi, -52(%rsp)

call 	printf

movl 	$5, -56(%rbp)

movl		-56(%rbp), %edi
movl	 	%edi, -60(%rsp)

movl 	$8, -64(%rbp)

movl		-64(%rbp), %edi
movl	 	%edi, -68(%rsp)

call 	pruAritmetica
movl 	%eax, -72(%rbp) 

movl		-72(%rbp), %edi
movl	 	%edi, -80(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

