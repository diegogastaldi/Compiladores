.text

.globl	dados
.type	dados, @function 
dados: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$6, 0(%rbp)

movl 	8(%rbp), %eax
cmpl		0(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -4(%rbp)

cmpl		$0, -4(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -8(%rbp) 

movl 	$6, -12(%rbp)

movl 	4(%rbp), %eax
cmpl		-12(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -16(%rbp)

cmpl		$0, -16(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -20(%rbp) 

movl 	$6, -24(%rbp)

movl 	0(%rbp), %eax
cmpl		-24(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -28(%rbp)

cmpl		$0, -28(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -32(%rbp) 

cmpl		$0, -20(%rbp)
je 		.0
cmpl		$0, -32(%rbp)
je 		.0
movl		$1, %eax
jmp		.1
.0:
movl		$0, %eax
.1:
movl		%eax, -36(%rbp)

cmpl		$0, -8(%rbp)
je 		.2
cmpl		$0, -36(%rbp)
je 		.2
movl		$1, %eax
jmp		.3
.2:
movl		$0, %eax
.3:
movl		%eax, -40(%rbp)

movl 	$1, -44(%rbp)

movl		-44(%rbp), %eax
cmpl 	-40(%rbp), %eax

jne 		.falseCond4

movl 	$1.0, -48(%rbp)

movl		-48(%rbp), %eax
leave
ret

.falseCond4: 

movl 	$6, -52(%rbp)

movl 	8(%rbp), %eax
cmpl		-52(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -56(%rbp)

movl 	$6, -60(%rbp)

movl 	4(%rbp), %eax
cmpl		-60(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -64(%rbp)

cmpl		$0, -64(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -68(%rbp) 

movl 	$6, -72(%rbp)

movl 	0(%rbp), %eax
cmpl		-72(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -76(%rbp)

cmpl		$0, -76(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -80(%rbp) 

cmpl		$0, -68(%rbp)
je 		.5
cmpl		$0, -80(%rbp)
je 		.5
movl		$1, %eax
jmp		.6
.5:
movl		$0, %eax
.6:
movl		%eax, -84(%rbp)

cmpl		$0, -56(%rbp)
je 		.7
cmpl		$0, -84(%rbp)
je 		.7
movl		$1, %eax
jmp		.8
.7:
movl		$0, %eax
.8:
movl		%eax, -88(%rbp)

movl 	$6, -92(%rbp)

movl 	8(%rbp), %eax
cmpl		-92(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -96(%rbp)

cmpl		$0, -96(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -100(%rbp) 

movl 	$6, -104(%rbp)

movl 	4(%rbp), %eax
cmpl		-104(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -108(%rbp)

movl 	$6, -112(%rbp)

movl 	0(%rbp), %eax
cmpl		-112(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -116(%rbp)

cmpl		$0, -116(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -120(%rbp) 

cmpl		$0, -108(%rbp)
je 		.9
cmpl		$0, -120(%rbp)
je 		.9
movl		$1, %eax
jmp		.10
.9:
movl		$0, %eax
.10:
movl		%eax, -124(%rbp)

cmpl		$0, -100(%rbp)
je 		.11
cmpl		$0, -124(%rbp)
je 		.11
movl		$1, %eax
jmp		.12
.11:
movl		$0, %eax
.12:
movl		%eax, -128(%rbp)

movl 	$6, -132(%rbp)

movl 	8(%rbp), %eax
cmpl		-132(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -136(%rbp)

cmpl		$0, -136(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -140(%rbp) 

movl 	$6, -144(%rbp)

movl 	4(%rbp), %eax
cmpl		-144(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -148(%rbp)

cmpl		$0, -148(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -152(%rbp) 

movl 	$6, -156(%rbp)

movl 	0(%rbp), %eax
cmpl		-156(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -160(%rbp)

cmpl		$0, -152(%rbp)
je 		.13
cmpl		$0, -160(%rbp)
je 		.13
movl		$1, %eax
jmp		.14
.13:
movl		$0, %eax
.14:
movl		%eax, -164(%rbp)

cmpl		$0, -140(%rbp)
je 		.15
cmpl		$0, -164(%rbp)
je 		.15
movl		$1, %eax
jmp		.16
.15:
movl		$0, %eax
.16:
movl		%eax, -168(%rbp)

cmpl		$0, -128(%rbp)
jne 		.17
cmpl		$0, -168(%rbp)
je 		.18
.17: 
movl		$1, %eax
jmp 		.19
.18:
movl		$0, %eax
.19:
movl		%eax, -172(%rbp)

cmpl		$0, -88(%rbp)
jne 		.20
cmpl		$0, -172(%rbp)
je 		.21
.20: 
movl		$1, %eax
jmp 		.22
.21:
movl		$0, %eax
.22:
movl		%eax, -176(%rbp)

movl 	$1, -180(%rbp)

movl		-180(%rbp), %eax
cmpl 	-176(%rbp), %eax

jne 		.falseCond23

movl 	$4.0, -184(%rbp)

movl		-184(%rbp), %eax
leave
ret

.falseCond23: 

movl 	$6, -188(%rbp)

movl 	8(%rbp), %eax
cmpl		-188(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -192(%rbp)

movl 	$6, -196(%rbp)

movl 	4(%rbp), %eax
cmpl		-196(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -200(%rbp)

movl 	$6, -204(%rbp)

movl 	0(%rbp), %eax
cmpl		-204(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -208(%rbp)

cmpl		$0, -208(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -212(%rbp) 

cmpl		$0, -200(%rbp)
je 		.24
cmpl		$0, -212(%rbp)
je 		.24
movl		$1, %eax
jmp		.25
.24:
movl		$0, %eax
.25:
movl		%eax, -216(%rbp)

cmpl		$0, -192(%rbp)
je 		.26
cmpl		$0, -216(%rbp)
je 		.26
movl		$1, %eax
jmp		.27
.26:
movl		$0, %eax
.27:
movl		%eax, -220(%rbp)

movl 	$6, -224(%rbp)

movl 	8(%rbp), %eax
cmpl		-224(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -228(%rbp)

movl 	$6, -232(%rbp)

movl 	4(%rbp), %eax
cmpl		-232(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -236(%rbp)

cmpl		$0, -236(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -240(%rbp) 

movl 	$6, -244(%rbp)

movl 	0(%rbp), %eax
cmpl		-244(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -248(%rbp)

cmpl		$0, -240(%rbp)
je 		.28
cmpl		$0, -248(%rbp)
je 		.28
movl		$1, %eax
jmp		.29
.28:
movl		$0, %eax
.29:
movl		%eax, -252(%rbp)

cmpl		$0, -228(%rbp)
je 		.30
cmpl		$0, -252(%rbp)
je 		.30
movl		$1, %eax
jmp		.31
.30:
movl		$0, %eax
.31:
movl		%eax, -256(%rbp)

movl 	$6, -260(%rbp)

movl 	8(%rbp), %eax
cmpl		-260(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -264(%rbp)

cmpl		$0, -264(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -268(%rbp) 

movl 	$6, -272(%rbp)

movl 	4(%rbp), %eax
cmpl		-272(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -276(%rbp)

movl 	$6, -280(%rbp)

movl 	0(%rbp), %eax
cmpl		-280(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -284(%rbp)

cmpl		$0, -276(%rbp)
je 		.32
cmpl		$0, -284(%rbp)
je 		.32
movl		$1, %eax
jmp		.33
.32:
movl		$0, %eax
.33:
movl		%eax, -288(%rbp)

cmpl		$0, -268(%rbp)
je 		.34
cmpl		$0, -288(%rbp)
je 		.34
movl		$1, %eax
jmp		.35
.34:
movl		$0, %eax
.35:
movl		%eax, -292(%rbp)

cmpl		$0, -256(%rbp)
jne 		.36
cmpl		$0, -292(%rbp)
je 		.37
.36: 
movl		$1, %eax
jmp 		.38
.37:
movl		$0, %eax
.38:
movl		%eax, -296(%rbp)

cmpl		$0, -220(%rbp)
jne 		.39
cmpl		$0, -296(%rbp)
je 		.40
.39: 
movl		$1, %eax
jmp 		.41
.40:
movl		$0, %eax
.41:
movl		%eax, -300(%rbp)

movl 	$1, -304(%rbp)

movl		-304(%rbp), %eax
cmpl 	-300(%rbp), %eax

jne 		.falseCond42

movl 	$8.5, -308(%rbp)

movl		-308(%rbp), %eax
leave
ret

.falseCond42: 

movl 	$6, -312(%rbp)

movl 	8(%rbp), %eax
cmpl		-312(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -316(%rbp)

movl 	$6, -320(%rbp)

movl 	4(%rbp), %eax
cmpl		-320(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -324(%rbp)

movl 	$6, -328(%rbp)

movl 	0(%rbp), %eax
cmpl		-328(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -332(%rbp)

cmpl		$0, -324(%rbp)
je 		.43
cmpl		$0, -332(%rbp)
je 		.43
movl		$1, %eax
jmp		.44
.43:
movl		$0, %eax
.44:
movl		%eax, -336(%rbp)

cmpl		$0, -316(%rbp)
je 		.45
cmpl		$0, -336(%rbp)
je 		.45
movl		$1, %eax
jmp		.46
.45:
movl		$0, %eax
.46:
movl		%eax, -340(%rbp)

movl 	$1, -344(%rbp)

movl		-344(%rbp), %eax
cmpl 	-340(%rbp), %eax

jne 		.falseCond47

movl 	$10.0, -348(%rbp)

movl		-348(%rbp), %eax
leave
ret

.falseCond47: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$9, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

movl 	$6, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -12(%rsp)

movl 	$1, -16(%rbp)

movl		-16(%rbp), %edi
movl	 	%edi, -20(%rsp)

call 	dados
movl 	%eax, -24(%rbp) 

movl		-24(%rbp), %edi
movl	 	%edi, -32(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

