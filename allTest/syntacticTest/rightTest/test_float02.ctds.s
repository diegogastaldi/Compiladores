.L06: 
		.string "%f" 

.text

.globl	sumatoria
.type	sumatoria, @function 
sumatoria: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0.0, -3(%rbp)

movl		-3(%rbp), %eax
movl		%eax, 0(%rbp)

movl		0(%rbp), %eax
movl		%eax, -4(%rbp)

.beginWhile1: 

movl 	$0, -7(%rbp)

movl		-4(%rbp), %eax
cmpl		-7(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -11(%rbp)

movl 	$0, -15(%rbp)

movl		-4(%rbp), %eax
cmpl		-15(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -19(%rbp)

cmpl		$0, -11(%rbp)
jne 		.2
cmpl		$0, -19(%rbp)
je 		.3
.2: 
movl		$1, %eax
jmp 		.4
.3:
movl		$0, %eax
.4:
movl		%eax, -23(%rbp)

movl 	$1, -27(%rbp)

movl		-27(%rbp), %eax
cmpl 	-23(%rbp), %eax

jne 		.endWhile0

movl 	$0, -31(%rbp)

movl		-4(%rbp), %eax
cmpl		-31(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -35(%rbp)

movl 	$1, -39(%rbp)

movl		-39(%rbp), %eax
cmpl 	-35(%rbp), %eax

jne 		.falseCond5

movl		0(%rbp), %eax 
movl		-4(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -43(%rbp)

movl		-43(%rbp), %eax
movl		%eax, 0(%rbp)

.falseCond5: 

movl 	$1.0, -47(%rbp)

movl		$1, %eax
movl		%eax, -55(%rbp)

movl		-55(%rbp), %eax 
movl		-47(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -51(%rbp)

movl		-51(%rbp), %eax
movl		%eax, -4(%rbp)

jmp 		.beginWhile1

.endWhile0: 

movl		0(%rbp), %eax
movl		%eax, -8(%rbp)

movl		-8(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$8.0, -2(%rbp)

movl		-2(%rbp), %eax
movl		%eax, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, -6(%rsp)

call 	sumatoria
movl 	%eax, -10(%rbp) 

movl		-10(%rbp), %eax
movl		%eax, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -18(%rsp)

movl		$.L06, %edi
movl	 	%edi, -22(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

