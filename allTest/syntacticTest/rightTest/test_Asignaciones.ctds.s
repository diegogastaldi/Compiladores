.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

movl 	$8, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl 	$699, -32(%rbp)

movl		-32(%rbp), %eax 
movl		-36(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -40(%rbp)

movl		-40(%rbp), %eax
movl		%eax, -44(%rbp)

movl 	$2, -52(%rbp)

movl		-48(%rbp), %eax 
movl		-52(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -56(%rbp)

movl		-56(%rbp), %eax
movl		%eax, -60(%rbp)

movl 	$2, -76(%rbp)

movl		-72(%rbp), %eax 
cltd
idivl	-76
movl		%eax, -80(%rbp)

movl		-68(%rbp), %eax 
cltd
idivl	-80
movl		%eax, -84(%rbp)

movl		-64(%rbp), %eax 
cltd
idivl	-84
movl		%eax, -88(%rbp)

movl		-88(%rbp), %eax
movl		%eax, -92(%rbp)

movl 	$2, -100(%rbp)

movl		-100(%rbp), %eax 
cltd
idivl	-96
movl		%edx, -104(%rbp)

movl		-104(%rbp), %eax
movl		%eax, -108(%rbp)

movl		-112(%rbp), %eax
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

