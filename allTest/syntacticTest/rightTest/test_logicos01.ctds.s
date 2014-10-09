.text

.globl	pruebaLogica
.type	pruebaLogica, @function 
pruebaLogica: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -12(%rbp)

movl		-12(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$0, -20(%rbp)

cmpl		$0, -20(%rbp)
jne 		.1
cmpl		$0, -24(%rbp)
je 		.2
.1: 
movl		$1, %eax
jmp 		.3
.2:
movl		$0, %eax
.3:
movl		%eax, -28(%rbp)

movl 	$1, -32(%rbp)

cmpl		$0, -32(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -36(%rbp) 

cmpl		$0, -28(%rbp)
je 		.4
cmpl		$0, -36(%rbp)
je 		.4
movl		$1, %eax
jmp		.5
.4:
movl		$0, %eax
.5:
movl		%eax, -40(%rbp)

cmpl		$0, -44(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -48(%rbp) 

cmpl		$0, -40(%rbp)
je 		.6
cmpl		$0, -48(%rbp)
je 		.6
movl		$1, %eax
jmp		.7
.6:
movl		$0, %eax
.7:
movl		%eax, -52(%rbp)

movl		-52(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf

mov 		$0, %eax
leave
ret

