.L04: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -2(%rbp)

movl		-2(%rbp), %eax
movl		%eax, 0(%rbp)

.beginWhile1: 

movl 	$10, -6(%rbp)

movl		0(%rbp), %eax
cmpl		-6(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -10(%rbp)

movl 	$1, -14(%rbp)

movl		-14(%rbp), %eax
cmpl 	-10(%rbp), %eax

jne 		.endWhile0

movl 	$1, -18(%rbp)

movl		0(%rbp), %eax 
movl		-18(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -22(%rbp)

movl		-22(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$2.3, -26(%rbp)

movl		-26(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$0, -30(%rbp)

movl		0(%rbp), %eax
cmpl		-30(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -34(%rbp)

movl 	$1, -38(%rbp)

movl		-38(%rbp), %eax
cmpl 	-34(%rbp), %eax

jne 		.falseCond2

jmp 		.endWhile0

jmp 		.endIf3

.falseCond2: 

jmp 		.beginWhile1

.endIf3: 

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

movl 	$1, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

call 	breaks
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, -16(%rsp)

movl		$.L04, %edi
movl	 	%edi, -20(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

