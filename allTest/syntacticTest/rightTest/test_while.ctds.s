.L07: 
		.string "%dMcd" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

.beginWhile2: 

movl 	$0, -36(%rbp)

movl		-32(%rbp), %eax
cmpl		-36(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -40(%rbp)

movl 	$1, -44(%rbp)

movl		-44(%rbp), %eax
cmpl 	-40(%rbp), %eax

jne 		.endWhile1

movl		-52(%rbp), %eax 
cltd
idivl	-48
movl		%edx, -56(%rbp)

movl		$1, %eax
movl		%eax, -68(%rbp)

movl		-56(%rbp), %eax 
movl		-68(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -64(%rbp)

movl		-64(%rbp), %eax
movl		%eax, -60(%rbp)

movl		$1, %eax
movl		%eax, -84(%rbp)

movl		-84(%rbp), %eax 
movl		-72(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -80(%rbp)

movl		-80(%rbp), %eax
movl		%eax, -76(%rbp)

jmp 		.beginWhile2

jmp 		.beginWhile2

.endWhile1: 

.beginWhile4: 

movl 	$0, -92(%rbp)

movl		-88(%rbp), %eax
cmpl		-92(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -96(%rbp)

movl 	$1, -100(%rbp)

movl		-100(%rbp), %eax
cmpl 	-96(%rbp), %eax

jne 		.endWhile3

jmp 		.endWhile3

jmp 		.beginWhile4

.endWhile3: 

.beginWhile6: 

movl 	$0, -108(%rbp)

movl		-104(%rbp), %eax
cmpl		-108(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -112(%rbp)

movl 	$1, -116(%rbp)

movl		-116(%rbp), %eax
cmpl 	-112(%rbp), %eax

jne 		.endWhile5

jmp 		.beginWhile6

.endWhile5: 

movl		-120(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl		$.L07, %edi
movl	 	%edi, 8(%rsp)

movl 	$6, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$9, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	maxcomdiv
movl 	%eax, -12(%rbp) 

movl		-12(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

