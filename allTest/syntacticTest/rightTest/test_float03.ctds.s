.FL59: 
		.float 2.0 

.L0L58: 
		.string "%f" 

.FL57: 
		.float 0 

.FL56: 
		.float 7.6 

.FL55: 
		.float 4.3 

.FL54: 
		.float 0 

.FL53: 
		.float 15.0 

.FL52: 
		.float 80.0 

.FL51: 
		.float 0 

.FL50: 
		.float 4.0 

.FL49: 
		.float 2.0 

.FL48: 
		.float 23.0 

.FL47: 
		.float 0 

.FL46: 
		.float 12345.356 

.FL45: 
		.float 3.2 

.FL43: 
		.float 498.0 

.FL42: 
		.float 4.0 

.FL41: 
		.float 35.0 

.FL37: 
		.float 0.0 

.FL36: 
		.float 2.0 

.FL35: 
		.float 10.0 

.FL33: 
		.float 2.0 

.FL18: 
		.float 0 

.FL17: 
		.float 3.0 

.FL16: 
		.float 0 

.FL15: 
		.float 3.0 

.FL14: 
		.float 0 

.FL13: 
		.float 20.0 

.FL12: 
		.float 0 

.FL11: 
		.float 100.1 

.FL9: 
		.float 1.0 

.FL7: 
		.float 2.0 

.FL0: 
		.float 1.0 

.text

.comm w, 8

.comm m, 8

.comm res, 8

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(8 * 32), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq 	$0, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$0, -96(%rbp)

