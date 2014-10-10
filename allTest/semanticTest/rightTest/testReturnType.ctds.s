.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -8(%rbp)

movl 	$3, -12(%rbp)

movl		-8(%rbp), %eax
cmpl		-12(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -16(%rbp)

movl 	$0, -20(%rbp)

cmpl		$0, -16(%rbp)
je 		.1
cmpl		$0, -20(%rbp)
je 		.1
movl		$1, %eax
jmp		.2
.1:
movl		$0, %eax
.2:
movl		%eax, -24(%rbp)

movl		-24(%rbp), %eax
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

