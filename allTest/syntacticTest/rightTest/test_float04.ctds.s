.text

.globl	potencia
.type	potencia, @function 
potencia: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl 	$1, -32(%rbp)

movl		-32(%rbp), %eax
movl		%eax, -36(%rbp)

movl 	$1.0, -40(%rbp)

movl		-40(%rbp), %eax
movl		%eax, -44(%rbp)

movl 	$0, -52(%rbp)

movl		-48(%rbp), %eax
cmpl		-52(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -56(%rbp)

movl 	$1, -60(%rbp)

movl		-60(%rbp), %eax
cmpl 	-56(%rbp), %eax

jne 		.falseCond1

movl		-64(%rbp), %eax 
negl		%eax 
movl		%eax, -68(%rbp) 

movl		-68(%rbp), %eax
movl		%eax, -72(%rbp)

movl 	$1, -76(%rbp)

movl		-76(%rbp), %eax
movl		%eax, -80(%rbp)

.falseCond1: 

.beginWhile3: 

movl		-84(%rbp), %eax
cmpl		-88(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -92(%rbp)

movl 	-96(%rbp), %eax
cmpl		-100(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -104(%rbp)

cmpl		$0, -92(%rbp)
jne 		.4
cmpl		$0, -104(%rbp)
je 		.5
.4: 
movl		$1, %eax
jmp 		.6
.5:
movl		$0, %eax
.6:
movl		%eax, -108(%rbp)

movl 	$1, -112(%rbp)

movl		-112(%rbp), %eax
cmpl 	-108(%rbp), %eax

jne 		.endWhile2

movl 	$2.0, -124(%rbp)

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

movl 	$1, -144(%rbp)

movl		-140(%rbp), %eax 
movl		-144(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -148(%rbp)

movl		-148(%rbp), %eax
movl		%eax, -152(%rbp)

jmp 		.beginWhile3

.endWhile2: 

cmpl		$0, -156(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -160(%rbp) 

cmpl		$0, -160(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -164(%rbp) 

movl 	$1, -168(%rbp)

movl		-168(%rbp), %eax
cmpl 	-164(%rbp), %eax

jne 		.falseCond7

movl 	$1.0, -172(%rbp)

movl		-172(%rbp), %eax 
cltd
idivl	-176
movl		%eax, -180(%rbp)

movl		-180(%rbp), %eax
leave
ret

jmp 		.endIf8

.falseCond7: 

movl		-184(%rbp), %eax
leave
ret

.endIf8: 

movl 	$100.1, -188(%rbp)

movl		-188(%rbp), %eax 
negl		%eax 
movl		%eax, -192(%rbp) 

movl		-192(%rbp), %eax
leave
ret

.globl	multRepeat
.type	multRepeat, @function 
multRepeat: 
pushq	%rbp
movq		%rsp, %rbp

movl		-32(%rbp), %eax 
movl		-36(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -40(%rbp)

movl		-28(%rbp), %eax 
movl		-40(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -44(%rbp)

movl		-24(%rbp), %eax 
movl		-44(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -48(%rbp)

movl		-20(%rbp), %eax 
movl		-48(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -52(%rbp)

movl		-16(%rbp), %eax 
movl		-52(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -56(%rbp)

movl		-56(%rbp), %eax
movl		%eax, -60(%rbp)

movl		-64(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$15.0, -12(%rbp)

movl		-12(%rbp), %eax 
negl		%eax 
movl		%eax, -16(%rbp) 

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

movl 	$4.3, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl 	$7.6, -32(%rbp)

movl		-32(%rbp), %eax 
negl		%eax 
movl		%eax, -36(%rbp) 

movl		-36(%rbp), %eax
movl		%eax, -40(%rbp)

movl 	$80.0, -44(%rbp)

movl		-44(%rbp), %eax
movl		%eax, -48(%rbp)

movl 	$2, -52(%rbp)

movl		-52(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-56(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	potencia
movl 	%eax, -60(%rbp) 

movl		-60(%rbp), %eax
movl		%eax, -64(%rbp)

call 	printf

mov 		$0, %eax
leave
ret

