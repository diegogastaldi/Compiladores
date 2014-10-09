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

movl 	$0, -36(%rbp)

movl 	$10, -40(%rbp)

movl		-40(%rbp), %eax 
negl		%eax 
movl		%eax, -44(%rbp) 

movl 	$11, -48(%rbp)

movl 	$2, -52(%rbp)

movl		-48(%rbp), %eax 
movl		-52(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -56(%rbp)

movl		-44(%rbp), %eax 
movl		-56(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -60(%rbp)

jmp 		.endFor1

.beginFor2: 

movl 	$2, -68(%rbp)

movl		-64(%rbp), %eax 
movl		-68(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -72(%rbp)

movl 	-72, %ebx 
movl 	-80, %edx 
movl 	%ebx, -76(%rbp, %rdx, 4) 

movl		-36(%rbp), %eax 
movl		-32(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -36(%rbp)

.endFor1: 

movl		-60(%rbp), %eax
cmpl 	-36(%rbp), %eax

jle 		.beginFor2

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf

mov 		$0, %eax
leave
ret

