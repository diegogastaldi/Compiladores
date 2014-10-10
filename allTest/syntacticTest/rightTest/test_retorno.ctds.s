.text

.globl	id
.type	id, @function 
id: 
enter   $(4 * 4), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$100, -4(%rbp)

movl		-4(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$0, -8(%rbp)

movl		-8(%rbp), %eax
movl		%eax, -4(%rbp)

movl		0(%rbp), %eax
movl		%eax, -8(%rbp)

.beginWhile1: 

movl		-4(%rbp), %eax
cmpl		0(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -12(%rbp)

movl 	$1, -16(%rbp)

movl		-16(%rbp), %eax
cmpl 	-12(%rbp), %eax

jne 		.endWhile0

movl		0(%rbp), %eax
movl		%eax, -12(%rbp)

.beginWhile3: 

movl 	$0, -20(%rbp)

movl		0(%rbp), %eax
cmpl		-20(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -24(%rbp)

movl 	$0, -28(%rbp)

movl		0(%rbp), %eax
cmpl		-28(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -32(%rbp)

cmpl		$0, -24(%rbp)
jne 		.4
cmpl		$0, -32(%rbp)
je 		.5
.4: 
movl		$1, %eax
jmp 		.6
.5:
movl		$0, %eax
.6:
movl		%eax, -36(%rbp)

movl 	$1, -40(%rbp)

movl		-40(%rbp), %eax
cmpl 	-36(%rbp), %eax

jne 		.endWhile2

movl 	$0, -44(%rbp)

movl		0(%rbp), %eax
cmpl		-44(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -48(%rbp)

movl 	$1, -52(%rbp)

movl		-52(%rbp), %eax
cmpl 	-48(%rbp), %eax

jne 		.falseCond7

movl 	$1, -56(%rbp)

movl		-56(%rbp), %eax 
movl		0(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -60(%rbp)

movl		-60(%rbp), %eax
movl		%eax, 0(%rbp)

jmp 		.endIf8

.falseCond7: 

movl 	$1, -64(%rbp)

movl		0(%rbp), %eax 
movl		-64(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -68(%rbp)

movl		-68(%rbp), %eax
movl		%eax, 0(%rbp)

.endIf8: 

jmp 		.beginWhile3

.endWhile2: 

.beginWhile10: 

movl		0(%rbp), %eax
cmpl		-12(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -72(%rbp)

movl		0(%rbp), %eax
cmpl		-12(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -76(%rbp)

cmpl		$0, -72(%rbp)
jne 		.11
cmpl		$0, -76(%rbp)
je 		.12
.11: 
movl		$1, %eax
jmp 		.13
.12:
movl		$0, %eax
.13:
movl		%eax, -80(%rbp)

movl 	$1, -84(%rbp)

movl		-84(%rbp), %eax
cmpl 	-80(%rbp), %eax

jne 		.endWhile9

movl		0(%rbp), %eax
cmpl		-12(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -88(%rbp)

movl 	$1, -92(%rbp)

movl		-92(%rbp), %eax
cmpl 	-88(%rbp), %eax

jne 		.falseCond14

movl 	$1, -96(%rbp)

movl		0(%rbp), %eax 
movl		-96(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -100(%rbp)

movl		-100(%rbp), %eax
movl		%eax, 0(%rbp)

jmp 		.endIf15

.falseCond14: 

movl 	0(%rbp), %eax
cmpl		0(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -104(%rbp)

movl 	$1, -108(%rbp)

movl		-108(%rbp), %eax
cmpl 	-104(%rbp), %eax

jne 		.falseCond16

movl 	$1, -112(%rbp)

movl		-4(%rbp), %eax 
movl		0(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -116(%rbp)

movl		-116(%rbp), %eax 
movl		0(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -120(%rbp)

movl		-4(%rbp), %eax 
movl		-120(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -124(%rbp)

movl		-112(%rbp), %eax 
movl		-124(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -128(%rbp)

movl		-128(%rbp), %eax 
movl		0(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -132(%rbp)

movl		-132(%rbp), %eax
movl		%eax, 0(%rbp)

.falseCond16: 

.endIf15: 

jmp 		.beginWhile10

.endWhile9: 

movl		-8(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$1, -136(%rbp)

movl		-4(%rbp), %eax 
movl		-136(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -140(%rbp)

movl		-140(%rbp), %eax
movl		%eax, -4(%rbp)

jmp 		.beginWhile1

.endWhile0: 

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$9, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

call 	id
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, -16(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

