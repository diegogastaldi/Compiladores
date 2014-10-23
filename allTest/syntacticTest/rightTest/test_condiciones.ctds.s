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
enter   $(8 * 95), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 
mov 		%rdx, -32(%rbp) 

movq 	$6, -64(%rbp)

mov 		-32(%rbp), %rax
cmp		-64(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

cmpq		$0, -72(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -80(%rbp) 

movq 	$6, -88(%rbp)

mov 		-24(%rbp), %rax
cmp		-88(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

cmpq		$0, -96(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -104(%rbp) 

movq 	$6, -112(%rbp)

mov 		-16(%rbp), %rax
cmp		-112(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -120(%rbp)

cmpq		$0, -120(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -128(%rbp) 

cmpq		$0, -104(%rbp)
je 		.L0
cmpq		$0, -128(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -136(%rbp)

cmpq		$0, -80(%rbp)
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

mov 		-32(%rbp), %rax
cmp		-168(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -176(%rbp)

movq 	$6, -184(%rbp)

mov 		-24(%rbp), %rax
cmp		-184(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -192(%rbp)

cmpq		$0, -192(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -200(%rbp) 

movq 	$6, -208(%rbp)

mov 		-16(%rbp), %rax
cmp		-208(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -216(%rbp)

cmpq		$0, -216(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -224(%rbp) 

cmpq		$0, -200(%rbp)
je 		.L6
cmpq		$0, -224(%rbp)
je 		.L6
mov		$1, %r10
jmp		.L7
.L6:
mov		$0, %r10
.L7:
mov		%r10, -232(%rbp)

cmpq		$0, -176(%rbp)
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

mov 		-32(%rbp), %rax
cmp		-248(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -256(%rbp)

cmpq		$0, -256(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -264(%rbp) 

movq 	$6, -272(%rbp)

mov 		-24(%rbp), %rax
cmp		-272(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -280(%rbp)

movq 	$6, -288(%rbp)

mov 		-16(%rbp), %rax
cmp		-288(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -296(%rbp)

cmpq		$0, -296(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -304(%rbp) 

cmpq		$0, -280(%rbp)
je 		.L10
cmpq		$0, -304(%rbp)
je 		.L10
mov		$1, %r10
jmp		.L11
.L10:
mov		$0, %r10
.L11:
mov		%r10, -312(%rbp)

cmpq		$0, -264(%rbp)
je 		.L12
cmpq		$0, -312(%rbp)
je 		.L12
mov		$1, %r10
jmp		.L13
.L12:
mov		$0, %r10
.L13:
mov		%r10, -320(%rbp)

movq 	$6, -328(%rbp)

mov 		-32(%rbp), %rax
cmp		-328(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -336(%rbp)

cmpq		$0, -336(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -344(%rbp) 

movq 	$6, -352(%rbp)

mov 		-24(%rbp), %rax
cmp		-352(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -360(%rbp)

cmpq		$0, -360(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -368(%rbp) 

movq 	$6, -376(%rbp)

mov 		-16(%rbp), %rax
cmp		-376(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -384(%rbp)

cmpq		$0, -368(%rbp)
je 		.L14
cmpq		$0, -384(%rbp)
je 		.L14
mov		$1, %r10
jmp		.L15
.L14:
mov		$0, %r10
.L15:
mov		%r10, -392(%rbp)

cmpq		$0, -344(%rbp)
je 		.L16
cmpq		$0, -392(%rbp)
je 		.L16
mov		$1, %r10
jmp		.L17
.L16:
mov		$0, %r10
.L17:
mov		%r10, -400(%rbp)

cmpq		$0, -320(%rbp)
jne 		.L18
cmpq		$0, -400(%rbp)
je 		.L19
.L18: 
mov		$1, %r10
jmp 		.L20
.L19:
mov		$0, %r10
.L20:
mov		%r10, -408(%rbp)

cmpq		$0, -240(%rbp)
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

mov 		-32(%rbp), %rax
cmp		-440(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -448(%rbp)

movq 	$6, -456(%rbp)

mov 		-24(%rbp), %rax
cmp		-456(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -464(%rbp)

movq 	$6, -472(%rbp)

mov 		-16(%rbp), %rax
cmp		-472(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -480(%rbp)

cmpq		$0, -480(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -488(%rbp) 

cmpq		$0, -464(%rbp)
je 		.L26
cmpq		$0, -488(%rbp)
je 		.L26
mov		$1, %r10
jmp		.L27
.L26:
mov		$0, %r10
.L27:
mov		%r10, -496(%rbp)

cmpq		$0, -448(%rbp)
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

mov 		-32(%rbp), %rax
cmp		-512(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -520(%rbp)

movq 	$6, -528(%rbp)

mov 		-24(%rbp), %rax
cmp		-528(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -536(%rbp)

cmpq		$0, -536(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -544(%rbp) 

movq 	$6, -552(%rbp)

mov 		-16(%rbp), %rax
cmp		-552(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -560(%rbp)

cmpq		$0, -544(%rbp)
je 		.L30
cmpq		$0, -560(%rbp)
je 		.L30
mov		$1, %r10
jmp		.L31
.L30:
mov		$0, %r10
.L31:
mov		%r10, -568(%rbp)

cmpq		$0, -520(%rbp)
je 		.L32
cmpq		$0, -568(%rbp)
je 		.L32
mov		$1, %r10
jmp		.L33
.L32:
mov		$0, %r10
.L33:
mov		%r10, -576(%rbp)

movq 	$6, -584(%rbp)

mov 		-32(%rbp), %rax
cmp		-584(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -592(%rbp)

cmpq		$0, -592(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -600(%rbp) 

movq 	$6, -608(%rbp)

mov 		-24(%rbp), %rax
cmp		-608(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -616(%rbp)

movq 	$6, -624(%rbp)

mov 		-16(%rbp), %rax
cmp		-624(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -632(%rbp)

cmpq		$0, -616(%rbp)
je 		.L34
cmpq		$0, -632(%rbp)
je 		.L34
mov		$1, %r10
jmp		.L35
.L34:
mov		$0, %r10
.L35:
mov		%r10, -640(%rbp)

cmpq		$0, -600(%rbp)
je 		.L36
cmpq		$0, -640(%rbp)
je 		.L36
mov		$1, %r10
jmp		.L37
.L36:
mov		$0, %r10
.L37:
mov		%r10, -648(%rbp)

cmpq		$0, -576(%rbp)
jne 		.L38
cmpq		$0, -648(%rbp)
je 		.L39
.L38: 
mov		$1, %r10
jmp 		.L40
.L39:
mov		$0, %r10
.L40:
mov		%r10, -656(%rbp)

cmpq		$0, -504(%rbp)
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

mov 		-32(%rbp), %rax
cmp		-688(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -696(%rbp)

movq 	$6, -704(%rbp)

mov 		-24(%rbp), %rax
cmp		-704(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -712(%rbp)

movq 	$6, -720(%rbp)

mov 		-16(%rbp), %rax
cmp		-720(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -728(%rbp)

cmpq		$0, -712(%rbp)
je 		.L46
cmpq		$0, -728(%rbp)
je 		.L46
mov		$1, %r10
jmp		.L47
.L46:
mov		$0, %r10
.L47:
mov		%r10, -736(%rbp)

cmpq		$0, -696(%rbp)
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
enter   $(8 * 9), $0 

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
mov 	%rax, -40(%rbp) 

movss		-40, %xmm0

mov 		$0, %rax 
call 	printf
mov 	%rax, -64(%rbp) 

mov 		$0, %rax
leave
ret

