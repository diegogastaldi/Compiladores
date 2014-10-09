.text

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
pushq	%rbp
movq		%rsp, %rbp

movl		-48(%rbp), %eax
cmpl		-52(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -56(%rbp)

movl 	$1, -60(%rbp)

movl		-60(%rbp), %eax
cmpl 	-56(%rbp), %eax

jne 		falseCondL1

movl 	$1, -64(%rbp)

movl		-68(%rbp), %eax 
movl		-64(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -72(%rbp)

movl 	$0, -80(%rbp)

movl 	-72, %ebx 
movl 	-80, %edx 
movl 	%ebx, -76(%rbp, %edx, 4) 

.falseCondL1: 

movl 	-84(%rbp), %eax
cmpl		-88(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -92(%rbp)

movl 	$1, -96(%rbp)

movl		-96(%rbp), %eax
cmpl 	-92(%rbp), %eax

jne 		falseCondL2

movl 	$5, -104(%rbp)

movl		-100(%rbp), %eax 
movl		-104(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -108(%rbp)

movl 	$1, -116(%rbp)

movl 	$1, -120(%rbp)

movl		-120(%rbp), %eax 
movl		-116(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -124(%rbp)

movl 	-108, %ebx 
movl 	-124, %edx 
movl 	%ebx, -112(%rbp, %edx, 4) 

jmp 		endIfL3

.falseCondL2: 

movl		-140(%rbp), %eax 
movl		-136(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -144(%rbp)

movl 	-128, %ebx 
movl 	-144, %edx 
movl 	%ebx, -132(%rbp, %edx, 4) 

.endIfL3: 

movl 	$0, -148(%rbp)

movl		-148(%rbp), %eax
movl		%eax, -152(%rbp)

.beginWhileL5: 

movl 	$589, -160(%rbp)

movl		-156(%rbp), %eax
cmpl		-160(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -164(%rbp)

movl 	$1, -168(%rbp)

movl		-168(%rbp), %eax
cmpl 	-164(%rbp), %eax

jne 		endWhileL4

movl 	$2, -176(%rbp)

movl		-172(%rbp), %eax 
movl		-176(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -180(%rbp)

movl 	-180, %ebx 
movl 	-188, %edx 
movl 	%ebx, -184(%rbp, %edx, 4) 

movl 	$1, -192(%rbp)

movl 	$1, 1(%rbp)

movl		1(%rbp), %eax
movl		%eax, -204(%rbp)

movl		-192(%rbp), %eax 
movl		-204(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -200(%rbp)

movl		-200(%rbp), %eax
movl		%eax, -196(%rbp)

jmp 		beginWhileL5

.endWhileL4: 

movl 	$8, -208(%rbp)

movl		-208(%rbp), %eax
movl		%eax, -212(%rbp)

.beginWhileL7: 

movl 	$0, -220(%rbp)

movl		-216(%rbp), %eax
cmpl		-220(%rbp), %eax
setge 	%al
movzbl %al, %eax
movl		%eax, -224(%rbp)

movl 	$1, -228(%rbp)

movl		-228(%rbp), %eax
cmpl 	-224(%rbp), %eax

jne 		endWhileL6

movl 	$3, -236(%rbp)

movl		-232(%rbp), %eax 
movl		-236(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -240(%rbp)

movl 	-240, %ebx 
movl 	-248, %edx 
movl 	%ebx, -244(%rbp, %edx, 4) 

movl 	$1, -252(%rbp)

movl 	$1, 1(%rbp)

movl		1(%rbp), %eax
movl		%eax, -264(%rbp)

movl		-264(%rbp), %eax 
movl		-252(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -260(%rbp)

movl		-260(%rbp), %eax
movl		%eax, -256(%rbp)

jmp 		beginWhileL7

.endWhileL6: 

movl 	$0, -268(%rbp)

movl		-268(%rbp), %eax
movl		%eax, -272(%rbp)

.beginWhileL9: 

movl 	$5, -280(%rbp)

movl 	$9, -284(%rbp)

movl		-280(%rbp), %eax 
movl		-284(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -288(%rbp)

movl 	$40, -292(%rbp)

movl		-292(%rbp), %eax 
movl		-288(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -296(%rbp)

movl		-276(%rbp), %eax
cmpl		-296(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -300(%rbp)

movl 	$1, -304(%rbp)

movl		-304(%rbp), %eax
cmpl 	-300(%rbp), %eax

jne 		endWhileL8

movl		-308(%rbp), %eax
cmpl		-312(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -316(%rbp)

movl 	-316, %ebx 
movl 	-324, %edx 
movl 	%ebx, -320(%rbp, %edx, 4) 

movl 	$1, -332(%rbp)

movl		-328(%rbp), %eax 
movl		-332(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -336(%rbp)

movl		-336(%rbp), %eax
movl		%eax, -340(%rbp)

jmp 		beginWhileL9

.endWhileL8: 

movl		-344(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

call 	printf()

mov 		$0, %eax
leave
ret

