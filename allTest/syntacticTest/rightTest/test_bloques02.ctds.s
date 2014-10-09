.L05: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

.beginWhile2: 

movl 	$10, -28(%rbp)

movl		-24(%rbp), %eax
cmpl		-28(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -32(%rbp)

movl 	$1, -36(%rbp)

movl		-36(%rbp), %eax
cmpl 	-32(%rbp), %eax

jne 		.endWhile1

movl 	$1, -44(%rbp)

movl		-40(%rbp), %eax 
movl		-44(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -48(%rbp)

movl		-48(%rbp), %eax
movl		%eax, -52(%rbp)

movl 	$2.3, -56(%rbp)

movl		-56(%rbp), %eax
movl		%eax, -60(%rbp)

movl 	$0, -68(%rbp)

movl		-64(%rbp), %eax
cmpl		-68(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -72(%rbp)

movl 	$1, -76(%rbp)

movl		-76(%rbp), %eax
cmpl 	-72(%rbp), %eax

jne 		.falseCond3

jmp 		.endWhile1

jmp 		.endIf4

.falseCond3: 

jmp 		.beginWhile2

.endIf4: 

jmp 		.beginWhile2

.endWhile1: 

movl		-80(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl		$.L05, %edi
movl	 	%edi, 8(%rsp)

movl 	$1, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	breaks
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

