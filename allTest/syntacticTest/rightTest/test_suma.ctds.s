.text

.globl	suma
.type	suma, @function 
suma: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, 0(%rbp)

movl 	4(%rbp), %eax
cmpl		0(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -4(%rbp)

movl 	$1, -8(%rbp)

movl		-8(%rbp), %eax
cmpl 	-4(%rbp), %eax

jne 		.falseCond0

movl		0(%rbp), %eax
leave
ret

jmp 		.endIf1

.falseCond0: 

movl 	$0, -12(%rbp)

movl 	0(%rbp), %eax
cmpl		-12(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -16(%rbp)

movl 	$1, -20(%rbp)

movl		-20(%rbp), %eax
cmpl 	-16(%rbp), %eax

jne 		.falseCond2

movl		4(%rbp), %eax
leave
ret

jmp 		.endIf3

.falseCond2: 

movl		4(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -24(%rbp)

movl		-24(%rbp), %eax
leave
ret

.endIf3: 

.endIf1: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$9, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

movl 	$4, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -12(%rsp)

call 	suma
movl 	%eax, -16(%rbp) 

movl		-16(%rbp), %edi
movl	 	%edi, -24(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

