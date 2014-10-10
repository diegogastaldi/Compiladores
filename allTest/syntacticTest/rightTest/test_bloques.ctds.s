.L04: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -1(%rbp)

movl		-1(%rbp), %eax
movl		%eax, 0(%rbp)

.beginWhile1: 

movl 	$10, -5(%rbp)

movl		0(%rbp), %eax
cmpl		-5(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -9(%rbp)

movl 	$1, -13(%rbp)

movl		-13(%rbp), %eax
cmpl 	-9(%rbp), %eax

jne 		.endWhile0

movl 	$1, -17(%rbp)

movl		0(%rbp), %eax 
movl		-17(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -21(%rbp)

movl		-21(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$0, -25(%rbp)

movl		0(%rbp), %eax
cmpl		-25(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -29(%rbp)

movl 	$1, -33(%rbp)

movl		-33(%rbp), %eax
cmpl 	-29(%rbp), %eax

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

