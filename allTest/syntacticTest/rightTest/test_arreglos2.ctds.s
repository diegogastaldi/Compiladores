.L04: 
		.string "%d resultado : " 

.text

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$8.87, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

movl 	$4, -24(%rbp)

movl 	$0, -32(%rbp)

movl 	-24, %ebx 
movl 	-32, %edx 
movl 	%ebx, -28(%rbp, %rdx, 4) 

movl 	$2.6, -36(%rbp)

movl		-36(%rbp), %eax 
movl		-40(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -44(%rbp)

movl 	$55, -52(%rbp)

movl 	-44, %ebx 
movl 	-52, %edx 
movl 	%ebx, -48(%rbp, %rdx, 4) 

movl		-56(%rbp), %eax
cmpl		-60(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -64(%rbp)

movl 	$0, -72(%rbp)

movl 	-64, %ebx 
movl 	-72, %edx 
movl 	%ebx, -68(%rbp, %rdx, 4) 

movl		-76(%rbp), %eax
cmpl		-80(%rbp), %eax
setge 	%al
movzbl %al, %eax
movl		%eax, -84(%rbp)

movl 	$1, -92(%rbp)

movl 	-84, %ebx 
movl 	-92, %edx 
movl 	%ebx, -88(%rbp, %rdx, 4) 

movl		-96(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -4(%rbp)

movl		-4(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$58, -12(%rbp)

movl 	$6, -16(%rbp)

movl		-16(%rbp), %eax 
negl		%eax 
movl		%eax, -20(%rbp) 

movl		-20(%rbp), %eax 
movl		-12(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -24(%rbp)

movl 	$1, -32(%rbp)

movl 	-24, %ebx 
movl 	-32, %edx 
movl 	%ebx, -28(%rbp, %rdx, 4) 

movl 	$2.6, -36(%rbp)

movl		-36(%rbp), %eax 
negl		%eax 
movl		%eax, -40(%rbp) 

movl 	$0, -48(%rbp)

movl 	-40, %ebx 
movl 	-48, %edx 
movl 	%ebx, -44(%rbp, %rdx, 4) 

movl 	$4, -52(%rbp)

movl 	$6, -56(%rbp)

movl		-52(%rbp), %eax
cmpl		-56(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -60(%rbp)

cmpl		$0, -60(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -64(%rbp) 

movl 	$2, -72(%rbp)

movl 	-64, %ebx 
movl 	-72, %edx 
movl 	%ebx, -68(%rbp, %rdx, 4) 

movl 	$5, -76(%rbp)

movl		-76(%rbp), %eax
cmpl		-80(%rbp), %eax
setge 	%al
movzbl %al, %eax
movl		%eax, -84(%rbp)

movl 	$1, -88(%rbp)

cmpl		$0, -84(%rbp)
jne 		.1
cmpl		$0, -88(%rbp)
je 		.2
.1: 
movl		$1, %eax
jmp 		.3
.2:
movl		$0, %eax
.3:
movl		%eax, -92(%rbp)

movl 	$3, -100(%rbp)

movl 	-92, %ebx 
movl 	-100, %edx 
movl 	%ebx, -96(%rbp, %rdx, 4) 

movl		$.L04, %edi
movl	 	%edi, 8(%rsp)

movl 	$4, -104(%rbp)

movl		-104(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$8, -108(%rbp)

movl 	$6, -112(%rbp)

movl		-108(%rbp), %eax 
movl		-112(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -116(%rbp)

movl 	$7, -120(%rbp)

movl 	$2, -124(%rbp)

movl		-124(%rbp), %eax 
cltd
idivl	-120
movl		%edx, -128(%rbp)

movl		-116(%rbp), %eax 
cltd
idivl	-128
movl		%eax, -132(%rbp)

movl		-132(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	pruArreglos
movl 	%eax, -136(%rbp) 

movl		-136(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

