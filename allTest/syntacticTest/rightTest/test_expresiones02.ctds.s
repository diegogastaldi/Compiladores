.text

.globl	prueba
.type	prueba, @function 
prueba: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$4, -28(%rbp)

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

movl 	$5, -36(%rbp)

movl		-36(%rbp), %eax
movl		%eax, -40(%rbp)

movl		-44(%rbp), %eax 
movl		-48(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -52(%rbp)

movl		-52(%rbp), %eax
movl		%eax, -56(%rbp)

movl		-60(%rbp), %eax 
movl		-64(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -68(%rbp)

movl		-68(%rbp), %eax
movl		%eax, -72(%rbp)

movl 	$3, -76(%rbp)

movl		-76(%rbp), %eax
movl		%eax, -80(%rbp)

movl 	$2, -84(%rbp)

movl		-84(%rbp), %eax 
movl		-88(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -92(%rbp)

movl		-92(%rbp), %eax
movl		%eax, -96(%rbp)

movl		-100(%rbp), %eax 
cltd
idivl	-104
movl		%eax, -108(%rbp)

movl 	$5, -112(%rbp)

movl		-108(%rbp), %eax
cmpl		-112(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -116(%rbp)

movl 	$1, -120(%rbp)

movl		-120(%rbp), %eax
cmpl 	-116(%rbp), %eax

jne 		.falseCond1

movl 	$1, -124(%rbp)

movl		-124(%rbp), %eax
leave
ret

jmp 		.endIf2

.falseCond1: 

movl 	$0, -128(%rbp)

movl		-128(%rbp), %eax
leave
ret

.endIf2: 

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$6, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	prueba
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

