.text

.globl	pruebaLogica
.type	pruebaLogica, @function 
pruebaLogica: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$true, -12(%rbp)

movl		-12(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$false, -20(%rbp)

cmpl		$0, -20(%rbp)
jne 		.L1
cmpl		$0, -24(%rbp)
je 		.L2
.L1: 
movl		$1, %eax
jmp 		.L3
.L2:
movl		$0, %eax
.L3:
movl		%eax, -28(%rbp)

movl 	$true, -32(%rbp)

cmpl		$0, -32(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -36(%rbp) 

cmpl		$0, -28(%rbp)
je 		.L4
cmpl		$0, -36(%rbp)
je 		.L4
movl		$1, %eax
jmp		.L5
.L4:
movl		$0, %eax
.L5:
movl		%eax, -40(%rbp)

cmpl		$0, -44(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -48(%rbp) 

cmpl		$0, -40(%rbp)
je 		.L6
cmpl		$0, -48(%rbp)
je 		.L6
movl		$1, %eax
jmp		.L7
.L6:
movl		$0, %eax
.L7:
movl		%eax, -52(%rbp)

movl		-52(%rbp), %eax
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

