.text

.globl	pruMult
.type	pruMult, @function 
pruMult: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$5, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, -12(%rbp)

movl 	$7, -20(%rbp)

movl		-16(%rbp), %eax 
movl		-20(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -24(%rbp)

movl		-24(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

mov 		$0, %eax
leave
ret

