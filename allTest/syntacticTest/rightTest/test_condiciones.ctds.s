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
enter   $(8 * 96), $0 

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
mov	%r10, -160(%rbp)

movss		-160(%rbp), %xmm0
leave
ret

.falseCondL4: 

movq 	$6, -168(%rbp)

mov 		-24(%rbp), %rax
cmp		-168(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -176(%rbp)

movq 	$6, -184(%rbp)

mov 		-16(%rbp), %rax
cmp		-184(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -192(%rbp)

cmpq		$0, -192(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -200(%rbp) 

cmpq		$0, -176(%rbp)
je 		.L6
cmpq		$0, -200(%rbp)
je 		.L6
mov		$1, %r10
jmp		.L7
.L6:
mov		$0, %r10
.L7:
mov		%r10, -208(%rbp)

movq 	$6, -216(%rbp)

mov 		-8(%rbp), %rax
cmp		-216(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -224(%rbp)

cmpq		$0, -224(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -232(%rbp) 

cmpq		$0, -208(%rbp)
je 		.L8
cmpq		$0, -232(%rbp)
je 		.L8
mov		$1, %r10
jmp		.L9
.L8:
mov		$0, %r10
.L9:
mov		%r10, -240(%rbp)

movq 	$6, -248(%rbp)

mov 		-24(%rbp), %rax
cmp		-248(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -256(%rbp)

cmpq		$0, -256(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -264(%rbp) 

movq 	$6, -272(%rbp)

mov 		-16(%rbp), %rax
cmp		-272(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -280(%rbp)

cmpq		$0, -264(%rbp)
je 		.L10
cmpq		$0, -280(%rbp)
je 		.L10
mov		$1, %r10
jmp		.L11
.L10:
mov		$0, %r10
.L11:
mov		%r10, -288(%rbp)

movq 	$6, -296(%rbp)

mov 		-8(%rbp), %rax
cmp		-296(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -304(%rbp)

cmpq		$0, -304(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -312(%rbp) 

cmpq		$0, -288(%rbp)
je 		.L12
cmpq		$0, -312(%rbp)
je 		.L12
mov		$1, %r10
jmp		.L13
.L12:
mov		$0, %r10
.L13:
mov		%r10, -320(%rbp)

cmpq		$0, -240(%rbp)
jne 		.L14
cmpq		$0, -320(%rbp)
je 		.L15
.L14: 
mov		$1, %r10
jmp 		.L16
.L15:
mov		$0, %r10
.L16:
mov		%r10, -328(%rbp)

movq 	$6, -336(%rbp)

mov 		-24(%rbp), %rax
cmp		-336(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -344(%rbp)

cmpq		$0, -344(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -352(%rbp) 

movq 	$6, -360(%rbp)

mov 		-16(%rbp), %rax
cmp		-360(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -368(%rbp)

cmpq		$0, -368(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -376(%rbp) 

cmpq		$0, -352(%rbp)
je 		.L17
cmpq		$0, -376(%rbp)
je 		.L17
mov		$1, %r10
jmp		.L18
.L17:
mov		$0, %r10
.L18:
mov		%r10, -384(%rbp)

movq 	$6, -392(%rbp)

mov 		-8(%rbp), %rax
cmp		-392(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -400(%rbp)

cmpq		$0, -384(%rbp)
je 		.L19
cmpq		$0, -400(%rbp)
je 		.L19
mov		$1, %r10
jmp		.L20
.L19:
mov		$0, %r10
.L20:
mov		%r10, -408(%rbp)

cmpq		$0, -328(%rbp)
jne 		.L21
cmpq		$0, -408(%rbp)
je 		.L22
.L21: 
mov		$1, %r10
jmp 		.L23
.L22:
mov		$0, %r10
.L23:
mov		%r10, -416(%rbp)

movq 	$1, -424(%rbp)

mov		-424(%rbp), %r10
cmp 		-416(%rbp), %r10

jne 		.falseCondL24

mov	.FL25(%rip), %r10
mov	%r10, -432(%rbp)

movss		-432(%rbp), %xmm0
leave
ret

.falseCondL24: 

movq 	$6, -440(%rbp)

mov 		-24(%rbp), %rax
cmp		-440(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -448(%rbp)

movq 	$6, -456(%rbp)

mov 		-16(%rbp), %rax
cmp		-456(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -464(%rbp)

cmpq		$0, -448(%rbp)
je 		.L26
cmpq		$0, -464(%rbp)
je 		.L26
mov		$1, %r10
jmp		.L27
.L26:
mov		$0, %r10
.L27:
mov		%r10, -472(%rbp)

movq 	$6, -480(%rbp)

mov 		-8(%rbp), %rax
cmp		-480(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -488(%rbp)

cmpq		$0, -488(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -496(%rbp) 

cmpq		$0, -472(%rbp)
je 		.L28
cmpq		$0, -496(%rbp)
je 		.L28
mov		$1, %r10
jmp		.L29
.L28:
mov		$0, %r10
.L29:
mov		%r10, -504(%rbp)

movq 	$6, -512(%rbp)

mov 		-24(%rbp), %rax
cmp		-512(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -520(%rbp)

movq 	$6, -528(%rbp)

mov 		-16(%rbp), %rax
cmp		-528(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -536(%rbp)

cmpq		$0, -536(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -544(%rbp) 

cmpq		$0, -520(%rbp)
je 		.L30
cmpq		$0, -544(%rbp)
je 		.L30
mov		$1, %r10
jmp		.L31
.L30:
mov		$0, %r10
.L31:
mov		%r10, -552(%rbp)

movq 	$6, -560(%rbp)

mov 		-8(%rbp), %rax
cmp		-560(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -568(%rbp)

cmpq		$0, -552(%rbp)
je 		.L32
cmpq		$0, -568(%rbp)
je 		.L32
mov		$1, %r10
jmp		.L33
.L32:
mov		$0, %r10
.L33:
mov		%r10, -576(%rbp)

cmpq		$0, -504(%rbp)
jne 		.L34
cmpq		$0, -576(%rbp)
je 		.L35
.L34: 
mov		$1, %r10
jmp 		.L36
.L35:
mov		$0, %r10
.L36:
mov		%r10, -584(%rbp)

movq 	$6, -592(%rbp)

mov 		-24(%rbp), %rax
cmp		-592(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -600(%rbp)

cmpq		$0, -600(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -608(%rbp) 

movq 	$6, -616(%rbp)

mov 		-16(%rbp), %rax
cmp		-616(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -624(%rbp)

cmpq		$0, -608(%rbp)
je 		.L37
cmpq		$0, -624(%rbp)
je 		.L37
mov		$1, %r10
jmp		.L38
.L37:
mov		$0, %r10
.L38:
mov		%r10, -632(%rbp)

movq 	$6, -640(%rbp)

mov 		-8(%rbp), %rax
cmp		-640(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -648(%rbp)

cmpq		$0, -632(%rbp)
je 		.L39
cmpq		$0, -648(%rbp)
je 		.L39
mov		$1, %r10
jmp		.L40
.L39:
mov		$0, %r10
.L40:
mov		%r10, -656(%rbp)

cmpq		$0, -584(%rbp)
jne 		.L41
cmpq		$0, -656(%rbp)
je 		.L42
.L41: 
mov		$1, %r10
jmp 		.L43
.L42:
mov		$0, %r10
.L43:
mov		%r10, -664(%rbp)

movq 	$1, -672(%rbp)

mov		-672(%rbp), %r10
cmp 		-664(%rbp), %r10

jne 		.falseCondL44

mov	.FL45(%rip), %r10
mov	%r10, -680(%rbp)

movss		-680(%rbp), %xmm0
leave
ret

.falseCondL44: 

movq 	$6, -688(%rbp)

mov 		-24(%rbp), %rax
cmp		-688(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -696(%rbp)

movq 	$6, -704(%rbp)

mov 		-16(%rbp), %rax
cmp		-704(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -712(%rbp)

cmpq		$0, -696(%rbp)
je 		.L46
cmpq		$0, -712(%rbp)
je 		.L46
mov		$1, %r10
jmp		.L47
.L46:
mov		$0, %r10
.L47:
mov		%r10, -720(%rbp)

movq 	$6, -728(%rbp)

mov 		-8(%rbp), %rax
cmp		-728(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -736(%rbp)

cmpq		$0, -720(%rbp)
je 		.L48
cmpq		$0, -736(%rbp)
je 		.L48
mov		$1, %r10
jmp		.L49
.L48:
mov		$0, %r10
.L49:
mov		%r10, -744(%rbp)

movq 	$1, -752(%rbp)

mov		-752(%rbp), %r10
cmp 		-744(%rbp), %r10

jne 		.falseCondL50

mov	.FL51(%rip), %r10
mov	%r10, -760(%rbp)

movss		-760(%rbp), %xmm0
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

