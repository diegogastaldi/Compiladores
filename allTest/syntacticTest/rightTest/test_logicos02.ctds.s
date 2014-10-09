.text

.globl	promedio
.type	promedio, @function 
promedio: 
pushq	%rbp
movq		%rsp, %rbp

movl		-16(%rbp), %eax
cmpl		-20(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -24(%rbp)

movl		-28(%rbp), %eax
cmpl		-32(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -36(%rbp)

cmpl		$0, -24(%rbp)
je 		.L1
cmpl		$0, -36(%rbp)
je 		.L1
movl		$1, %eax
jmp		.L2
.L1:
movl		$0, %eax
.L2:
movl		%eax, -40(%rbp)

movl 	$1, -44(%rbp)

movl		-44(%rbp), %eax
cmpl 	-40(%rbp), %eax

jne 		falseCondL3

movl		-48(%rbp), %eax 
movl		-52(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -56(%rbp)

movl 	$2.0, -60(%rbp)

movl		-56(%rbp), %eax 
cltd
idivl	-60
movl		%eax, -64(%rbp)

movl		-64(%rbp), %eax
leave
ret

.falseCondL3: 

movl		-68(%rbp), %eax
cmpl		-72(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -76(%rbp)

movl		-80(%rbp), %eax
cmpl		-84(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -88(%rbp)

cmpl		$0, -76(%rbp)
je 		.L4
cmpl		$0, -88(%rbp)
je 		.L4
movl		$1, %eax
jmp		.L5
.L4:
movl		$0, %eax
.L5:
movl		%eax, -92(%rbp)

movl 	$1, -96(%rbp)

movl		-96(%rbp), %eax
cmpl 	-92(%rbp), %eax

jne 		falseCondL6

movl		-100(%rbp), %eax 
movl		-104(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -108(%rbp)

movl 	$2.0, -112(%rbp)

movl		-108(%rbp), %eax 
cltd
idivl	-112
movl		%eax, -116(%rbp)

movl		-116(%rbp), %eax
leave
ret

.falseCondL6: 

movl		-120(%rbp), %eax
cmpl		-124(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -128(%rbp)

movl		-132(%rbp), %eax
cmpl		-136(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -140(%rbp)

cmpl		$0, -128(%rbp)
je 		.L7
cmpl		$0, -140(%rbp)
je 		.L7
movl		$1, %eax
jmp		.L8
.L7:
movl		$0, %eax
.L8:
movl		%eax, -144(%rbp)

movl 	$1, -148(%rbp)

movl		-148(%rbp), %eax
cmpl 	-144(%rbp), %eax

jne 		falseCondL9

movl		-152(%rbp), %eax 
movl		-156(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -160(%rbp)

movl 	$2.0, -164(%rbp)

movl		-160(%rbp), %eax 
cltd
idivl	-164
movl		%eax, -168(%rbp)

movl		-168(%rbp), %eax
leave
ret

.falseCondL9: 

movl 	-172(%rbp), %eax
cmpl		-176(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -180(%rbp)

movl 	-184(%rbp), %eax
cmpl		-188(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -192(%rbp)

movl 	-196(%rbp), %eax
cmpl		-200(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -204(%rbp)

cmpl		$0, -192(%rbp)
je 		.L10
cmpl		$0, -204(%rbp)
je 		.L10
movl		$1, %eax
jmp		.L11
.L10:
movl		$0, %eax
.L11:
movl		%eax, -208(%rbp)

cmpl		$0, -180(%rbp)
je 		.L12
cmpl		$0, -208(%rbp)
je 		.L12
movl		$1, %eax
jmp		.L13
.L12:
movl		$0, %eax
.L13:
movl		%eax, -212(%rbp)

movl 	$1, -216(%rbp)

movl		-216(%rbp), %eax
cmpl 	-212(%rbp), %eax

jne 		falseCondL14

movl		-220(%rbp), %eax
leave
ret

.falseCondL14: 

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

mov 		$0, %eax
leave
ret

