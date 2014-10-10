.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -12(%rbp)

movl		-8(%rbp), %eax
cmpl		-12(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -16(%rbp)

movl 	$1, -20(%rbp)

movl		-20(%rbp), %eax
cmpl 	-16(%rbp), %eax

jne 		.falseCond1

movl 	$0, -28(%rbp)

movl		-24(%rbp), %eax
cmpl		-28(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -32(%rbp)

movl		-32(%rbp), %eax
leave
ret

.falseCond1: 

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

