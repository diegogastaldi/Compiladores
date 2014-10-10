.text

.globl	sumx
.type	sumx, @function 
sumx: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0.0, -2(%rbp)

movl		-2(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$0, -6(%rbp)

movl		-6(%rbp), %eax
movl		%eax, -4(%rbp)

.beginWhile1: 

movl		-4(%rbp), %eax
cmpl		0(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -10(%rbp)

movl 	$1, -14(%rbp)

movl		-14(%rbp), %eax
cmpl 	-10(%rbp), %eax

jne 		.endWhile0

movl		0(%rbp), %eax 
movl		4(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -18(%rbp)

movl		-18(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$1, -22(%rbp)

movl		-4(%rbp), %eax 
movl		-22(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -26(%rbp)

movl		-26(%rbp), %eax
movl		%eax, -4(%rbp)

jmp 		.beginWhile1

.endWhile0: 

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$2, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

movl 	$6.0, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -12(%rsp)

call 	sumx
movl 	%eax, -16(%rbp) 

movl		-16(%rbp), %edi
movl	 	%edi, -24(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

