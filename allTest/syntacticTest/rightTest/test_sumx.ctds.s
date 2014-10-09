.text

.globl	sumx
.type	sumx, @function 
sumx: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0.0, -20(%rbp)

movl		-20(%rbp), %eax
movl		%eax, -24(%rbp)

movl 	$0, -28(%rbp)

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

.beginWhile2: 

movl		-36(%rbp), %eax
cmpl		-40(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -44(%rbp)

movl 	$1, -48(%rbp)

movl		-48(%rbp), %eax
cmpl 	-44(%rbp), %eax

jne 		.endWhile1

movl		-52(%rbp), %eax 
movl		-56(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -60(%rbp)

movl		-60(%rbp), %eax
movl		%eax, -64(%rbp)

movl 	$1, -72(%rbp)

movl		-68(%rbp), %eax 
movl		-72(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -76(%rbp)

movl		-76(%rbp), %eax
movl		%eax, -80(%rbp)

jmp 		.beginWhile2

.endWhile1: 

movl		-84(%rbp), %eax
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

