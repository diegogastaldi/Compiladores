.L05: 
		.string "mcd%d" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
pushq	%rbp
movq		%rsp, %rbp

movl		-24(%rbp), %eax
cmpl		-28(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -32(%rbp)

movl 	$1, -36(%rbp)

movl		-36(%rbp), %eax
cmpl 	-32(%rbp), %eax

jne 		.falseCond1

movl		-40(%rbp), %eax
movl		%eax, -44(%rbp)

movl		-48(%rbp), %eax
movl		%eax, -52(%rbp)

jmp 		.endIf2

.falseCond1: 

movl		-56(%rbp), %eax
movl		%eax, -60(%rbp)

movl		-64(%rbp), %eax
movl		%eax, -68(%rbp)

.endIf2: 

movl 	$1, -72(%rbp)

movl		-72(%rbp), %eax
movl		%eax, -76(%rbp)

.beginWhile4: 

movl 	$0, -84(%rbp)

movl		-80(%rbp), %eax
cmpl		-84(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -88(%rbp)

movl 	$1, -92(%rbp)

movl		-92(%rbp), %eax
cmpl 	-88(%rbp), %eax

jne 		.endWhile3

movl		-100(%rbp), %eax 
cltd
idivl	-96
movl		%edx, -104(%rbp)

movl		-104(%rbp), %eax
movl		%eax, -108(%rbp)

movl		-112(%rbp), %eax
movl		%eax, -116(%rbp)

movl		-120(%rbp), %eax
movl		%eax, -124(%rbp)

jmp 		.beginWhile4

.endWhile3: 

movl		-128(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl		$.L05, %edi
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

