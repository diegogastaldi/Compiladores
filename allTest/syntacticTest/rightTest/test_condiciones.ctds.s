.text

.globl	dados
.type	dados, @function 
dados: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$6, -20(%rbp)

movl 	-16(%rbp), %eax
cmpl		-20(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -24(%rbp)

cmpl		$0, -24(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -28(%rbp) 

movl 	$6, -36(%rbp)

movl 	-32(%rbp), %eax
cmpl		-36(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -40(%rbp)

cmpl		$0, -40(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -44(%rbp) 

movl 	$6, -52(%rbp)

movl 	-48(%rbp), %eax
cmpl		-52(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -56(%rbp)

cmpl		$0, -56(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -60(%rbp) 

cmpl		$0, -44(%rbp)
je 		.L1
cmpl		$0, -60(%rbp)
je 		.L1
movl		$1, %eax
jmp		.L2
.L1:
movl		$0, %eax
.L2:
movl		%eax, -64(%rbp)

cmpl		$0, -28(%rbp)
je 		.L3
cmpl		$0, -64(%rbp)
je 		.L3
movl		$1, %eax
jmp		.L4
.L3:
movl		$0, %eax
.L4:
movl		%eax, -68(%rbp)

movl 	$1, -72(%rbp)

movl		-72(%rbp), %eax
cmpl 	-68(%rbp), %eax

jne 		falseCondL5

movl 	$1.0, -76(%rbp)

movl		-76(%rbp), %eax
leave
ret

.falseCondL5: 

movl 	$6, -84(%rbp)

movl 	-80(%rbp), %eax
cmpl		-84(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -88(%rbp)

movl 	$6, -96(%rbp)

movl 	-92(%rbp), %eax
cmpl		-96(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -100(%rbp)

cmpl		$0, -100(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -104(%rbp) 

movl 	$6, -112(%rbp)

movl 	-108(%rbp), %eax
cmpl		-112(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -116(%rbp)

cmpl		$0, -116(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -120(%rbp) 

cmpl		$0, -104(%rbp)
je 		.L6
cmpl		$0, -120(%rbp)
je 		.L6
movl		$1, %eax
jmp		.L7
.L6:
movl		$0, %eax
.L7:
movl		%eax, -124(%rbp)

cmpl		$0, -88(%rbp)
je 		.L8
cmpl		$0, -124(%rbp)
je 		.L8
movl		$1, %eax
jmp		.L9
.L8:
movl		$0, %eax
.L9:
movl		%eax, -128(%rbp)

movl 	$6, -136(%rbp)

movl 	-132(%rbp), %eax
cmpl		-136(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -140(%rbp)

cmpl		$0, -140(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -144(%rbp) 

movl 	$6, -152(%rbp)

movl 	-148(%rbp), %eax
cmpl		-152(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -156(%rbp)

movl 	$6, -164(%rbp)

movl 	-160(%rbp), %eax
cmpl		-164(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -168(%rbp)

cmpl		$0, -168(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -172(%rbp) 

cmpl		$0, -156(%rbp)
je 		.L10
cmpl		$0, -172(%rbp)
je 		.L10
movl		$1, %eax
jmp		.L11
.L10:
movl		$0, %eax
.L11:
movl		%eax, -176(%rbp)

cmpl		$0, -144(%rbp)
je 		.L12
cmpl		$0, -176(%rbp)
je 		.L12
movl		$1, %eax
jmp		.L13
.L12:
movl		$0, %eax
.L13:
movl		%eax, -180(%rbp)

movl 	$6, -188(%rbp)

movl 	-184(%rbp), %eax
cmpl		-188(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -192(%rbp)

cmpl		$0, -192(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -196(%rbp) 

movl 	$6, -204(%rbp)

movl 	-200(%rbp), %eax
cmpl		-204(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -208(%rbp)

cmpl		$0, -208(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -212(%rbp) 

movl 	$6, -220(%rbp)

movl 	-216(%rbp), %eax
cmpl		-220(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -224(%rbp)

cmpl		$0, -212(%rbp)
je 		.L14
cmpl		$0, -224(%rbp)
je 		.L14
movl		$1, %eax
jmp		.L15
.L14:
movl		$0, %eax
.L15:
movl		%eax, -228(%rbp)

cmpl		$0, -196(%rbp)
je 		.L16
cmpl		$0, -228(%rbp)
je 		.L16
movl		$1, %eax
jmp		.L17
.L16:
movl		$0, %eax
.L17:
movl		%eax, -232(%rbp)

cmpl		$0, -180(%rbp)
jne 		.L18
cmpl		$0, -232(%rbp)
je 		.L19
.L18: 
movl		$1, %eax
jmp 		.L20
.L19:
movl		$0, %eax
.L20:
movl		%eax, -236(%rbp)

cmpl		$0, -128(%rbp)
jne 		.L21
cmpl		$0, -236(%rbp)
je 		.L22
.L21: 
movl		$1, %eax
jmp 		.L23
.L22:
movl		$0, %eax
.L23:
movl		%eax, -240(%rbp)

movl 	$1, -244(%rbp)

movl		-244(%rbp), %eax
cmpl 	-240(%rbp), %eax

jne 		falseCondL24

movl 	$4.0, -248(%rbp)

movl		-248(%rbp), %eax
leave
ret

.falseCondL24: 

movl 	$6, -256(%rbp)

movl 	-252(%rbp), %eax
cmpl		-256(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -260(%rbp)

movl 	$6, -268(%rbp)

movl 	-264(%rbp), %eax
cmpl		-268(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -272(%rbp)

movl 	$6, -280(%rbp)

movl 	-276(%rbp), %eax
cmpl		-280(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -284(%rbp)

cmpl		$0, -284(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -288(%rbp) 

cmpl		$0, -272(%rbp)
je 		.L25
cmpl		$0, -288(%rbp)
je 		.L25
movl		$1, %eax
jmp		.L26
.L25:
movl		$0, %eax
.L26:
movl		%eax, -292(%rbp)

cmpl		$0, -260(%rbp)
je 		.L27
cmpl		$0, -292(%rbp)
je 		.L27
movl		$1, %eax
jmp		.L28
.L27:
movl		$0, %eax
.L28:
movl		%eax, -296(%rbp)

movl 	$6, -304(%rbp)

movl 	-300(%rbp), %eax
cmpl		-304(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -308(%rbp)

movl 	$6, -316(%rbp)

movl 	-312(%rbp), %eax
cmpl		-316(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -320(%rbp)

cmpl		$0, -320(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -324(%rbp) 

movl 	$6, -332(%rbp)

movl 	-328(%rbp), %eax
cmpl		-332(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -336(%rbp)

cmpl		$0, -324(%rbp)
je 		.L29
cmpl		$0, -336(%rbp)
je 		.L29
movl		$1, %eax
jmp		.L30
.L29:
movl		$0, %eax
.L30:
movl		%eax, -340(%rbp)

cmpl		$0, -308(%rbp)
je 		.L31
cmpl		$0, -340(%rbp)
je 		.L31
movl		$1, %eax
jmp		.L32
.L31:
movl		$0, %eax
.L32:
movl		%eax, -344(%rbp)

movl 	$6, -352(%rbp)

movl 	-348(%rbp), %eax
cmpl		-352(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -356(%rbp)

cmpl		$0, -356(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -360(%rbp) 

movl 	$6, -368(%rbp)

movl 	-364(%rbp), %eax
cmpl		-368(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -372(%rbp)

movl 	$6, -380(%rbp)

movl 	-376(%rbp), %eax
cmpl		-380(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -384(%rbp)

cmpl		$0, -372(%rbp)
je 		.L33
cmpl		$0, -384(%rbp)
je 		.L33
movl		$1, %eax
jmp		.L34
.L33:
movl		$0, %eax
.L34:
movl		%eax, -388(%rbp)

cmpl		$0, -360(%rbp)
je 		.L35
cmpl		$0, -388(%rbp)
je 		.L35
movl		$1, %eax
jmp		.L36
.L35:
movl		$0, %eax
.L36:
movl		%eax, -392(%rbp)

cmpl		$0, -344(%rbp)
jne 		.L37
cmpl		$0, -392(%rbp)
je 		.L38
.L37: 
movl		$1, %eax
jmp 		.L39
.L38:
movl		$0, %eax
.L39:
movl		%eax, -396(%rbp)

cmpl		$0, -296(%rbp)
jne 		.L40
cmpl		$0, -396(%rbp)
je 		.L41
.L40: 
movl		$1, %eax
jmp 		.L42
.L41:
movl		$0, %eax
.L42:
movl		%eax, -400(%rbp)

movl 	$1, -404(%rbp)

movl		-404(%rbp), %eax
cmpl 	-400(%rbp), %eax

jne 		falseCondL43

movl 	$8.5, -408(%rbp)

movl		-408(%rbp), %eax
leave
ret

.falseCondL43: 

movl 	$6, -416(%rbp)

movl 	-412(%rbp), %eax
cmpl		-416(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -420(%rbp)

movl 	$6, -428(%rbp)

movl 	-424(%rbp), %eax
cmpl		-428(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -432(%rbp)

movl 	$6, -440(%rbp)

movl 	-436(%rbp), %eax
cmpl		-440(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -444(%rbp)

cmpl		$0, -432(%rbp)
je 		.L44
cmpl		$0, -444(%rbp)
je 		.L44
movl		$1, %eax
jmp		.L45
.L44:
movl		$0, %eax
.L45:
movl		%eax, -448(%rbp)

cmpl		$0, -420(%rbp)
je 		.L46
cmpl		$0, -448(%rbp)
je 		.L46
movl		$1, %eax
jmp		.L47
.L46:
movl		$0, %eax
.L47:
movl		%eax, -452(%rbp)

movl 	$1, -456(%rbp)

movl		-456(%rbp), %eax
cmpl 	-452(%rbp), %eax

jne 		falseCondL48

movl 	$10.0, -460(%rbp)

movl		-460(%rbp), %eax
leave
ret

.falseCondL48: 

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

mov 		$0, %eax
leave
ret

