.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

.beginWhile2: 

movl 	$4, -12(%rbp)

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

movl 	$2, -20(%rbp)

movl		-16(%rbp), %eax
cmpl		-20(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -24(%rbp)

movl 	$1, -28(%rbp)

movl		-28(%rbp), %eax
cmpl 	-24(%rbp), %eax

jne 		.endWhile1

movl 	$1, -36(%rbp)

movl		-32(%rbp), %eax 
movl		-36(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -40(%rbp)

movl 	$2, -44(%rbp)

movl		-40(%rbp), %eax
cmpl		-44(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -48(%rbp)

movl		-48(%rbp), %eax
leave
ret

jmp 		.beginWhile2

.endWhile1: 

movl 	$1, -52(%rbp)

movl		-52(%rbp), %eax
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

