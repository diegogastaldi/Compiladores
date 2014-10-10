.L014: 
		.string "%f resultado : " 

.text

.globl	promedio
.type	promedio, @function 
promedio: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		8(%rbp), %eax
cmpl		0(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, 0(%rbp)

movl		4(%rbp), %eax
cmpl		0(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -4(%rbp)

cmpl		$0, 0(%rbp)
je 		.0
cmpl		$0, -4(%rbp)
je 		.0
movl		$1, %eax
jmp		.1
.0:
movl		$0, %eax
.1:
movl		%eax, -8(%rbp)

movl 	$1, -12(%rbp)

movl		-12(%rbp), %eax
cmpl 	-8(%rbp), %eax

jne 		.falseCond2

movl		8(%rbp), %eax 
movl		4(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

movl 	$2.0, -20(%rbp)

movl		-16(%rbp), %eax 
cltd
idivl	-20
movl		%eax, -24(%rbp)

movl		-24(%rbp), %eax
leave
ret

.falseCond2: 

movl		8(%rbp), %eax
cmpl		4(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -28(%rbp)

movl		0(%rbp), %eax
cmpl		4(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -32(%rbp)

cmpl		$0, -28(%rbp)
je 		.3
cmpl		$0, -32(%rbp)
je 		.3
movl		$1, %eax
jmp		.4
.3:
movl		$0, %eax
.4:
movl		%eax, -36(%rbp)

movl 	$1, -40(%rbp)

movl		-40(%rbp), %eax
cmpl 	-36(%rbp), %eax

jne 		.falseCond5

movl		8(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -44(%rbp)

movl 	$2.0, -48(%rbp)

movl		-44(%rbp), %eax 
cltd
idivl	-48
movl		%eax, -52(%rbp)

movl		-52(%rbp), %eax
leave
ret

.falseCond5: 

movl		4(%rbp), %eax
cmpl		8(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -56(%rbp)

movl		0(%rbp), %eax
cmpl		8(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -60(%rbp)

cmpl		$0, -56(%rbp)
je 		.6
cmpl		$0, -60(%rbp)
je 		.6
movl		$1, %eax
jmp		.7
.6:
movl		$0, %eax
.7:
movl		%eax, -64(%rbp)

movl 	$1, -68(%rbp)

movl		-68(%rbp), %eax
cmpl 	-64(%rbp), %eax

jne 		.falseCond8

movl		0(%rbp), %eax 
movl		4(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -72(%rbp)

movl 	$2.0, -76(%rbp)

movl		-72(%rbp), %eax 
cltd
idivl	-76
movl		%eax, -80(%rbp)

movl		-80(%rbp), %eax
leave
ret

.falseCond8: 

movl 	8(%rbp), %eax
cmpl		4(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -84(%rbp)

movl 	8(%rbp), %eax
cmpl		0(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -88(%rbp)

movl 	4(%rbp), %eax
cmpl		0(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -92(%rbp)

cmpl		$0, -88(%rbp)
je 		.9
cmpl		$0, -92(%rbp)
je 		.9
movl		$1, %eax
jmp		.10
.9:
movl		$0, %eax
.10:
movl		%eax, -96(%rbp)

cmpl		$0, -84(%rbp)
je 		.11
cmpl		$0, -96(%rbp)
je 		.11
movl		$1, %eax
jmp		.12
.11:
movl		$0, %eax
.12:
movl		%eax, -100(%rbp)

movl 	$1, -104(%rbp)

movl		-104(%rbp), %eax
cmpl 	-100(%rbp), %eax

jne 		.falseCond13

movl		8(%rbp), %eax
leave
ret

.falseCond13: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$10.0, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

movl 	$0.66, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -12(%rsp)

movl 	$3.3, -16(%rbp)

movl		-16(%rbp), %edi
movl	 	%edi, -20(%rsp)

call 	promedio
movl 	%eax, -24(%rbp) 

movl		-24(%rbp), %edi
movl	 	%edi, -32(%rsp)

movl		$.L014, %edi
movl	 	%edi, -36(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

