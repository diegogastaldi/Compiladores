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

movq 	$1.0, -160(%rbp)

mov		-160(%rbp), %rax
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
je 		.L5
cmpq		$0, -224(%rbp)
je 		.L5
mov		$1, %r10
jmp		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -232(%rbp)

cmpq		$0, -176(%rbp)
je 		.L7
cmpq		$0, -232(%rbp)
je 		.L7
mov		$1, %r10
jmp		.L8
.L7:
mov		$0, %r10
.L8:
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
je 		.L9
cmpq		$0, -304(%rbp)
je 		.L9
mov		$1, %r10
jmp		.L10
.L9:
mov		$0, %r10
.L10:
mov		%r10, -312(%rbp)

cmpq		$0, -264(%rbp)
je 		.L11
cmpq		$0, -312(%rbp)
je 		.L11
mov		$1, %r10
jmp		.L12
.L11:
mov		$0, %r10
.L12:
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
je 		.L13
cmpq		$0, -384(%rbp)
je 		.L13
mov		$1, %r10
jmp		.L14
.L13:
mov		$0, %r10
.L14:
mov		%r10, -392(%rbp)

cmpq		$0, -344(%rbp)
je 		.L15
cmpq		$0, -392(%rbp)
je 		.L15
mov		$1, %r10
jmp		.L16
.L15:
mov		$0, %r10
.L16:
mov		%r10, -400(%rbp)

cmpq		$0, -320(%rbp)
jne 		.L17
cmpq		$0, -400(%rbp)
je 		.L18
.L17: 
mov		$1, %r10
jmp 		.L19
.L18:
mov		$0, %r10
.L19:
mov		%r10, -408(%rbp)

cmpq		$0, -240(%rbp)
jne 		.L20
cmpq		$0, -408(%rbp)
je 		.L21
.L20: 
mov		$1, %r10
jmp 		.L22
.L21:
mov		$0, %r10
.L22:
mov		%r10, -416(%rbp)

movq 	$1, -424(%rbp)

mov		-424(%rbp), %r10
cmp 		-416(%rbp), %r10

jne 		.falseCondL23

movq 	$4.0, -432(%rbp)

mov		-432(%rbp), %rax
leave
ret

.falseCondL23: 

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
je 		.L24
cmpq		$0, -488(%rbp)
je 		.L24
mov		$1, %r10
jmp		.L25
.L24:
mov		$0, %r10
.L25:
mov		%r10, -496(%rbp)

cmpq		$0, -448(%rbp)
je 		.L26
cmpq		$0, -496(%rbp)
je 		.L26
mov		$1, %r10
jmp		.L27
.L26:
mov		$0, %r10
.L27:
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
je 		.L28
cmpq		$0, -560(%rbp)
je 		.L28
mov		$1, %r10
jmp		.L29
.L28:
mov		$0, %r10
.L29:
mov		%r10, -568(%rbp)

cmpq		$0, -520(%rbp)
je 		.L30
cmpq		$0, -568(%rbp)
je 		.L30
mov		$1, %r10
jmp		.L31
.L30:
mov		$0, %r10
.L31:
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
je 		.L32
cmpq		$0, -632(%rbp)
je 		.L32
mov		$1, %r10
jmp		.L33
.L32:
mov		$0, %r10
.L33:
mov		%r10, -640(%rbp)

cmpq		$0, -600(%rbp)
je 		.L34
cmpq		$0, -640(%rbp)
je 		.L34
mov		$1, %r10
jmp		.L35
.L34:
mov		$0, %r10
.L35:
mov		%r10, -648(%rbp)

cmpq		$0, -576(%rbp)
jne 		.L36
cmpq		$0, -648(%rbp)
je 		.L37
.L36: 
mov		$1, %r10
jmp 		.L38
.L37:
mov		$0, %r10
.L38:
mov		%r10, -656(%rbp)

cmpq		$0, -504(%rbp)
jne 		.L39
cmpq		$0, -656(%rbp)
je 		.L40
.L39: 
mov		$1, %r10
jmp 		.L41
.L40:
mov		$0, %r10
.L41:
mov		%r10, -664(%rbp)

movq 	$1, -672(%rbp)

mov		-672(%rbp), %r10
cmp 		-664(%rbp), %r10

jne 		.falseCondL42

movq 	$8.5, -680(%rbp)

mov		-680(%rbp), %rax
leave
ret

.falseCondL42: 

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
je 		.L43
cmpq		$0, -728(%rbp)
je 		.L43
mov		$1, %r10
jmp		.L44
.L43:
mov		$0, %r10
.L44:
mov		%r10, -736(%rbp)

cmpq		$0, -696(%rbp)
je 		.L45
cmpq		$0, -736(%rbp)
je 		.L45
mov		$1, %r10
jmp		.L46
.L45:
mov		$0, %r10
.L46:
mov		%r10, -744(%rbp)

movq 	$1, -752(%rbp)

mov		-752(%rbp), %r10
cmp 		-744(%rbp), %r10

jne 		.falseCondL47

movq 	$10.0, -760(%rbp)

mov		-760(%rbp), %rax
leave
ret

.falseCondL47: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 12), $0 

movq 	$1, -16(%rbp)

movq 	$6, -32(%rbp)

movq 	$9, -48(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov		-48(%rbp), %r10
mov	 	%r10, %rdx

mov 		$0, %rax 
call 	dados
mov 	%rax, -64(%rbp) 

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -88(%rbp) 

mov 		$0, %rax
leave
ret

