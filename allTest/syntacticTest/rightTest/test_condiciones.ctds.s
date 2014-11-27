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
enter   $(8 * 92), $0 

mov 		%rdi, -24(%rbp) 
mov 		%rsi, -16(%rbp) 
mov 		%rdx, -8(%rbp) 

movq 	$6, -64(%rbp)

mov 		-24(%rbp), %rax
cmp		-64(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

cmpq		$0, -72(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -80(%rbp) 

movq 	$6, -88(%rbp)

mov 		-16(%rbp), %rax
cmp		-88(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

cmpq		$0, -96(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -104(%rbp) 

cmpq		$0, -80(%rbp)
je 		.L0
cmpq		$0, -104(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -112(%rbp)

movq 	$6, -120(%rbp)

mov 		-8(%rbp), %rax
cmp		-120(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -128(%rbp)

cmpq		$0, -128(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -136(%rbp) 

cmpq		$0, -112(%rbp)
je 		.L2
cmpq		$0, -136(%rbp)
je 		.L2
mov		$1, %r10
jmp		.L3
.L2:
mov		$0, %r10
.L3:
mov		%r10, -144(%rbp)

movq 	$1, -152(%rbp)

mov		-152(%rbp), %r10
cmp 		-144(%rbp), %r10

jne 		.falseCondL4

mov	.FL5(%rip), %r10
mov	%r10, -152(%rbp)

movss		-152(%rbp), %xmm0
leave
ret

.falseCondL4: 

movq 	$6, -160(%rbp)

mov 		-24(%rbp), %rax
cmp		-160(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -168(%rbp)

movq 	$6, -176(%rbp)

mov 		-16(%rbp), %rax
cmp		-176(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -184(%rbp)

cmpq		$0, -184(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -192(%rbp) 

cmpq		$0, -168(%rbp)
je 		.L6
cmpq		$0, -192(%rbp)
je 		.L6
mov		$1, %r10
jmp		.L7
.L6:
mov		$0, %r10
.L7:
mov		%r10, -200(%rbp)

movq 	$6, -208(%rbp)

mov 		-8(%rbp), %rax
cmp		-208(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -216(%rbp)

cmpq		$0, -216(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -224(%rbp) 

cmpq		$0, -200(%rbp)
je 		.L8
cmpq		$0, -224(%rbp)
je 		.L8
mov		$1, %r10
jmp		.L9
.L8:
mov		$0, %r10
.L9:
mov		%r10, -232(%rbp)

movq 	$6, -240(%rbp)

mov 		-24(%rbp), %rax
cmp		-240(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -248(%rbp)

cmpq		$0, -248(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -256(%rbp) 

movq 	$6, -264(%rbp)

mov 		-16(%rbp), %rax
cmp		-264(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -272(%rbp)

cmpq		$0, -256(%rbp)
je 		.L10
cmpq		$0, -272(%rbp)
je 		.L10
mov		$1, %r10
jmp		.L11
.L10:
mov		$0, %r10
.L11:
mov		%r10, -280(%rbp)

movq 	$6, -288(%rbp)

mov 		-8(%rbp), %rax
cmp		-288(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -296(%rbp)

cmpq		$0, -296(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -304(%rbp) 

cmpq		$0, -280(%rbp)
je 		.L12
cmpq		$0, -304(%rbp)
je 		.L12
mov		$1, %r10
jmp		.L13
.L12:
mov		$0, %r10
.L13:
mov		%r10, -312(%rbp)

cmpq		$0, -232(%rbp)
jne 		.L14
cmpq		$0, -312(%rbp)
je 		.L15
.L14: 
mov		$1, %r10
jmp 		.L16
.L15:
mov		$0, %r10
.L16:
mov		%r10, -320(%rbp)

movq 	$6, -328(%rbp)

mov 		-24(%rbp), %rax
cmp		-328(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -336(%rbp)

cmpq		$0, -336(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -344(%rbp) 

movq 	$6, -352(%rbp)

mov 		-16(%rbp), %rax
cmp		-352(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -360(%rbp)

cmpq		$0, -360(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -368(%rbp) 

cmpq		$0, -344(%rbp)
je 		.L17
cmpq		$0, -368(%rbp)
je 		.L17
mov		$1, %r10
jmp		.L18
.L17:
mov		$0, %r10
.L18:
mov		%r10, -376(%rbp)

movq 	$6, -384(%rbp)

mov 		-8(%rbp), %rax
cmp		-384(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -392(%rbp)

cmpq		$0, -376(%rbp)
je 		.L19
cmpq		$0, -392(%rbp)
je 		.L19
mov		$1, %r10
jmp		.L20
.L19:
mov		$0, %r10
.L20:
mov		%r10, -400(%rbp)

cmpq		$0, -320(%rbp)
jne 		.L21
cmpq		$0, -400(%rbp)
je 		.L22
.L21: 
mov		$1, %r10
jmp 		.L23
.L22:
mov		$0, %r10
.L23:
mov		%r10, -408(%rbp)

movq 	$1, -416(%rbp)

mov		-416(%rbp), %r10
cmp 		-408(%rbp), %r10

jne 		.falseCondL24

mov	.FL25(%rip), %r10
mov	%r10, -416(%rbp)

movss		-416(%rbp), %xmm0
leave
ret

.falseCondL24: 

movq 	$6, -424(%rbp)

mov 		-24(%rbp), %rax
cmp		-424(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -432(%rbp)

movq 	$6, -440(%rbp)

mov 		-16(%rbp), %rax
cmp		-440(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -448(%rbp)

cmpq		$0, -432(%rbp)
je 		.L26
cmpq		$0, -448(%rbp)
je 		.L26
mov		$1, %r10
jmp		.L27
.L26:
mov		$0, %r10
.L27:
mov		%r10, -456(%rbp)

movq 	$6, -464(%rbp)

mov 		-8(%rbp), %rax
cmp		-464(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -472(%rbp)

cmpq		$0, -472(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -480(%rbp) 

cmpq		$0, -456(%rbp)
je 		.L28
cmpq		$0, -480(%rbp)
je 		.L28
mov		$1, %r10
jmp		.L29
.L28:
mov		$0, %r10
.L29:
mov		%r10, -488(%rbp)

movq 	$6, -496(%rbp)

mov 		-24(%rbp), %rax
cmp		-496(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -504(%rbp)

movq 	$6, -512(%rbp)

mov 		-16(%rbp), %rax
cmp		-512(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -520(%rbp)

cmpq		$0, -520(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -528(%rbp) 

cmpq		$0, -504(%rbp)
je 		.L30
cmpq		$0, -528(%rbp)
je 		.L30
mov		$1, %r10
jmp		.L31
.L30:
mov		$0, %r10
.L31:
mov		%r10, -536(%rbp)

movq 	$6, -544(%rbp)

mov 		-8(%rbp), %rax
cmp		-544(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -552(%rbp)

cmpq		$0, -536(%rbp)
je 		.L32
cmpq		$0, -552(%rbp)
je 		.L32
mov		$1, %r10
jmp		.L33
.L32:
mov		$0, %r10
.L33:
mov		%r10, -560(%rbp)

cmpq		$0, -488(%rbp)
jne 		.L34
cmpq		$0, -560(%rbp)
je 		.L35
.L34: 
mov		$1, %r10
jmp 		.L36
.L35:
mov		$0, %r10
.L36:
mov		%r10, -568(%rbp)

movq 	$6, -576(%rbp)

mov 		-24(%rbp), %rax
cmp		-576(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -584(%rbp)

cmpq		$0, -584(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -592(%rbp) 

movq 	$6, -600(%rbp)

mov 		-16(%rbp), %rax
cmp		-600(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -608(%rbp)

cmpq		$0, -592(%rbp)
je 		.L37
cmpq		$0, -608(%rbp)
je 		.L37
mov		$1, %r10
jmp		.L38
.L37:
mov		$0, %r10
.L38:
mov		%r10, -616(%rbp)

movq 	$6, -624(%rbp)

mov 		-8(%rbp), %rax
cmp		-624(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -632(%rbp)

cmpq		$0, -616(%rbp)
je 		.L39
cmpq		$0, -632(%rbp)
je 		.L39
mov		$1, %r10
jmp		.L40
.L39:
mov		$0, %r10
.L40:
mov		%r10, -640(%rbp)

cmpq		$0, -568(%rbp)
jne 		.L41
cmpq		$0, -640(%rbp)
je 		.L42
.L41: 
mov		$1, %r10
jmp 		.L43
.L42:
mov		$0, %r10
.L43:
mov		%r10, -648(%rbp)

movq 	$1, -656(%rbp)

mov		-656(%rbp), %r10
cmp 		-648(%rbp), %r10

jne 		.falseCondL44

mov	.FL45(%rip), %r10
mov	%r10, -656(%rbp)

movss		-656(%rbp), %xmm0
leave
ret

.falseCondL44: 

movq 	$6, -664(%rbp)

mov 		-24(%rbp), %rax
cmp		-664(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -672(%rbp)

movq 	$6, -680(%rbp)

mov 		-16(%rbp), %rax
cmp		-680(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -688(%rbp)

cmpq		$0, -672(%rbp)
je 		.L46
cmpq		$0, -688(%rbp)
je 		.L46
mov		$1, %r10
jmp		.L47
.L46:
mov		$0, %r10
.L47:
mov		%r10, -696(%rbp)

movq 	$6, -704(%rbp)

mov 		-8(%rbp), %rax
cmp		-704(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -712(%rbp)

cmpq		$0, -696(%rbp)
je 		.L48
cmpq		$0, -712(%rbp)
je 		.L48
mov		$1, %r10
jmp		.L49
.L48:
mov		$0, %r10
.L49:
mov		%r10, -720(%rbp)

movq 	$1, -728(%rbp)

mov		-728(%rbp), %r10
cmp 		-720(%rbp), %r10

jne 		.falseCondL50

mov	.FL51(%rip), %r10
mov	%r10, -728(%rbp)

movss		-728(%rbp), %xmm0
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

