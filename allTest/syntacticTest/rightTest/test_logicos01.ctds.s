.text

.globl	pruebaLogica
.type	pruebaLogica, @function 
pruebaLogica: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -1(%rbp)

movl		-1(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$0, -5(%rbp)

cmpl		$0, -5(%rbp)
jne 		.0
cmpl		$0, 0(%rbp)
je 		.1
.0: 
movl		$1, %eax
jmp 		.2
.1:
movl		$0, %eax
.2:
movl		%eax, -9(%rbp)

movl 	$1, -13(%rbp)

cmpl		$0, -13(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -17(%rbp) 

cmpl		$0, -9(%rbp)
je 		.3
cmpl		$0, -17(%rbp)
je 		.3
movl		$1, %eax
jmp		.4
.3:
movl		$0, %eax
.4:
movl		%eax, -21(%rbp)

cmpl		$0, 0(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -25(%rbp) 

cmpl		$0, -21(%rbp)
je 		.5
cmpl		$0, -25(%rbp)
je 		.5
movl		$1, %eax
jmp		.6
.5:
movl		$0, %eax
.6:
movl		%eax, -29(%rbp)

movl		-29(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

call 	pruebaLogica
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, -16(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