mov		-16(%rbp), %rax
cmp		-96(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.falseCondL1

mov		-16(%rbp), %rax 
neg		%rax 
mov		%rax, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL1: 

.beginWhileL3: 

mov		-32(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -136(%rbp)

mov 		-32(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -144(%rbp)

cmpq		$0, -136(%rbp)
jne 		.L4
cmpq		$0, -144(%rbp)
je 		.L5
.L4: 
mov		$1, %r10
jmp 		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.endWhileL2

mov	.FL7(%rip), %r10
mov	%r10, -168(%rbp)

movss		-24(%rbp), %xmm0 
mulss		-168(%rbp), %xmm0 
movss		%xmm0, -176(%rbp) 

movss		-48(%rbp), %xmm0 
mulss		-176(%rbp), %xmm0 
movss		%xmm0, -184(%rbp) 

mov		-184(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -192(%rbp)

mov		-32(%rbp), %r10 
mov		-192(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -208(%rbp) 

cmpq		$0, -208(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -216(%rbp) 

movq 	$1, -224(%rbp)

mov		-224(%rbp), %r10
cmp 		-216(%rbp), %r10

jne 		.falseCondL8

mov	.FL9(%rip), %r10
mov	%r10, -232(%rbp)

movss		-232(%rbp), %xmm0 
divss		-48(%rbp), %xmm0 
movss		%xmm0, -240(%rbp) 

movss		-240(%rbp), %xmm0
leave
ret

jmp 		.endIfL10

.falseCondL8: 

movss		-48(%rbp), %xmm0
leave
ret

.endIfL10: 

mov	.FL11(%rip), %r10
mov	%r10, -248(%rbp)

movss		-248(%rbp), %xmm1 
movss		.FL12(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -256(%rbp) 

movss		-256(%rbp), %xmm0
leave
ret

.globl	multiples
.type	multiples, @function 
multiples: 
enter   $(8 * 81), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq		$0, %r10
mov		%r10, -48(%rbp)

movq		$0, %r10
mov		%r10, -56(%rbp)

movq		$0, %r10
mov		%r10, -64(%rbp)

movq		$0, %r10
mov		%r10, -72(%rbp)

movq		$0, %r10
mov		%r10, -80(%rbp)

movq		$0, %r10
mov		%r10, -88(%rbp)

movq		$0, %r10
mov		%r10, -96(%rbp)

mov	.FL13(%rip), %r10
mov	%r10, -128(%rbp)

movss		-128(%rbp), %xmm1 
movss		.FL14(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -136(%rbp) 

mov		-136(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$2, -144(%rbp)

mov		-144(%rbp), %rax 
neg		%rax 
mov		%rax, -152(%rbp) 

mov		-152(%rbp), %r10
mov		%r10, -48(%rbp)

mov	.FL15(%rip), %r10
mov	%r10, -160(%rbp)

movss		-160(%rbp), %xmm1 
movss		.FL16(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -168(%rbp) 

mov		-168(%rbp), %r10
mov		%r10, -56(%rbp)

mov	.FL17(%rip), %r10
mov	%r10, -176(%rbp)

movss		-176(%rbp), %xmm1 
movss		.FL18(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -184(%rbp) 

mov		-184(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-40(%rbp), %xmm0 
subss		-56(%rbp), %xmm0 
movss		%xmm0, -192(%rbp) 

movss		-32(%rbp), %xmm0 
mulss		-192(%rbp), %xmm0 
movss		%xmm0, -200(%rbp) 

mov		-200(%rbp), %r10
mov		%r10, -64(%rbp)

movq 	$0, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$0, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -104(%rbp)

movq 	$0, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$5, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -88(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -240(%rbp) 

movq 	$1, -248(%rbp)

mov		-248(%rbp), %r10
cmp 		-240(%rbp), %r10

jne 		.falseCondL19

movss		-64(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -256(%rbp) 

movq 	$1, -264(%rbp)

mov		-264(%rbp), %r10
cmp 		-256(%rbp), %r10

jne 		.falseCondL20

mov		-24(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL21

.falseCondL20: 

mov		-16(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL21: 

jmp 		.endIfL22

.falseCondL19: 

.beginWhileL24: 

mov		-80(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -272(%rbp)

movq 	$1, -280(%rbp)

mov		-280(%rbp), %r10
cmp 		-272(%rbp), %r10

jne 		.endWhileL23

.beginWhileL26: 

mov		-104(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -288(%rbp)

movq 	$1, -296(%rbp)

mov		-296(%rbp), %r10
cmp 		-288(%rbp), %r10

jne 		.endWhileL25

.beginWhileL28: 

mov		-96(%rbp), %rax
cmp		-88(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -304(%rbp)

mov 		-96(%rbp), %rax
cmp		-88(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -312(%rbp)

cmpq		$0, -304(%rbp)
jne 		.L29
cmpq		$0, -312(%rbp)
je 		.L30
.L29: 
mov		$1, %r10
jmp 		.L31
.L30:
mov		$0, %r10
.L31:
mov		%r10, -320(%rbp)

movq 	$1, -328(%rbp)

mov		-328(%rbp), %r10
cmp 		-320(%rbp), %r10

jne 		.endWhileL27

movq 	$3, -336(%rbp)

mov 		-48(%rbp), %rax
cmp		-336(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -344(%rbp)

movq 	$1, -352(%rbp)

mov		-352(%rbp), %r10
cmp 		-344(%rbp), %r10

jne 		.falseCondL32

mov	.FL33(%rip), %r10
mov	%r10, -360(%rbp)

movss		-72(%rbp), %xmm0 
addss		-360(%rbp), %xmm0 
movss		%xmm0, -368(%rbp) 

mov		-368(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL34

.falseCondL32: 

mov	.FL35(%rip), %r10
mov	%r10, -376(%rbp)

mov	.FL36(%rip), %r10
mov	%r10, -384(%rbp)

movss		-376(%rbp), %xmm0 
divss		-384(%rbp), %xmm0 
movss		%xmm0, -392(%rbp) 

movss		-72(%rbp), %xmm0 
subss		-392(%rbp), %xmm0 
movss		%xmm0, -400(%rbp) 

mov		-400(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL34: 

movq 	$1, -408(%rbp)

mov		-408(%rbp), %r10 
mov		-96(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -416(%rbp)

mov		-416(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL28

.endWhileL27: 

movss		-32(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -424(%rbp) 

mov	.FL37(%rip), %r10
mov	%r10, -432(%rbp)

movss		-432(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -440(%rbp) 

cmpq		$0, -424(%rbp)
je 		.L38
cmpq		$0, -440(%rbp)
je 		.L38
mov		$1, %r10
jmp		.L39
.L38:
mov		$0, %r10
.L39:
mov		%r10, -448(%rbp)

movq 	$1, -456(%rbp)

mov		-456(%rbp), %r10
cmp 		-448(%rbp), %r10

jne 		.falseCondL40

mov	.FL41(%rip), %r10
mov	%r10, -464(%rbp)

mov	.FL42(%rip), %r10
mov	%r10, -472(%rbp)

mov	.FL43(%rip), %r10
mov	%r10, -480(%rbp)

movss		-72(%rbp), %xmm0 
subss		-480(%rbp), %xmm0 
movss		%xmm0, -488(%rbp) 

movss		-472(%rbp), %xmm0 
mulss		-488(%rbp), %xmm0 
movss		%xmm0, -496(%rbp) 

movss		-464(%rbp), %xmm0 
addss		-496(%rbp), %xmm0 
movss		%xmm0, -504(%rbp) 

mov		-504(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL44

.falseCondL40: 

mov	.FL45(%rip), %r10
mov	%r10, -512(%rbp)

mov	.FL46(%rip), %r10
mov	%r10, -520(%rbp)

movss		-72(%rbp), %xmm0 
subss		-520(%rbp), %xmm0 
movss		%xmm0, -528(%rbp) 

movss		-512(%rbp), %xmm0 
subss		-528(%rbp), %xmm0 
movss		%xmm0, -536(%rbp) 

mov		-536(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL44: 

movq 	$1, -544(%rbp)

mov		-104(%rbp), %r10 
mov		-544(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -552(%rbp)

mov		-552(%rbp), %r10
mov		%r10, -104(%rbp)

jmp 		.beginWhileL26

.endWhileL25: 

movss		-24(%rbp), %xmm1 
movss		.FL47(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -560(%rbp) 

mov	.FL48(%rip), %r10
mov	%r10, -568(%rbp)

mov	.FL49(%rip), %r10
mov	%r10, -576(%rbp)

mov	.FL50(%rip), %r10
mov	%r10, -584(%rbp)

movss		-576(%rbp), %xmm0 
divss		-584(%rbp), %xmm0 
movss		%xmm0, -592(%rbp) 

movss		-16(%rbp), %xmm0 
addss		-592(%rbp), %xmm0 
movss		%xmm0, -600(%rbp) 

movss		-568(%rbp), %xmm0 
mulss		-600(%rbp), %xmm0 
movss		%xmm0, -608(%rbp) 

movss		-560(%rbp), %xmm0 
addss		-608(%rbp), %xmm0 
movss		%xmm0, -616(%rbp) 

movss		-72(%rbp), %xmm0 
mulss		-616(%rbp), %xmm0 
movss		%xmm0, -624(%rbp) 

mov		-624(%rbp), %r10
mov		%r10, -72(%rbp)

movq 	$1, -632(%rbp)

mov		-80(%rbp), %r10 
mov		-632(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -640(%rbp)

mov		-640(%rbp), %r10
mov		%r10, -80(%rbp)

jmp 		.beginWhileL24

.endWhileL23: 

.endIfL22: 

movss		-72(%rbp), %xmm1 
movss		.FL51(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -648(%rbp) 

movss		-648(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 20), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

mov		$0, %r10
mov		%r10, w(%rip)

mov		$0, %r10
mov		%r10, m(%rip)

mov		$0, %r10
mov		%r10, res(%rip)

mov	.FL52(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

mov	.FL53(%rip), %r10
mov	%r10, -40(%rbp)

movss		-40(%rbp), %xmm1 
movss		.FL54(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, res(%rip)

mov	.FL55(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, w(%rip)

mov	.FL56(%rip), %r10
mov	%r10, -64(%rbp)

movss		-64(%rbp), %xmm1 
movss		.FL57(%rip), %xmm0 
xorps		%xmm1, %xmm0 
movss		%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, m(%rip)

movq 	$2, -80(%rbp)

movss		-24, %xmm0

mov		-80(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	potencia
mov 	%rax, -88(%rbp) 

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov	.FL59(%rip), %r10
mov	%r10, -112(%rbp)

movss		-16(%rbp), %xmm0 
addss		-112(%rbp), %xmm0 
movss		%xmm0, -120(%rbp) 

movss		-24, %xmm0

movss		-120, %xmm1

mov 		$0, %rax 
call 	multiples
mov 	%rax, -128(%rbp) 

mov		$.L0L58, %r10
mov	 	%r10, %rdi

movss		-128, %xmm1

mov 		$0, %rax 
call 	printf
mov 	%rax, -152(%rbp) 

mov 		$0, %rax
leave
ret

