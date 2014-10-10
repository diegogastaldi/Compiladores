.text

.globl	neg
.type	neg, @function 
neg: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

cmpl		$0, 0(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, 0(%rbp) 

movl		0(%rbp), %eax
leave
ret

.globl	and
.type	and, @function 
and: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

cmpl		$0, 4(%rbp)
je 		.0
cmpl		$0, 0(%rbp)
je 		.0
movl		$1, %eax
jmp		.1
.0:
movl		$0, %eax
.1:
movl		%eax, 0(%rbp)

movl		0(%rbp), %eax
leave
ret

.globl	or
.type	or, @function 
or: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

cmpl		$0, 4(%rbp)
jne 		.2
cmpl		$0, 0(%rbp)
je 		.3
.2: 
movl		$1, %eax
jmp 		.4
.3:
movl		$0, %eax
.4:
movl		%eax, 0(%rbp)

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -5(%rbp)

movl		-5(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$0, -9(%rbp)

movl		-9(%rbp), %eax
movl		%eax, -8(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -13(%rsp)

call 	neg
movl 	%eax, -17(%rbp) 

movl		-17(%rbp), %eax
movl		%eax, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -25(%rsp)

call 	neg
movl 	%eax, -29(%rbp) 

movl		-29(%rbp), %edi
movl	 	%edi, -37(%rsp)

movl		-8(%rbp), %edi
movl	 	%edi, -41(%rsp)

movl		0(%rbp), %edi
movl	 	%edi, -45(%rsp)

call 	and
movl 	%eax, -49(%rbp) 

movl		-49(%rbp), %edi
movl	 	%edi, -57(%rsp)

call 	or
movl 	%eax, -61(%rbp) 

movl		-61(%rbp), %eax
movl		%eax, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, -69(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

