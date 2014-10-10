.text

.globl	pruContinue
.type	pruContinue, @function 
pruContinue: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1.0, -24(%rbp)

movl		-24(%rbp), %eax 
negl		%eax 
movl		%eax, -28(%rbp) 

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

movl 	$23, -36(%rbp)

movl		-36(%rbp), %eax
movl		%eax, -40(%rbp)

movl 	$23.0, -44(%rbp)

movl		-44(%rbp), %eax
movl		%eax, -48(%rbp)

.beginWhile2: 

movl 	$0, -56(%rbp)

movl		-52(%rbp), %eax
cmpl		-56(%rbp), %eax
setge 	%al
movzbl %al, %eax
movl		%eax, -60(%rbp)

movl 	$1, -64(%rbp)

movl		-64(%rbp), %eax
cmpl 	-60(%rbp), %eax

jne 		.endWhile1

movl 	$1.0, -72(%rbp)

movl		-72(%rbp), %eax 
movl		-68(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -76(%rbp)

movl		-76(%rbp), %eax
movl		%eax, -80(%rbp)

movl 	$2.0, -88(%rbp)

movl		-84(%rbp), %eax
cmpl		-88(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -92(%rbp)

movl 	$1, -96(%rbp)

movl		-96(%rbp), %eax
cmpl 	-92(%rbp), %eax

jne 		.falseCond3

movl 	$0.0, -104(%rbp)

movl		-100(%rbp), %eax
cmpl		-104(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -108(%rbp)

movl 	$1, -112(%rbp)

movl		-112(%rbp), %eax
cmpl 	-108(%rbp), %eax

jne 		.falseCond4

movl		-120(%rbp), %eax 
movl		-124(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -128(%rbp)

movl		-116(%rbp), %eax 
movl		-128(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -132(%rbp)

movl		-132(%rbp), %eax
movl		%eax, -136(%rbp)

.falseCond4: 

jmp 		.beginWhile2

jmp 		.endIf5

.falseCond3: 

movl 	$1000.2343, -140(%rbp)

movl		-140(%rbp), %eax 
negl		%eax 
movl		%eax, -144(%rbp) 

movl 	$6752.0, -148(%rbp)

movl		-144(%rbp), %eax 
movl		-148(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -152(%rbp)

movl		-152(%rbp), %eax
movl		%eax, -156(%rbp)

jmp 		.endWhile1

.endIf5: 

jmp 		.beginWhile2

.endWhile1: 

movl 	$2.0, -160(%rbp)

movl		-160(%rbp), %eax 
movl		-164(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -168(%rbp)

movl		-168(%rbp), %eax 
negl		%eax 
movl		%eax, -172(%rbp) 

movl		-172(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl		-12(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-16(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	pruContinue
movl 	%eax, -20(%rbp) 

movl		-20(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

