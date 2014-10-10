.text

.globl	id
.type	id, @function 
id: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$100, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl 	$0, -32(%rbp)

movl		-32(%rbp), %eax
movl		%eax, -36(%rbp)

movl		-40(%rbp), %eax
movl		%eax, -44(%rbp)

.beginWhile2: 

movl		-48(%rbp), %eax
cmpl		-52(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -56(%rbp)

movl 	$1, -60(%rbp)

movl		-60(%rbp), %eax
cmpl 	-56(%rbp), %eax

jne 		.endWhile1

movl		-64(%rbp), %eax
movl		%eax, -68(%rbp)

.beginWhile4: 

movl 	$0, -76(%rbp)

movl		-72(%rbp), %eax
cmpl		-76(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -80(%rbp)

movl 	$0, -88(%rbp)

movl		-84(%rbp), %eax
cmpl		-88(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -92(%rbp)

cmpl		$0, -80(%rbp)
jne 		.5
cmpl		$0, -92(%rbp)
je 		.6
.5: 
movl		$1, %eax
jmp 		.7
.6:
movl		$0, %eax
.7:
movl		%eax, -96(%rbp)

movl 	$1, -100(%rbp)

movl		-100(%rbp), %eax
cmpl 	-96(%rbp), %eax

jne 		.endWhile3

movl 	$0, -108(%rbp)

movl		-104(%rbp), %eax
cmpl		-108(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -112(%rbp)

movl 	$1, -116(%rbp)

movl		-116(%rbp), %eax
cmpl 	-112(%rbp), %eax

jne 		.falseCond8

movl 	$1, -124(%rbp)

movl		-124(%rbp), %eax 
movl		-120(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -128(%rbp)

movl		-128(%rbp), %eax
movl		%eax, -132(%rbp)

jmp 		.endIf9

.falseCond8: 

movl 	$1, -140(%rbp)

movl		-136(%rbp), %eax 
movl		-140(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -144(%rbp)

movl		-144(%rbp), %eax
movl		%eax, -148(%rbp)

.endIf9: 

jmp 		.beginWhile4

.endWhile3: 

.beginWhile11: 

movl		-152(%rbp), %eax
cmpl		-156(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -160(%rbp)

movl		-164(%rbp), %eax
cmpl		-168(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -172(%rbp)

cmpl		$0, -160(%rbp)
jne 		.12
cmpl		$0, -172(%rbp)
je 		.13
.12: 
movl		$1, %eax
jmp 		.14
.13:
movl		$0, %eax
.14:
movl		%eax, -176(%rbp)

movl 	$1, -180(%rbp)

movl		-180(%rbp), %eax
cmpl 	-176(%rbp), %eax

jne 		.endWhile10

movl		-184(%rbp), %eax
cmpl		-188(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -192(%rbp)

movl 	$1, -196(%rbp)

movl		-196(%rbp), %eax
cmpl 	-192(%rbp), %eax

jne 		.falseCond15

movl 	$1, -204(%rbp)

movl		-200(%rbp), %eax 
movl		-204(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -208(%rbp)

movl		-208(%rbp), %eax
movl		%eax, -212(%rbp)

jmp 		.endIf16

.falseCond15: 

movl 	-216(%rbp), %eax
cmpl		-220(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -224(%rbp)

movl 	$1, -228(%rbp)

movl		-228(%rbp), %eax
cmpl 	-224(%rbp), %eax

jne 		.falseCond17

movl 	$1, -236(%rbp)

movl		-248(%rbp), %eax 
movl		-252(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -256(%rbp)

movl		-256(%rbp), %eax 
movl		-244(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -260(%rbp)

movl		-240(%rbp), %eax 
movl		-260(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -264(%rbp)

movl		-236(%rbp), %eax 
movl		-264(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -268(%rbp)

movl		-268(%rbp), %eax 
movl		-232(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -272(%rbp)

movl		-272(%rbp), %eax
movl		%eax, -276(%rbp)

.falseCond17: 

.endIf16: 

jmp 		.beginWhile11

.endWhile10: 

movl		-280(%rbp), %eax
movl		%eax, -284(%rbp)

movl 	$1, -292(%rbp)

movl		-288(%rbp), %eax 
movl		-292(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -296(%rbp)

movl		-296(%rbp), %eax
movl		%eax, -300(%rbp)

jmp 		.beginWhile2

.endWhile1: 

movl		-304(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$9, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

call 	id
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

