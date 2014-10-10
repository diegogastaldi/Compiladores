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
je 		.1
cmpl		$0, -60(%rbp)
je 		.1
movl		$1, %eax
jmp		.2
.1:
movl		$0, %eax
.2:
movl		%eax, -64(%rbp)

cmpl		$0, -28(%rbp)
je 		.3
cmpl		$0, -64(%rbp)
je 		.3
movl		$1, %eax
jmp		.4
.3:
movl		$0, %eax
.4:
movl		%eax, -68(%rbp)

movl 	$1, -72(%rbp)

movl		-72(%rbp), %eax
cmpl 	-68(%rbp), %eax

jne 		.falseCond5

movl 	$1.0, -76(%rbp)

movl		-76(%rbp), %eax
leave
ret

.falseCond5: 

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
je 		.6
cmpl		$0, -120(%rbp)
je 		.6
movl		$1, %eax
jmp		.7
.6:
movl		$0, %eax
.7:
movl		%eax, -124(%rbp)

cmpl		$0, -88(%rbp)
je 		.8
cmpl		$0, -124(%rbp)
je 		.8
movl		$1, %eax
jmp		.9
.8:
movl		$0, %eax
.9:
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
je 		.10
cmpl		$0, -172(%rbp)
je 		.10
movl		$1, %eax
jmp		.11
.10:
movl		$0, %eax
.11:
movl		%eax, -176(%rbp)

cmpl		$0, -144(%rbp)
je 		.12
cmpl		$0, -176(%rbp)
je 		.12
movl		$1, %eax
jmp		.13
.12:
movl		$0, %eax
.13:
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
je 		.14
cmpl		$0, -224(%rbp)
je 		.14
movl		$1, %eax
jmp		.15
.14:
movl		$0, %eax
.15:
movl		%eax, -228(%rbp)

cmpl		$0, -196(%rbp)
je 		.16
cmpl		$0, -228(%rbp)
je 		.16
movl		$1, %eax
jmp		.17
.16:
movl		$0, %eax
.17:
movl		%eax, -232(%rbp)

cmpl		$0, -180(%rbp)
jne 		.18
cmpl		$0, -232(%rbp)
je 		.19
.18: 
movl		$1, %eax
jmp 		.20
.19:
movl		$0, %eax
.20:
movl		%eax, -236(%rbp)

cmpl		$0, -128(%rbp)
jne 		.21
cmpl		$0, -236(%rbp)
je 		.22
.21: 
movl		$1, %eax
jmp 		.23
.22:
movl		$0, %eax
.23:
movl		%eax, -240(%rbp)

movl 	$1, -244(%rbp)

movl		-244(%rbp), %eax
cmpl 	-240(%rbp), %eax

jne 		.falseCond24

movl 	$4.0, -248(%rbp)

movl		-248(%rbp), %eax
leave
ret

.falseCond24: 

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
je 		.25
cmpl		$0, -288(%rbp)
je 		.25
movl		$1, %eax
jmp		.26
.25:
movl		$0, %eax
.26:
movl		%eax, -292(%rbp)

cmpl		$0, -260(%rbp)
je 		.27
cmpl		$0, -292(%rbp)
je 		.27
movl		$1, %eax
jmp		.28
.27:
movl		$0, %eax
.28:
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
je 		.29
cmpl		$0, -336(%rbp)
je 		.29
movl		$1, %eax
jmp		.30
.29:
movl		$0, %eax
.30:
movl		%eax, -340(%rbp)

cmpl		$0, -308(%rbp)
je 		.31
cmpl		$0, -340(%rbp)
je 		.31
movl		$1, %eax
jmp		.32
.31:
movl		$0, %eax
.32:
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
je 		.33
cmpl		$0, -384(%rbp)
je 		.33
movl		$1, %eax
jmp		.34
.33:
movl		$0, %eax
.34:
movl		%eax, -388(%rbp)

cmpl		$0, -360(%rbp)
je 		.35
cmpl		$0, -388(%rbp)
je 		.35
movl		$1, %eax
jmp		.36
.35:
movl		$0, %eax
.36:
movl		%eax, -392(%rbp)

cmpl		$0, -344(%rbp)
jne 		.37
cmpl		$0, -392(%rbp)
je 		.38
.37: 
movl		$1, %eax
jmp 		.39
.38:
movl		$0, %eax
.39:
movl		%eax, -396(%rbp)

cmpl		$0, -296(%rbp)
jne 		.40
cmpl		$0, -396(%rbp)
je 		.41
.40: 
movl		$1, %eax
jmp 		.42
.41:
movl		$0, %eax
.42:
movl		%eax, -400(%rbp)

movl 	$1, -404(%rbp)

movl		-404(%rbp), %eax
cmpl 	-400(%rbp), %eax

jne 		.falseCond43

movl 	$8.5, -408(%rbp)

movl		-408(%rbp), %eax
leave
ret

.falseCond43: 

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
je 		.44
cmpl		$0, -444(%rbp)
je 		.44
movl		$1, %eax
jmp		.45
.44:
movl		$0, %eax
.45:
movl		%eax, -448(%rbp)

cmpl		$0, -420(%rbp)
je 		.46
cmpl		$0, -448(%rbp)
je 		.46
movl		$1, %eax
jmp		.47
.46:
movl		$0, %eax
.47:
movl		%eax, -452(%rbp)

movl 	$1, -456(%rbp)

movl		-456(%rbp), %eax
cmpl 	-452(%rbp), %eax

jne 		.falseCond48

movl 	$10.0, -460(%rbp)

movl		-460(%rbp), %eax
leave
ret

.falseCond48: 

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -4(%rbp)

movl		-4(%rbp), %edi
movl	 	%edi, 4(%rsp)

movl 	$6, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, 8(%rsp)

movl 	$9, -12(%rbp)

movl		-12(%rbp), %edi
movl	 	%edi, 12(%rsp)

call 	dados
movl 	%eax, -16(%rbp) 

movl		-16(%rbp), %edi
movl	 	%edi, 8(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

