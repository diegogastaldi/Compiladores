.L04: 
		.string "y==%d\n" 

.L02: 
		.string "y==1\n" 

.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -12(%rbp)

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

movl		-16(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	get_int
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	inc
movl 	%eax, -12(%rbp) 

movl		-12(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$1, -24(%rbp)

movl 	-20(%rbp), %eax
cmpl		-24(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -28(%rbp)

movl 	$1, -32(%rbp)

movl		-32(%rbp), %eax
cmpl 	-28(%rbp), %eax

jne 		.falseCond1

movl		$.L02, %edi
movl	 	%edi, 8(%rsp)

call 	printf

jmp 		.endIf3

.falseCond1: 

movl		$.L04, %edi
movl	 	%edi, 8(%rsp)

movl		-36(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	printf

.endIf3: 

mov 		$0, %eax
leave
ret

