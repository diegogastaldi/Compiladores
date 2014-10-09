.text

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$true, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

cmpl		$0, -32(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -36(%rbp) 

movl		-36(%rbp), %eax
movl		%eax, -40(%rbp)

cmpl		$0, -44(%rbp)
je 		.L1
cmpl		$0, -48(%rbp)
je 		.L1
movl		$1, %eax
jmp		.L2
.L1:
movl		$0, %eax
.L2:
movl		%eax, -52(%rbp)

cmpl		$0, -56(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -60(%rbp) 

cmpl		$0, -52(%rbp)
jne 		.L3
cmpl		$0, -60(%rbp)
je 		.L4
.L3: 
movl		$1, %eax
jmp 		.L5
.L4:
movl		$0, %eax
.L5:
movl		%eax, -64(%rbp)

movl		-64(%rbp), %eax
movl		%eax, -68(%rbp)

call 	printf()

mov 		$0, %eax
leave
ret

