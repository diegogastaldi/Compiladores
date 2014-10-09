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

movl 	$true, -76(%rbp)

movl		-76(%rbp), %eax
movl		%eax, -80(%rbp)

.falseCondL1: 

.beginWhileL3: 

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
jne 		.L4
cmpl		$0, -104(%rbp)
je 		.L5
.L4: 
movl		$1, %eax
jmp 		.L6
.L5:
movl		$0, %eax
.L6:
movl		%eax, -108(%rbp)

movl 	$1, -112(%rbp)

movl		-112(%rbp), %eax
cmpl 	-108(%rbp), %eax

jne 		endWhileL2

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

jmp 		beginWhileL3

.endWhileL2: 

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

jne 		falseCondL7

movl 	$1.0, -172(%rbp)

movl		-172(%rbp), %eax 
cltd
idivl	-176
movl		%eax, -180(%rbp)

movl		-180(%rbp), %eax
leave
ret

jmp 		endIfL8

.falseCondL7: 

movl		-184(%rbp), %eax
leave
ret

.endIfL8: 

movl 	$100.1, -188(%rbp)

movl		-188(%rbp), %eax 
negl		%eax 
movl		%eax, -192(%rbp) 

movl		-192(%rbp), %eax
leave
ret

.globl	multiples
.type	multiples, @function 
multiples: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$20.0, -52(%rbp)

movl		-52(%rbp), %eax 
negl		%eax 
movl		%eax, -56(%rbp) 

movl		-56(%rbp), %eax
movl		%eax, -60(%rbp)

movl 	$2, -64(%rbp)

movl		-64(%rbp), %eax 
negl		%eax 
movl		%eax, -68(%rbp) 

movl		-68(%rbp), %eax
movl		%eax, -72(%rbp)

movl 	$3.0, -76(%rbp)

movl		-76(%rbp), %eax 
negl		%eax 
movl		%eax, -80(%rbp) 

movl		-80(%rbp), %eax
movl		%eax, -84(%rbp)

movl 	$3.0, -88(%rbp)

movl		-88(%rbp), %eax 
negl		%eax 
movl		%eax, -92(%rbp) 

movl		-92(%rbp), %eax
movl		%eax, -96(%rbp)

