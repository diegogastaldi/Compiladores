.L05: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -12(%rbp)

movl		-12(%rbp), %eax
movl		%eax, -16(%rbp)

.beginWhile2: 

movl 	$10, -24(%rbp)

movl		-20(%rbp), %eax
cmpl		-24(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -28(%rbp)

movl 	$1, -32(%rbp)

movl		-32(%rbp), %eax
cmpl 	-28(%rbp), %eax

jne 		.endWhile1

movl 	$1, -40(%rbp)

movl		-36(%rbp), %eax 
movl		-40(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -44(%rbp)

movl		-44(%rbp), %eax
movl		%eax, -48(%rbp)

movl 	$0, -56(%rbp)

movl		-52(%rbp), %eax
cmpl		-56(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -60(%rbp)

movl 	$1, -64(%rbp)

movl		-64(%rbp), %eax
cmpl 	-60(%rbp), %eax

jne 		.falseCond3

jmp 		.endWhile1

jmp 		.endIf4

.falseCond3: 

jmp 		.beginWhile2

.endIf4: 

jmp 		.beginWhile2

.endWhile1: 

movl		-68(%rbp), %eax
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

