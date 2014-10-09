.text

.globl	method
.type	method, @function 
method: 
pushq	%rbp
movq		%rsp, %rbp

movl		-16(%rbp), %eax
cmpl		-20(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -24(%rbp)

movl 	$1, -28(%rbp)

movl		-28(%rbp), %eax
cmpl 	-24(%rbp), %eax

jne 		.falseCond1

movl 	$1, -32(%rbp)

movl 	$1.0, -40(%rbp)

movl 	-36(%rbp), %eax
cmpl		-40(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -44(%rbp)

cmpl		$0, -32(%rbp)
je 		.2
cmpl		$0, -44(%rbp)
je 		.2
movl		$1, %eax
jmp		.3
.2:
movl		$0, %eax
.3:
movl		%eax, -48(%rbp)

movl		-48(%rbp), %eax
movl		%eax, -52(%rbp)

.falseCond1: 

mov 		$0, %eax
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