movl		-108(%rbp), %eax 
movl		-104(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -112(%rbp)

movl		-100(%rbp), %eax 
movl		-112(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -116(%rbp)

movl		-116(%rbp), %eax
movl		%eax, -120(%rbp)

movl 	$0, -124(%rbp)

movl		-124(%rbp), %eax
movl		%eax, -128(%rbp)

movl 	$0, -132(%rbp)

movl		-132(%rbp), %eax
movl		%eax, -136(%rbp)

movl 	$0, -140(%rbp)

movl		-140(%rbp), %eax
movl		%eax, -144(%rbp)

movl 	$5, -148(%rbp)

movl		-148(%rbp), %eax
movl		%eax, -152(%rbp)

movl		-156(%rbp), %eax
cmpl		-160(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -164(%rbp)

movl 	$1, -168(%rbp)

movl		-168(%rbp), %eax
cmpl 	-164(%rbp), %eax

jne 		falseCondL9

movl		-172(%rbp), %eax
cmpl		-176(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -180(%rbp)

movl 	$1, -184(%rbp)

movl		-184(%rbp), %eax
cmpl 	-180(%rbp), %eax

jne 		falseCondL10

movl		-188(%rbp), %eax
movl		%eax, -192(%rbp)

jmp 		endIfL11

.falseCondL10: 

movl		-196(%rbp), %eax
movl		%eax, -200(%rbp)

.endIfL11: 

jmp 		endIfL12

.falseCondL9: 

.beginWhileL14: 

movl		-204(%rbp), %eax
cmpl		-208(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -212(%rbp)

movl 	$1, -216(%rbp)

movl		-216(%rbp), %eax
cmpl 	-212(%rbp), %eax

jne 		endWhileL13

.beginWhileL16: 

movl		-220(%rbp), %eax
cmpl		-224(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -228(%rbp)

movl 	$1, -232(%rbp)

movl		-232(%rbp), %eax
cmpl 	-228(%rbp), %eax

jne 		endWhileL15

.beginWhileL18: 

movl		-236(%rbp), %eax
cmpl		-240(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -244(%rbp)

movl 	-248(%rbp), %eax
cmpl		-252(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -256(%rbp)

cmpl		$0, -244(%rbp)
jne 		.L19
cmpl		$0, -256(%rbp)
je 		.L20
.L19: 
movl		$1, %eax
jmp 		.L21
.L20:
movl		$0, %eax
.L21:
movl		%eax, -260(%rbp)

movl 	$1, -264(%rbp)

movl		-264(%rbp), %eax
cmpl 	-260(%rbp), %eax

jne 		endWhileL17

movl 	$3, -272(%rbp)

movl 	-268(%rbp), %eax
cmpl		-272(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -276(%rbp)

movl 	$1, -280(%rbp)

movl		-280(%rbp), %eax
cmpl 	-276(%rbp), %eax

jne 		falseCondL22

movl 	$2.0, -288(%rbp)

movl		-284(%rbp), %eax 
movl		-288(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -292(%rbp)

movl		-292(%rbp), %eax
movl		%eax, -296(%rbp)

jmp 		endIfL23

.falseCondL22: 

movl 	$10.0, -304(%rbp)

movl 	$2.0, -308(%rbp)

movl		-304(%rbp), %eax 
cltd
idivl	-308
movl		%eax, -312(%rbp)

movl		-312(%rbp), %eax 
movl		-300(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -316(%rbp)

movl		-316(%rbp), %eax
movl		%eax, -320(%rbp)

.endIfL23: 

movl 	$1, -324(%rbp)

movl 	$1, 1(%rbp)

movl		1(%rbp), %eax
movl		%eax, -336(%rbp)

movl		-324(%rbp), %eax 
movl		-336(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -332(%rbp)

movl		-332(%rbp), %eax
movl		%eax, -328(%rbp)

jmp 		beginWhileL18

.endWhileL17: 

movl		-340(%rbp), %eax
cmpl		-344(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -348(%rbp)

movl 	$0.0, -352(%rbp)

movl		-352(%rbp), %eax
cmpl		-356(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -360(%rbp)

cmpl		$0, -348(%rbp)
je 		.L24
cmpl		$0, -360(%rbp)
je 		.L24
movl		$1, %eax
jmp		.L25
.L24:
movl		$0, %eax
.L25:
movl		%eax, -364(%rbp)

movl 	$1, -368(%rbp)

movl		-368(%rbp), %eax
cmpl 	-364(%rbp), %eax

jne 		falseCondL26

movl 	$35.0, -372(%rbp)

movl 	$4.0, -376(%rbp)

movl 	$498.0, -384(%rbp)

movl		-384(%rbp), %eax 
movl		-380(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -388(%rbp)

movl		-376(%rbp), %eax 
movl		-388(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -392(%rbp)

movl		-372(%rbp), %eax 
movl		-392(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -396(%rbp)

movl		-396(%rbp), %eax
movl		%eax, -400(%rbp)

jmp 		endIfL27

.falseCondL26: 

movl 	$3.2, -404(%rbp)

movl 	$12345.356, -412(%rbp)

movl		-412(%rbp), %eax 
movl		-408(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -416(%rbp)

movl		-416(%rbp), %eax 
movl		-404(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -420(%rbp)

movl		-420(%rbp), %eax
movl		%eax, -424(%rbp)

.endIfL27: 

movl 	$1, -432(%rbp)

movl		-428(%rbp), %eax 
movl		-432(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -436(%rbp)

movl		-436(%rbp), %eax
movl		%eax, -440(%rbp)

jmp 		beginWhileL16

.endWhileL15: 

movl		-448(%rbp), %eax 
negl		%eax 
movl		%eax, -452(%rbp) 

movl 	$23.0, -456(%rbp)

movl 	$2.0, -464(%rbp)

movl 	$4.0, -468(%rbp)

movl		-464(%rbp), %eax 
cltd
idivl	-468
movl		%eax, -472(%rbp)

movl		-460(%rbp), %eax 
movl		-472(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -476(%rbp)

movl		-456(%rbp), %eax 
movl		-476(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -480(%rbp)

movl		-452(%rbp), %eax 
movl		-480(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -484(%rbp)

movl		-444(%rbp), %eax 
movl		-484(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -488(%rbp)

movl		-488(%rbp), %eax
movl		%eax, -492(%rbp)

movl 	$1, -500(%rbp)

movl		-496(%rbp), %eax 
movl		-500(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -504(%rbp)

movl		-504(%rbp), %eax
movl		%eax, -508(%rbp)

jmp 		beginWhileL14

.endWhileL13: 

.endIfL12: 

movl		-512(%rbp), %eax 
negl		%eax 
movl		%eax, -516(%rbp) 

movl		-516(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$80.0, -12(%rbp)

movl		-12(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$15.0, -20(%rbp)

movl		-20(%rbp), %eax 
negl		%eax 
movl		%eax, -24(%rbp) 

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl 	$4.3, -32(%rbp)

movl		-32(%rbp), %eax
movl		%eax, -36(%rbp)

movl 	$7.6, -40(%rbp)

movl		-40(%rbp), %eax 
negl		%eax 
movl		%eax, -44(%rbp) 

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

call 	printf()

mov 		$0, %eax
leave
ret

