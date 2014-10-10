.L07: 
		.string "%f" 

.text

.globl	sumatoria
.type	sumatoria, @function 
sumatoria: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0.0, -20(%rbp)

movl		-20(%rbp), %eax
movl		%eax, -24(%rbp)

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

.beginWhile2: 

movl 	$0, -40(%rbp)

movl		-36(%rbp), %eax
cmpl		-40(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -44(%rbp)

movl 	$0, -52(%rbp)

movl		-48(%rbp), %eax
cmpl		-52(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -56(%rbp)

cmpl		$0, -44(%rbp)
jne 		.3
cmpl		$0, -56(%rbp)
je 		.4
.3: 
movl		$1, %eax
jmp 		.5
.4:
movl		$0, %eax
.5:
movl		%eax, -60(%rbp)

movl 	$1, -64(%rbp)

movl		-64(%rbp), %eax
cmpl 	-60(%rbp), %eax

jne 		.endWhile1

movl 	$0, -72(%rbp)

movl		-68(%rbp), %eax
cmpl		-72(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -76(%rbp)

movl 	$1, -80(%rbp)

movl		-80(%rbp), %eax
cmpl 	-76(%rbp), %eax

jne 		.falseCond6

movl		-84(%rbp), %eax 
movl		-88(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -92(%rbp)

movl		-92(%rbp), %eax
movl		%eax, -96(%rbp)

.falseCond6: 

movl 	$1.0, -100(%rbp)

movl		$1, %eax
movl		%eax, -112(%rbp)

movl		-112(%rbp), %eax 
movl		-100(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -108(%rbp)

movl		-108(%rbp), %eax
movl		%eax, -104(%rbp)

jmp 		.beginWhile2

.endWhile1: 

movl		-116(%rbp), %eax
movl		%eax, -120(%rbp)

movl		-124(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$8.0, -12(%rbp)

movl		-12(%rbp), %eax
movl		%eax, -16(%rbp)

movl		-20(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	sumatoria
movl 	%eax, -24(%rbp) 

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl		$.L07, %edi
movl	 	%edi, 8(%rsp)

movl		-32(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

