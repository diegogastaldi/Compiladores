.L03: 
		.string "%d resultado : " 

.text

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$8.87, -1(%rbp)

movl		-1(%rbp), %eax
movl		%eax, -288(%rbp)

movl 	$4, -5(%rbp)

movl 	$0, -9(%rbp)

movl 	-5, %ebx 
movl 	-9, %edx 
movl 	%ebx, 0(%rbp, %rdx, 4) 

movl 	$2.6, -13(%rbp)

movl		-13(%rbp), %eax 
movl		-288(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -17(%rbp)

movl 	$55, -21(%rbp)

movl 	-17, %ebx 
movl 	-21, %edx 
movl 	%ebx, -20(%rbp, %rdx, 4) 

movl		4(%rbp), %eax
cmpl		0(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -25(%rbp)

movl 	$0, -29(%rbp)

movl 	-25, %ebx 
movl 	-29, %edx 
movl 	%ebx, -244(%rbp, %rdx, 4) 

movl		4(%rbp), %eax
cmpl		0(%rbp), %eax
setge 	%al
movzbl %al, %eax
movl		%eax, -33(%rbp)

movl 	$1, -37(%rbp)

movl 	-33, %ebx 
movl 	-37, %edx 
movl 	%ebx, -244(%rbp, %rdx, 4) 

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, 0(%rbp)

movl		0(%rbp), %eax
movl		%eax, -284(%rbp)

movl 	$58, -4(%rbp)

movl 	$6, -8(%rbp)

movl		-8(%rbp), %eax 
negl		%eax 
movl		%eax, -12(%rbp) 

movl		-12(%rbp), %eax 
movl		-4(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -16(%rbp)

movl 	$1, -20(%rbp)

movl 	-16, %ebx 
movl 	-20, %edx 
movl 	%ebx, 0(%rbp, %rdx, 4) 

movl 	$2.6, -24(%rbp)

movl		-24(%rbp), %eax 
negl		%eax 
movl		%eax, -28(%rbp) 

movl 	$0, -32(%rbp)

movl 	-28, %ebx 
movl 	-32, %edx 
movl 	%ebx, -20(%rbp, %rdx, 4) 

movl 	$4, -36(%rbp)

movl 	$6, -40(%rbp)

movl		-36(%rbp), %eax
cmpl		-40(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -44(%rbp)

cmpl		$0, -44(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -48(%rbp) 

movl 	$2, -52(%rbp)

movl 	-48, %ebx 
movl 	-52, %edx 
movl 	%ebx, -244(%rbp, %rdx, 4) 

movl 	$5, -56(%rbp)

movl		-56(%rbp), %eax
cmpl		0(%rbp), %eax
setge 	%al
movzbl %al, %eax
movl		%eax, -60(%rbp)

movl 	$1, -64(%rbp)

cmpl		$0, -60(%rbp)
jne 		.0
cmpl		$0, -64(%rbp)
je 		.1
.0: 
movl		$1, %eax
jmp 		.2
.1:
movl		$0, %eax
.2:
movl		%eax, -68(%rbp)

movl 	$3, -72(%rbp)

movl 	-68, %ebx 
movl 	-72, %edx 
movl 	%ebx, -244(%rbp, %rdx, 4) 

movl 	$8, -76(%rbp)

movl 	$6, -80(%rbp)

movl		-76(%rbp), %eax 
movl		-80(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -84(%rbp)

movl 	$7, -88(%rbp)

movl 	$2, -92(%rbp)

movl		-92(%rbp), %eax 
cltd
idivl	-88
movl		%edx, -96(%rbp)

movl		-84(%rbp), %eax 
cltd
idivl	-96
movl		%eax, -100(%rbp)

movl		-100(%rbp), %edi
movl	 	%edi, -104(%rsp)

movl 	$4, -108(%rbp)

movl		-108(%rbp), %edi
movl	 	%edi, -112(%rsp)

call 	pruArreglos
movl 	%eax, -116(%rbp) 

movl		-116(%rbp), %edi
movl	 	%edi, -124(%rsp)

movl		$.L03, %edi
movl	 	%edi, -128(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

