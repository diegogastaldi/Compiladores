.text

.globl	dados
.type	dados, @function 
dados: 
enter   $(4 * 89), $0 

movl 	$6, -8(%rbp)

mov 		2(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -12(%rbp)

cmpl		$0, -12(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -16(%rbp) 

movl 	$6, -20(%rbp)

mov 		1(%rbp), %rax
cmp		-20(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -24(%rbp)

cmpl		$0, -24(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -28(%rbp) 

movl 	$6, -32(%rbp)

mov 		0(%rbp), %rax
cmp		-32(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -36(%rbp)

cmpl		$0, -36(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -40(%rbp) 

cmpl		$0, -28(%rbp)
je 		.0
cmpl		$0, -40(%rbp)
je 		.0
mov		$1, %r10
jmp		.1
.0:
mov		$0, %r10
.1:
mov		%r11, -44(%rbp)

cmpl		$0, -16(%rbp)
je 		.2
cmpl		$0, -44(%rbp)
je 		.2
mov		$1, %r10
jmp		.3
.2:
mov		$0, %r10
.3:
mov		%r11, -48(%rbp)

movl 	$1, -52(%rbp)

mov		-52(%rbp), %r10
cmp 	-48(%rbp), %r10

jne 		.falseCond4

movl 	$1.0, -56(%rbp)

mov		-56(%rbp), %rax
leave
ret

.falseCond4: 

movl 	$6, -60(%rbp)

mov 		2(%rbp), %rax
cmp		-60(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

movl 	$6, -68(%rbp)

mov 		1(%rbp), %rax
cmp		-68(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

cmpl		$0, -72(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -76(%rbp) 

movl 	$6, -80(%rbp)

mov 		0(%rbp), %rax
cmp		-80(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -84(%rbp)

cmpl		$0, -84(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -88(%rbp) 

cmpl		$0, -76(%rbp)
je 		.5
cmpl		$0, -88(%rbp)
je 		.5
mov		$1, %r10
jmp		.6
.5:
mov		$0, %r10
.6:
mov		%r11, -92(%rbp)

cmpl		$0, -64(%rbp)
je 		.7
cmpl		$0, -92(%rbp)
je 		.7
mov		$1, %r10
jmp		.8
.7:
mov		$0, %r10
.8:
mov		%r11, -96(%rbp)

movl 	$6, -100(%rbp)

mov 		2(%rbp), %rax
cmp		-100(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -104(%rbp)

cmpl		$0, -104(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -108(%rbp) 

movl 	$6, -112(%rbp)

mov 		1(%rbp), %rax
cmp		-112(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -116(%rbp)

movl 	$6, -120(%rbp)

mov 		0(%rbp), %rax
cmp		-120(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -124(%rbp)

cmpl		$0, -124(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -128(%rbp) 

cmpl		$0, -116(%rbp)
je 		.9
cmpl		$0, -128(%rbp)
je 		.9
mov		$1, %r10
jmp		.10
.9:
mov		$0, %r10
.10:
mov		%r11, -132(%rbp)

cmpl		$0, -108(%rbp)
je 		.11
cmpl		$0, -132(%rbp)
je 		.11
mov		$1, %r10
jmp		.12
.11:
mov		$0, %r10
.12:
mov		%r11, -136(%rbp)

movl 	$6, -140(%rbp)

mov 		2(%rbp), %rax
cmp		-140(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -144(%rbp)

cmpl		$0, -144(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -148(%rbp) 

movl 	$6, -152(%rbp)

mov 		1(%rbp), %rax
cmp		-152(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -156(%rbp)

cmpl		$0, -156(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -160(%rbp) 

movl 	$6, -164(%rbp)

mov 		0(%rbp), %rax
cmp		-164(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -168(%rbp)

cmpl		$0, -160(%rbp)
je 		.13
cmpl		$0, -168(%rbp)
je 		.13
mov		$1, %r10
jmp		.14
.13:
mov		$0, %r10
.14:
mov		%r11, -172(%rbp)

cmpl		$0, -148(%rbp)
je 		.15
cmpl		$0, -172(%rbp)
je 		.15
mov		$1, %r10
jmp		.16
.15:
mov		$0, %r10
.16:
mov		%r11, -176(%rbp)

cmpl		$0, -136(%rbp)
jne 		.17
cmpl		$0, -176(%rbp)
je 		.18
.17: 
mov		$1, %r10
jmp 		.19
.18:
mov		$0, %r10
.19:
mov		%r10, -180(%rbp)

cmpl		$0, -96(%rbp)
jne 		.20
cmpl		$0, -180(%rbp)
je 		.21
.20: 
mov		$1, %r10
jmp 		.22
.21:
mov		$0, %r10
.22:
mov		%r10, -184(%rbp)

movl 	$1, -188(%rbp)

mov		-188(%rbp), %r10
cmp 	-184(%rbp), %r10

jne 		.falseCond23

movl 	$4.0, -192(%rbp)

mov		-192(%rbp), %rax
leave
ret

.falseCond23: 

movl 	$6, -196(%rbp)

mov 		2(%rbp), %rax
cmp		-196(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -200(%rbp)

movl 	$6, -204(%rbp)

mov 		1(%rbp), %rax
cmp		-204(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -208(%rbp)

movl 	$6, -212(%rbp)

mov 		0(%rbp), %rax
cmp		-212(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -216(%rbp)

cmpl		$0, -216(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -220(%rbp) 

cmpl		$0, -208(%rbp)
je 		.24
cmpl		$0, -220(%rbp)
je 		.24
mov		$1, %r10
jmp		.25
.24:
mov		$0, %r10
.25:
mov		%r11, -224(%rbp)

cmpl		$0, -200(%rbp)
je 		.26
cmpl		$0, -224(%rbp)
je 		.26
mov		$1, %r10
jmp		.27
.26:
mov		$0, %r10
.27:
mov		%r11, -228(%rbp)

movl 	$6, -232(%rbp)

mov 		2(%rbp), %rax
cmp		-232(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -236(%rbp)

movl 	$6, -240(%rbp)

mov 		1(%rbp), %rax
cmp		-240(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -244(%rbp)

cmpl		$0, -244(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -248(%rbp) 

movl 	$6, -252(%rbp)

mov 		0(%rbp), %rax
cmp		-252(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -256(%rbp)

cmpl		$0, -248(%rbp)
je 		.28
cmpl		$0, -256(%rbp)
je 		.28
mov		$1, %r10
jmp		.29
.28:
mov		$0, %r10
.29:
mov		%r11, -260(%rbp)

cmpl		$0, -236(%rbp)
je 		.30
cmpl		$0, -260(%rbp)
je 		.30
mov		$1, %r10
jmp		.31
.30:
mov		$0, %r10
.31:
mov		%r11, -264(%rbp)

movl 	$6, -268(%rbp)

mov 		2(%rbp), %rax
cmp		-268(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -272(%rbp)

cmpl		$0, -272(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -276(%rbp) 

movl 	$6, -280(%rbp)

mov 		1(%rbp), %rax
cmp		-280(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -284(%rbp)

movl 	$6, -288(%rbp)

mov 		0(%rbp), %rax
cmp		-288(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -292(%rbp)

cmpl		$0, -284(%rbp)
je 		.32
cmpl		$0, -292(%rbp)
je 		.32
mov		$1, %r10
jmp		.33
.32:
mov		$0, %r10
.33:
mov		%r11, -296(%rbp)

cmpl		$0, -276(%rbp)
je 		.34
cmpl		$0, -296(%rbp)
je 		.34
mov		$1, %r10
jmp		.35
.34:
mov		$0, %r10
.35:
mov		%r11, -300(%rbp)

cmpl		$0, -264(%rbp)
jne 		.36
cmpl		$0, -300(%rbp)
je 		.37
.36: 
mov		$1, %r10
jmp 		.38
.37:
mov		$0, %r10
.38:
mov		%r10, -304(%rbp)

cmpl		$0, -228(%rbp)
jne 		.39
cmpl		$0, -304(%rbp)
je 		.40
.39: 
mov		$1, %r10
jmp 		.41
.40:
mov		$0, %r10
.41:
mov		%r10, -308(%rbp)

movl 	$1, -312(%rbp)

mov		-312(%rbp), %r10
cmp 	-308(%rbp), %r10

jne 		.falseCond42

movl 	$8.5, -316(%rbp)

mov		-316(%rbp), %rax
leave
ret

.falseCond42: 

movl 	$6, -320(%rbp)

mov 		2(%rbp), %rax
cmp		-320(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -324(%rbp)

movl 	$6, -328(%rbp)

mov 		1(%rbp), %rax
cmp		-328(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -332(%rbp)

movl 	$6, -336(%rbp)

mov 		0(%rbp), %rax
cmp		-336(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -340(%rbp)

cmpl		$0, -332(%rbp)
je 		.43
cmpl		$0, -340(%rbp)
je 		.43
mov		$1, %r10
jmp		.44
.43:
mov		$0, %r10
.44:
mov		%r11, -344(%rbp)

cmpl		$0, -324(%rbp)
je 		.45
cmpl		$0, -344(%rbp)
je 		.45
mov		$1, %r10
jmp		.46
.45:
mov		$0, %r10
.46:
mov		%r11, -348(%rbp)

movl 	$1, -352(%rbp)

mov		-352(%rbp), %r10
cmp 	-348(%rbp), %r10

jne 		.falseCond47

movl 	$10.0, -356(%rbp)

mov		-356(%rbp), %rax
leave
ret

.falseCond47: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 9), $0 

movl 	$9, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdx

call 	dados
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

