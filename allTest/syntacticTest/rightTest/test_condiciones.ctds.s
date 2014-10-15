.text

.globl	dados
.type	dados, @function 
dados: 
enter   $(4 * 94), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 
mov 		%rdx, -16(%rbp) 

movl 	$6, -20(%rbp)

mov 		-16(%rbp), %rax
cmp		-20(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -24(%rbp)

cmpl		$0, -24(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -28(%rbp) 

movl 	$6, -32(%rbp)

mov 		-12(%rbp), %rax
cmp		-32(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -36(%rbp)

cmpl		$0, -36(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -40(%rbp) 

movl 	$6, -44(%rbp)

mov 		-8(%rbp), %rax
cmp		-44(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -48(%rbp)

cmpl		$0, -48(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -52(%rbp) 

cmpl		$0, -40(%rbp)
je 		.L0
cmpl		$0, -52(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -56(%rbp)

cmpl		$0, -28(%rbp)
je 		.L2
cmpl		$0, -56(%rbp)
je 		.L2
mov		$1, %r10
jmp		.L3
.L2:
mov		$0, %r10
.L3:
mov		%r10, -60(%rbp)

movl 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 	-60(%rbp), %r10

jne 		.falseCondL4

movl 	$1.0, -68(%rbp)

mov		-68(%rbp), %rax
leave
ret

.falseCondL4: 

movl 	$6, -72(%rbp)

mov 		-16(%rbp), %rax
cmp		-72(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -76(%rbp)

movl 	$6, -80(%rbp)

mov 		-12(%rbp), %rax
cmp		-80(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -84(%rbp)

cmpl		$0, -84(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -88(%rbp) 

movl 	$6, -92(%rbp)

mov 		-8(%rbp), %rax
cmp		-92(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

cmpl		$0, -96(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -100(%rbp) 

cmpl		$0, -88(%rbp)
je 		.L5
cmpl		$0, -100(%rbp)
je 		.L5
mov		$1, %r10
jmp		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -104(%rbp)

cmpl		$0, -76(%rbp)
je 		.L7
cmpl		$0, -104(%rbp)
je 		.L7
mov		$1, %r10
jmp		.L8
.L7:
mov		$0, %r10
.L8:
mov		%r10, -108(%rbp)

movl 	$6, -112(%rbp)

mov 		-16(%rbp), %rax
cmp		-112(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -116(%rbp)

cmpl		$0, -116(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -120(%rbp) 

movl 	$6, -124(%rbp)

mov 		-12(%rbp), %rax
cmp		-124(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -128(%rbp)

movl 	$6, -132(%rbp)

mov 		-8(%rbp), %rax
cmp		-132(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -136(%rbp)

cmpl		$0, -136(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -140(%rbp) 

cmpl		$0, -128(%rbp)
je 		.L9
cmpl		$0, -140(%rbp)
je 		.L9
mov		$1, %r10
jmp		.L10
.L9:
mov		$0, %r10
.L10:
mov		%r10, -144(%rbp)

cmpl		$0, -120(%rbp)
je 		.L11
cmpl		$0, -144(%rbp)
je 		.L11
mov		$1, %r10
jmp		.L12
.L11:
mov		$0, %r10
.L12:
mov		%r10, -148(%rbp)

movl 	$6, -152(%rbp)

mov 		-16(%rbp), %rax
cmp		-152(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -156(%rbp)

cmpl		$0, -156(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -160(%rbp) 

movl 	$6, -164(%rbp)

mov 		-12(%rbp), %rax
cmp		-164(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -168(%rbp)

cmpl		$0, -168(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -172(%rbp) 

movl 	$6, -176(%rbp)

mov 		-8(%rbp), %rax
cmp		-176(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -180(%rbp)

cmpl		$0, -172(%rbp)
je 		.L13
cmpl		$0, -180(%rbp)
je 		.L13
mov		$1, %r10
jmp		.L14
.L13:
mov		$0, %r10
.L14:
mov		%r10, -184(%rbp)

cmpl		$0, -160(%rbp)
je 		.L15
cmpl		$0, -184(%rbp)
je 		.L15
mov		$1, %r10
jmp		.L16
.L15:
mov		$0, %r10
.L16:
mov		%r10, -188(%rbp)

cmpl		$0, -148(%rbp)
jne 		.L17
cmpl		$0, -188(%rbp)
je 		.L18
.L17: 
mov		$1, %r10
jmp 		.L19
.L18:
mov		$0, %r10
.L19:
mov		%r10, -192(%rbp)

cmpl		$0, -108(%rbp)
jne 		.L20
cmpl		$0, -192(%rbp)
je 		.L21
.L20: 
mov		$1, %r10
jmp 		.L22
.L21:
mov		$0, %r10
.L22:
mov		%r10, -196(%rbp)

movl 	$1, -200(%rbp)

mov		-200(%rbp), %r10
cmp 	-196(%rbp), %r10

jne 		.falseCondL23

movl 	$4.0, -204(%rbp)

mov		-204(%rbp), %rax
leave
ret

.falseCondL23: 

movl 	$6, -208(%rbp)

mov 		-16(%rbp), %rax
cmp		-208(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -212(%rbp)

movl 	$6, -216(%rbp)

mov 		-12(%rbp), %rax
cmp		-216(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -220(%rbp)

movl 	$6, -224(%rbp)

mov 		-8(%rbp), %rax
cmp		-224(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -228(%rbp)

cmpl		$0, -228(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -232(%rbp) 

cmpl		$0, -220(%rbp)
je 		.L24
cmpl		$0, -232(%rbp)
je 		.L24
mov		$1, %r10
jmp		.L25
.L24:
mov		$0, %r10
.L25:
mov		%r10, -236(%rbp)

cmpl		$0, -212(%rbp)
je 		.L26
cmpl		$0, -236(%rbp)
je 		.L26
mov		$1, %r10
jmp		.L27
.L26:
mov		$0, %r10
.L27:
mov		%r10, -240(%rbp)

movl 	$6, -244(%rbp)

mov 		-16(%rbp), %rax
cmp		-244(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -248(%rbp)

movl 	$6, -252(%rbp)

mov 		-12(%rbp), %rax
cmp		-252(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -256(%rbp)

cmpl		$0, -256(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -260(%rbp) 

movl 	$6, -264(%rbp)

mov 		-8(%rbp), %rax
cmp		-264(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -268(%rbp)

cmpl		$0, -260(%rbp)
je 		.L28
cmpl		$0, -268(%rbp)
je 		.L28
mov		$1, %r10
jmp		.L29
.L28:
mov		$0, %r10
.L29:
mov		%r10, -272(%rbp)

cmpl		$0, -248(%rbp)
je 		.L30
cmpl		$0, -272(%rbp)
je 		.L30
mov		$1, %r10
jmp		.L31
.L30:
mov		$0, %r10
.L31:
mov		%r10, -276(%rbp)

movl 	$6, -280(%rbp)

mov 		-16(%rbp), %rax
cmp		-280(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -284(%rbp)

cmpl		$0, -284(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -288(%rbp) 

movl 	$6, -292(%rbp)

mov 		-12(%rbp), %rax
cmp		-292(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -296(%rbp)

movl 	$6, -300(%rbp)

mov 		-8(%rbp), %rax
cmp		-300(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -304(%rbp)

cmpl		$0, -296(%rbp)
je 		.L32
cmpl		$0, -304(%rbp)
je 		.L32
mov		$1, %r10
jmp		.L33
.L32:
mov		$0, %r10
.L33:
mov		%r10, -308(%rbp)

cmpl		$0, -288(%rbp)
je 		.L34
cmpl		$0, -308(%rbp)
je 		.L34
mov		$1, %r10
jmp		.L35
.L34:
mov		$0, %r10
.L35:
mov		%r10, -312(%rbp)

cmpl		$0, -276(%rbp)
jne 		.L36
cmpl		$0, -312(%rbp)
je 		.L37
.L36: 
mov		$1, %r10
jmp 		.L38
.L37:
mov		$0, %r10
.L38:
mov		%r10, -316(%rbp)

cmpl		$0, -240(%rbp)
jne 		.L39
cmpl		$0, -316(%rbp)
je 		.L40
.L39: 
mov		$1, %r10
jmp 		.L41
.L40:
mov		$0, %r10
.L41:
mov		%r10, -320(%rbp)

movl 	$1, -324(%rbp)

mov		-324(%rbp), %r10
cmp 	-320(%rbp), %r10

jne 		.falseCondL42

movl 	$8.5, -328(%rbp)

mov		-328(%rbp), %rax
leave
ret

.falseCondL42: 

movl 	$6, -332(%rbp)

mov 		-16(%rbp), %rax
cmp		-332(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -336(%rbp)

movl 	$6, -340(%rbp)

mov 		-12(%rbp), %rax
cmp		-340(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -344(%rbp)

movl 	$6, -348(%rbp)

mov 		-8(%rbp), %rax
cmp		-348(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -352(%rbp)

cmpl		$0, -344(%rbp)
je 		.L43
cmpl		$0, -352(%rbp)
je 		.L43
mov		$1, %r10
jmp		.L44
.L43:
mov		$0, %r10
.L44:
mov		%r10, -356(%rbp)

cmpl		$0, -336(%rbp)
je 		.L45
cmpl		$0, -356(%rbp)
je 		.L45
mov		$1, %r10
jmp		.L46
.L45:
mov		$0, %r10
.L46:
mov		%r10, -360(%rbp)

movl 	$1, -364(%rbp)

mov		-364(%rbp), %r10
cmp 	-360(%rbp), %r10

jne 		.falseCondL47

movl 	$10.0, -368(%rbp)

mov		-368(%rbp), %rax
leave
ret

.falseCondL47: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 9), $0 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

movl 	$9, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdx

mov 		$0, %rax 
call 	dados
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

