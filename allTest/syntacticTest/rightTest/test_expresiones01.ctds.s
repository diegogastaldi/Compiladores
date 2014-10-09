.text

.globl	prueba
.type	prueba, @function 
prueba: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$50, -20(%rbp)

movl		-20(%rbp), %eax
movl		%eax, -24(%rbp)

movl 	$0, -32(%rbp)

movl		-28(%rbp), %eax
cmpl		-32(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -36(%rbp)

movl 	$1, -40(%rbp)

movl		-40(%rbp), %eax
cmpl 	-36(%rbp), %eax

jne 		falseCondL1

movl 	$4, -44(%rbp)

movl		-44(%rbp), %eax
movl		%eax, -48(%rbp)

movl 	$4, -56(%rbp)

movl 	-52(%rbp), %eax
cmpl		-56(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -60(%rbp)

movl 	$1, -64(%rbp)

movl		-64(%rbp), %eax
cmpl 	-60(%rbp), %eax

jne 		falseCondL2

.beginWhileL4: 

movl 	$4, -72(%rbp)

movl		-68(%rbp), %eax
cmpl		-72(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -76(%rbp)

movl 	$1, -80(%rbp)

movl		-80(%rbp), %eax
cmpl 	-76(%rbp), %eax

jne 		endWhileL3

.beginWhileL6: 

movl 	$4, -88(%rbp)

movl		-84(%rbp), %eax
cmpl		-88(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -92(%rbp)

movl 	$1, -96(%rbp)

movl		-96(%rbp), %eax
cmpl 	-92(%rbp), %eax

jne 		endWhileL5

movl 	$1, -104(%rbp)

movl		-104(%rbp), %eax 
movl		-100(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -108(%rbp)

movl		-108(%rbp), %eax
movl		%eax, -112(%rbp)

movl 	$2, -120(%rbp)

movl		-116(%rbp), %eax 
movl		-120(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -124(%rbp)

movl		-124(%rbp), %eax
movl		%eax, -128(%rbp)

jmp 		beginWhileL6

.endWhileL5: 

movl 	$1, -136(%rbp)

movl		-132(%rbp), %eax 
movl		-136(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -140(%rbp)

movl		-140(%rbp), %eax
movl		%eax, -144(%rbp)

movl 	$2, -152(%rbp)

movl		-148(%rbp), %eax 
cltd
idivl	-152
movl		%eax, -156(%rbp)

movl		-156(%rbp), %eax
movl		%eax, -160(%rbp)

jmp 		beginWhileL4

.endWhileL3: 

.falseCondL2: 

.falseCondL1: 

movl		-164(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

mov 		$0, %eax
leave
ret

