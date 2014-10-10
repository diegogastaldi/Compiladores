.L03: 
		.string "%d resultado : " 

.text

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$2, -16(%rbp)

movl 	$0, -24(%rbp)

movl 	-16, %ebx 
movl 	-24, %edx 
movl 	%ebx, -20(%rbp, %rdx, 4) 

movl		-28(%rbp), %eax
leave
ret

movl 	$1, -32(%rbp)

movl 	$5, -36(%rbp)

movl 	$10, -40(%rbp)

movl		-40(%rbp), %eax 
negl		%eax 
movl		%eax, -44(%rbp) 

jmp 		.endFor1

.beginFor2: 

movl 	$2, -52(%rbp)

movl		-48(%rbp), %eax 
movl		-52(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -56(%rbp)

movl 	-56, %ebx 
movl 	-64, %edx 
movl 	%ebx, -60(%rbp, %rdx, 4) 

movl		-36(%rbp), %eax 
movl		-32(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -36(%rbp)

.endFor1: 

movl		-44(%rbp), %eax
cmpl 	-36(%rbp), %eax

jle 		.beginFor2

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl		$.L03, %edi
movl	 	%edi, 8(%rsp)

movl 	$4, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$8, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	pruArreglos
movl 	%eax, -12(%rbp) 

movl		-12(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

