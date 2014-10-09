.text

.globl	par
.type	par, @function 
par: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$15, -4(%rbp)

movl		-4(%rbp), %eax
leave
ret

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

call 	par
movl 	%eax, -36(%rbp) 

call 	par
movl 	%eax, -40(%rbp) 

movl 	$5, -44(%rbp)

movl		-40(%rbp), %eax 
movl		-44(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -48(%rbp)

jmp 		endForL1

.beginForL2: 

movl 	$2, -56(%rbp)

movl		-52(%rbp), %eax 
movl		-56(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -60(%rbp)

movl 	-60, %ebx 
movl 	-68, %edx 
movl 	%ebx, -64(%rbp, %edx, 4) 

movl		-36(%rbp), %eax 
movl		-32(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -36(%rbp)

.endForL1: 

movl		-48(%rbp), %eax
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

