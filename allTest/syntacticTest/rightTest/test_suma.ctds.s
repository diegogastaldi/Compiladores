.text

.globl	suma
.type	suma, @function 
suma: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -16(%rbp)

movl 	-12(%rbp), %eax
cmpl		-16(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -20(%rbp)

movl 	$1, -24(%rbp)

movl		-24(%rbp), %eax
cmpl 	-20(%rbp), %eax

jne 		.falseCond1

movl		-28(%rbp), %eax
leave
ret

jmp 		.endIf2

.falseCond1: 

movl 	$0, -36(%rbp)

movl 	-32(%rbp), %eax
cmpl		-36(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -40(%rbp)

movl 	$1, -44(%rbp)

movl		-44(%rbp), %eax
cmpl 	-40(%rbp), %eax

jne 		.falseCond3

movl		-48(%rbp), %eax
leave
ret

jmp 		.endIf4

.falseCond3: 

movl		-52(%rbp), %eax 
movl		-56(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -60(%rbp)

movl		-60(%rbp), %eax
leave
ret

.endIf4: 

.endIf2: 

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$4, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$9, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	suma
movl 	%eax, -12(%rbp) 

movl		-12(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

