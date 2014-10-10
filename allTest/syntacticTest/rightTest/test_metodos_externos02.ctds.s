.L05: 
		.string "%d%f" 

.L04: 
		.string "mcd" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		4(%rbp), %eax
cmpl		0(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -3(%rbp)

movl 	$1, -7(%rbp)

movl		-7(%rbp), %eax
cmpl 	-3(%rbp), %eax

jne 		.falseCond0

movl		4(%rbp), %eax
movl		%eax, -4(%rbp)

movl		0(%rbp), %eax
movl		%eax, -12(%rbp)

jmp 		.endIf1

.falseCond0: 

movl		0(%rbp), %eax
movl		%eax, -4(%rbp)

movl		4(%rbp), %eax
movl		%eax, -12(%rbp)

.endIf1: 

movl 	$1, -11(%rbp)

movl		-11(%rbp), %eax
movl		%eax, -8(%rbp)

.beginWhile3: 

movl 	$0, -15(%rbp)

movl		-8(%rbp), %eax
cmpl		-15(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -19(%rbp)

movl 	$1, -23(%rbp)

movl		-23(%rbp), %eax
cmpl 	-19(%rbp), %eax

jne 		.endWhile2

movl		-12(%rbp), %eax 
cltd
idivl	-4
movl		%edx, -27(%rbp)

movl		-27(%rbp), %eax
movl		%eax, -8(%rbp)

movl		-12(%rbp), %eax
movl		%eax, -4(%rbp)

movl		-8(%rbp), %eax
movl		%eax, -12(%rbp)

jmp 		.beginWhile3

.endWhile2: 

movl		-4(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$3, 0(%rbp)

movl 	$7, -4(%rbp)

movl 	$6, -8(%rbp)

movl		-4(%rbp), %eax 
cltd
idivl	-8
movl		%eax, -12(%rbp)

movl		-12(%rbp), %eax 
movl		0(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -16(%rbp)

movl		0(%rbp), %eax 
movl		-16(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -20(%rbp)

movl		-20(%rbp), %edi
movl	 	%edi, -24(%rsp)

movl 	$9, -28(%rbp)

movl		-28(%rbp), %edi
movl	 	%edi, -32(%rsp)

movl 	$6, -36(%rbp)

movl		-36(%rbp), %edi
movl	 	%edi, -40(%rsp)

call 	maxcomdiv
movl 	%eax, -44(%rbp) 

movl		-44(%rbp), %edi
movl	 	%edi, -52(%rsp)

movl		$.L04, %edi
movl	 	%edi, -56(%rsp)

movl		$.L05, %edi
movl	 	%edi, -60(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

