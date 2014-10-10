.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -8(%rbp)

jmp 		.endFor1

.beginFor2: 

movl 	$2, -24(%rbp)

movl 	-20(%rbp), %eax
cmpl		-24(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -28(%rbp)

movl		-28(%rbp), %eax
leave
ret

movl		-12(%rbp), %eax 
movl		-8(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -12(%rbp)

.endFor1: 

movl		-16(%rbp), %eax
cmpl 	-12(%rbp), %eax

jle 		.beginFor2

movl 	$1, -32(%rbp)

movl		-32(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

