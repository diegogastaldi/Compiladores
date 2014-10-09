.text

.globl	potencia
.type	potencia, @function 
potencia: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$false, -24(%rbp)

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

jne 		falseCondL1

movl		-64(%rbp), %eax 
negl		%eax 
movl		%eax, -68(%rbp) 

movl		-68(%rbp), %eax
movl		%eax, -72(%rbp)

cmpl		$0, -76(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -80(%rbp) 

movl		-80(%rbp), %eax
movl		%eax, -84(%rbp)

.falseCondL1: 

.beginWhileL3: 

movl		-88(%rbp), %eax
cmpl		-92(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -96(%rbp)

movl 	$1, -100(%rbp)

movl		-100(%rbp), %eax
cmpl 	-96(%rbp), %eax

jne 		endWhileL2

movl		-104(%rbp), %eax 
movl		-108(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -112(%rbp)

movl		-112(%rbp), %eax
movl		%eax, -116(%rbp)

movl 	$1, -124(%rbp)

movl		-120(%rbp), %eax 
movl		-124(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -128(%rbp)

movl		-128(%rbp), %eax
movl		%eax, -132(%rbp)

jmp 		beginWhileL3

.endWhileL2: 

cmpl		$0, -136(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -140(%rbp) 

movl 	$1, -144(%rbp)

movl		-144(%rbp), %eax
cmpl 	-140(%rbp), %eax

jne 		falseCondL4

movl 	$1.0, -148(%rbp)

movl		-148(%rbp), %eax 
cltd
idivl	-152
movl		%eax, -156(%rbp)

movl		-156(%rbp), %eax
leave
ret

jmp 		endIfL5

.falseCondL4: 

movl		-160(%rbp), %eax
leave
ret

.endIfL5: 

movl 	$100.1, -164(%rbp)

movl		-164(%rbp), %eax 
negl		%eax 
movl		%eax, -168(%rbp) 

movl		-168(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$8.0, -12(%rbp)

movl		-12(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$2, -20(%rbp)

movl		-20(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl		-24(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	potencia
movl 	%eax, -28(%rbp) 

movl		-28(%rbp), %eax
movl		%eax, -32(%rbp)

call 	printf()

mov 		$0, %eax
leave
ret

