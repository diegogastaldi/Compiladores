.text

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -5(%rbp)

movl		-5(%rbp), %eax
movl		%eax, 0(%rbp)

cmpl		$0, 0(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -9(%rbp) 

movl		-9(%rbp), %eax
movl		%eax, -8(%rbp)

cmpl		$0, 0(%rbp)
je 		.0
cmpl		$0, -8(%rbp)
je 		.0
movl		$1, %eax
jmp		.1
.0:
movl		$0, %eax
.1:
movl		%eax, -13(%rbp)

cmpl		$0, -8(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -17(%rbp) 

cmpl		$0, -13(%rbp)
jne 		.2
cmpl		$0, -17(%rbp)
je 		.3
.2: 
movl		$1, %eax
jmp 		.4
.3:
movl		$0, %eax
.4:
movl		%eax, -21(%rbp)

movl		-21(%rbp), %eax
movl		%eax, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, -25(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

