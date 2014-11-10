.SL52: 
		.string "%f" 

.FL51: 
		.float 10.0 

.FL45: 
		.float 8.5 

.FL25: 
		.float 4.0 

.FL5: 
		.float 1.0 

.text

.globl	dados
.type	dados, @function 
dados: 
enter   $(8 * 76), $0 

mov 		%rdi, -24(%rbp) 
mov 		%rsi, -16(%rbp) 
mov 		%rdx, -8(%rbp) 

movq 	$6, -64(%rbp)

mov 		-24(%rbp), %rax
cmp		-64(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movq 	$6, -80(%rbp)

mov 		-16(%rbp), %rax
cmp		-80(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -88(%rbp)

cmpq		$0, -72(%rbp)
je 		.L0
cmpq		$0, -88(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -96(%rbp)

movq 	$6, -104(%rbp)

mov 		-8(%rbp), %rax
cmp		-104(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -112(%rbp)

cmpq		$0, -96(%rbp)
je 		.L2
cmpq		$0, -112(%rbp)
je 		.L2
mov		$1, %r10
jmp		.L3
.L2:
mov		$0, %r10
.L3:
mov		%r10, -120(%rbp)

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 		-120(%rbp), %r10

jne 		.falseCondL4

mov	.FL5(%rip), %r10
mov	%r10, -128(%rbp)

movss		-128(%rbp), %xmm0
leave
ret

.falseCondL4: 

movq 	$6, -128(%rbp)

mov 		-24(%rbp), %rax
cmp		-128(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -136(%rbp)

movq 	$6, -144(%rbp)

mov 		-16(%rbp), %rax
cmp		-144(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -152(%rbp)

cmpq		$0, -136(%rbp)
je 		.L6
cmpq		$0, -152(%rbp)
je 		.L6
mov		$1, %r10
jmp		.L7
.L6:
mov		$0, %r10
.L7:
mov		%r10, -160(%rbp)

movq 	$6, -168(%rbp)

mov 		-8(%rbp), %rax
cmp		-168(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -176(%rbp)

cmpq		$0, -160(%rbp)
je 		.L8
cmpq		$0, -176(%rbp)
je 		.L8
mov		$1, %r10
jmp		.L9
.L8:
mov		$0, %r10
.L9:
mov		%r10, -184(%rbp)

movq 	$6, -192(%rbp)

mov 		-24(%rbp), %rax
cmp		-192(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -200(%rbp)

movq 	$6, -208(%rbp)

mov 		-16(%rbp), %rax
cmp		-208(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -216(%rbp)

cmpq		$0, -200(%rbp)
je 		.L10
cmpq		$0, -216(%rbp)
je 		.L10
mov		$1, %r10
jmp		.L11
.L10:
mov		$0, %r10
.L11:
mov		%r10, -224(%rbp)

movq 	$6, -232(%rbp)

mov 		-8(%rbp), %rax
cmp		-232(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -240(%rbp)

cmpq		$0, -224(%rbp)
je 		.L12
cmpq		$0, -240(%rbp)
je 		.L12
mov		$1, %r10
jmp		.L13
.L12:
mov		$0, %r10
.L13:
mov		%r10, -248(%rbp)

cmpq		$0, -184(%rbp)
jne 		.L14
cmpq		$0, -248(%rbp)
je 		.L15
.L14: 
mov		$1, %r10
jmp 		.L16
.L15:
mov		$0, %r10
.L16:
mov		%r10, -256(%rbp)

movq 	$6, -264(%rbp)

mov 		-24(%rbp), %rax
cmp		-264(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -272(%rbp)

movq 	$6, -280(%rbp)

mov 		-16(%rbp), %rax
cmp		-280(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -288(%rbp)

cmpq		$0, -272(%rbp)
je 		.L17
cmpq		$0, -288(%rbp)
je 		.L17
mov		$1, %r10
jmp		.L18
.L17:
mov		$0, %r10
.L18:
mov		%r10, -296(%rbp)

movq 	$6, -304(%rbp)

mov 		-8(%rbp), %rax
cmp		-304(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -312(%rbp)

cmpq		$0, -296(%rbp)
je 		.L19
cmpq		$0, -312(%rbp)
je 		.L19
mov		$1, %r10
jmp		.L20
.L19:
mov		$0, %r10
.L20:
mov		%r10, -320(%rbp)

cmpq		$0, -256(%rbp)
jne 		.L21
cmpq		$0, -320(%rbp)
je 		.L22
.L21: 
mov		$1, %r10
jmp 		.L23
.L22:
mov		$0, %r10
.L23:
mov		%r10, -328(%rbp)

movq 	$1, -336(%rbp)

mov		-336(%rbp), %r10
cmp 		-328(%rbp), %r10

jne 		.falseCondL24

mov	.FL25(%rip), %r10
mov	%r10, -336(%rbp)

movss		-336(%rbp), %xmm0
leave
ret

.falseCondL24: 

movq 	$6, -336(%rbp)

mov 		-24(%rbp), %rax
cmp		-336(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -344(%rbp)

movq 	$6, -352(%rbp)

mov 		-16(%rbp), %rax
cmp		-352(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -360(%rbp)

cmpq		$0, -344(%rbp)
je 		.L26
cmpq		$0, -360(%rbp)
je 		.L26
mov		$1, %r10
jmp		.L27
.L26:
mov		$0, %r10
.L27:
mov		%r10, -368(%rbp)

movq 	$6, -376(%rbp)

mov 		-8(%rbp), %rax
cmp		-376(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -384(%rbp)

cmpq		$0, -368(%rbp)
je 		.L28
cmpq		$0, -384(%rbp)
je 		.L28
mov		$1, %r10
jmp		.L29
.L28:
mov		$0, %r10
.L29:
mov		%r10, -392(%rbp)

movq 	$6, -400(%rbp)

mov 		-24(%rbp), %rax
cmp		-400(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -408(%rbp)

movq 	$6, -416(%rbp)

mov 		-16(%rbp), %rax
cmp		-416(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -424(%rbp)

cmpq		$0, -408(%rbp)
je 		.L30
cmpq		$0, -424(%rbp)
je 		.L30
mov		$1, %r10
jmp		.L31
.L30:
mov		$0, %r10
.L31:
mov		%r10, -432(%rbp)

movq 	$6, -440(%rbp)

mov 		-8(%rbp), %rax
cmp		-440(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -448(%rbp)

cmpq		$0, -432(%rbp)
je 		.L32
cmpq		$0, -448(%rbp)
je 		.L32
mov		$1, %r10
jmp		.L33
.L32:
mov		$0, %r10
.L33:
mov		%r10, -456(%rbp)

cmpq		$0, -392(%rbp)
jne 		.L34
cmpq		$0, -456(%rbp)
je 		.L35
.L34: 
mov		$1, %r10
jmp 		.L36
.L35:
mov		$0, %r10
.L36:
mov		%r10, -464(%rbp)

movq 	$6, -472(%rbp)

mov 		-24(%rbp), %rax
cmp		-472(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -480(%rbp)

movq 	$6, -488(%rbp)

mov 		-16(%rbp), %rax
cmp		-488(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -496(%rbp)

cmpq		$0, -480(%rbp)
je 		.L37
cmpq		$0, -496(%rbp)
je 		.L37
mov		$1, %r10
jmp		.L38
.L37:
mov		$0, %r10
.L38:
mov		%r10, -504(%rbp)

movq 	$6, -512(%rbp)

mov 		-8(%rbp), %rax
cmp		-512(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -520(%rbp)

cmpq		$0, -504(%rbp)
je 		.L39
cmpq		$0, -520(%rbp)
je 		.L39
mov		$1, %r10
jmp		.L40
.L39:
mov		$0, %r10
.L40:
mov		%r10, -528(%rbp)

cmpq		$0, -464(%rbp)
jne 		.L41
cmpq		$0, -528(%rbp)
je 		.L42
.L41: 
mov		$1, %r10
jmp 		.L43
.L42:
mov		$0, %r10
.L43:
mov		%r10, -536(%rbp)

movq 	$1, -544(%rbp)

mov		-544(%rbp), %r10
cmp 		-536(%rbp), %r10

jne 		.falseCondL44

mov	.FL45(%rip), %r10
mov	%r10, -544(%rbp)

movss		-544(%rbp), %xmm0
leave
ret

.falseCondL44: 

movq 	$6, -544(%rbp)

mov 		-24(%rbp), %rax
cmp		-544(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -552(%rbp)

movq 	$6, -560(%rbp)

mov 		-16(%rbp), %rax
cmp		-560(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -568(%rbp)

cmpq		$0, -552(%rbp)
je 		.L46
cmpq		$0, -568(%rbp)
je 		.L46
mov		$1, %r10
jmp		.L47
.L46:
mov		$0, %r10
.L47:
mov		%r10, -576(%rbp)

movq 	$6, -584(%rbp)

mov 		-8(%rbp), %rax
cmp		-584(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -592(%rbp)

cmpq		$0, -576(%rbp)
je 		.L48
cmpq		$0, -592(%rbp)
je 		.L48
mov		$1, %r10
jmp		.L49
.L48:
mov		$0, %r10
.L49:
mov		%r10, -600(%rbp)

movq 	$1, -608(%rbp)

mov		-608(%rbp), %r10
cmp 		-600(%rbp), %r10

jne 		.falseCondL50

mov	.FL51(%rip), %r10
mov	%r10, -608(%rbp)

movss		-608(%rbp), %xmm0
leave
ret

.falseCondL50: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 


movq 	$1, -16(%rbp)

movq 	$6, -24(%rbp)

movq 	$9, -32(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov		-32(%rbp), %r10
mov	 	%r10, %rdx

mov 		$0, %rax 

call 	dados
movss 	%xmm0, -40(%rbp) 

mov		$.SL52, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

