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
movl 	%ebx, -20(%rbp, %edx, 4) 

movl		-28(%rbp), %eax
leave
ret

movl 	$1, -32(%rbp)

movl 	$5, -36(%rbp)

movl 	$10, -40(%rbp)

jmp 		endForL1

.beginForL2: 

movl 	$2, -48(%rbp)

movl		-44(%rbp), %eax 
movl		-48(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -52(%rbp)

movl 	-52, %ebx 
movl 	-60, %edx 
movl 	%ebx, -56(%rbp, %edx, 4) 

movl		-36(%rbp), %eax 
movl		-32(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -36(%rbp)

.endForL1: 

movl		-40(%rbp), %eax
cmpl 	-36(%rbp), %eax

jle 		beginForL2

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

mov 		$0, %eax
leave
ret

