.FL59: 
		.float 2.0 

.SL58: 
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
enter   $(8 * 33), $0 
movss 		%xmm0, -8(%rbp) 
cvtps2pd	%xmm0, %xmm0 
mov 		%rdi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

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
subss		%xmm1, %xmm0 
movss		%xmm0, -256(%rbp) 

movss		-256(%rbp), %xmm0
leave
ret

.globl	multiples
.type	multiples, @function 
multiples: 
enter   $(8 * 86), $0 
movss 		%xmm0, -8(%rbp) 
cvtps2pd	%xmm0, %xmm0 
movss 		%xmm1, -16(%rbp) 
cvtps2pd	%xmm0, %xmm0 

movq		$0, %r10
mov		%r10, -24(%rbp)

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
subss		%xmm1, %xmm0 
movss		%xmm0, -136(%rbp) 

mov		-136(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$2, -152(%rbp)

mov		-152(%rbp), %rax 
neg		%rax 
mov		%rax, -160(%rbp) 

mov		-160(%rbp), %r10
mov		%r10, -48(%rbp)

mov	.FL15(%rip), %r10
mov	%r10, -168(%rbp)

movss		-168(%rbp), %xmm1 
movss		.FL16(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -176(%rbp) 

mov		-176(%rbp), %r10
mov		%r10, -56(%rbp)

mov	.FL17(%rip), %r10
mov	%r10, -192(%rbp)

movss		-192(%rbp), %xmm1 
movss		.FL18(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -200(%rbp) 

mov		-200(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-40(%rbp), %xmm0 
subss		-56(%rbp), %xmm0 
movss		%xmm0, -216(%rbp) 

movss		-32(%rbp), %xmm0 
mulss		-216(%rbp), %xmm0 
movss		%xmm0, -224(%rbp) 

mov		-224(%rbp), %r10
mov		%r10, -64(%rbp)

movq 	$0, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$0, -240(%rbp)

mov		-240(%rbp), %r10
mov		%r10, -104(%rbp)

movq 	$0, -248(%rbp)

mov		-248(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$5, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -88(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -264(%rbp) 

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
cmp 		-264(%rbp), %r10

jne 		.falseCondL19

movss		-64(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -280(%rbp) 

movq 	$1, -288(%rbp)

mov		-288(%rbp), %r10
cmp 		-280(%rbp), %r10

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
mov		%rax, -296(%rbp)

movq 	$1, -304(%rbp)

mov		-304(%rbp), %r10
cmp 		-296(%rbp), %r10

jne 		.endWhileL23

.beginWhileL26: 

mov		-104(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -312(%rbp)

movq 	$1, -320(%rbp)

mov		-320(%rbp), %r10
cmp 		-312(%rbp), %r10

jne 		.endWhileL25

.beginWhileL28: 

mov		-96(%rbp), %rax
cmp		-88(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -328(%rbp)

mov 		-96(%rbp), %rax
cmp		-88(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -336(%rbp)

cmpq		$0, -328(%rbp)
jne 		.L29
cmpq		$0, -336(%rbp)
je 		.L30
.L29: 
mov		$1, %r10
jmp 		.L31
.L30:
mov		$0, %r10
.L31:
mov		%r10, -344(%rbp)

movq 	$1, -352(%rbp)

mov		-352(%rbp), %r10
cmp 		-344(%rbp), %r10

jne 		.endWhileL27

movq 	$3, -360(%rbp)

mov 		-48(%rbp), %rax
cmp		-360(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -368(%rbp)

movq 	$1, -376(%rbp)

mov		-376(%rbp), %r10
cmp 		-368(%rbp), %r10

jne 		.falseCondL32

mov	.FL33(%rip), %r10
mov	%r10, -384(%rbp)

movss		-72(%rbp), %xmm0 
addss		-384(%rbp), %xmm0 
movss		%xmm0, -392(%rbp) 

mov		-392(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL34

.falseCondL32: 

mov	.FL35(%rip), %r10
mov	%r10, -400(%rbp)

mov	.FL36(%rip), %r10
mov	%r10, -408(%rbp)

movss		-400(%rbp), %xmm0 
divss		-408(%rbp), %xmm0 
movss		%xmm0, -416(%rbp) 

movss		-72(%rbp), %xmm0 
subss		-416(%rbp), %xmm0 
movss		%xmm0, -424(%rbp) 

mov		-424(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL34: 

movq 	$1, -432(%rbp)

mov		-432(%rbp), %r10 
mov		-96(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -440(%rbp)

mov		-440(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL28

.endWhileL27: 

movss		-32(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -448(%rbp) 

mov	.FL37(%rip), %r10
mov	%r10, -456(%rbp)

movss		-456(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -464(%rbp) 

cmpq		$0, -448(%rbp)
je 		.L38
cmpq		$0, -464(%rbp)
je 		.L38
mov		$1, %r10
jmp		.L39
.L38:
mov		$0, %r10
.L39:
mov		%r10, -472(%rbp)

movq 	$1, -480(%rbp)

mov		-480(%rbp), %r10
cmp 		-472(%rbp), %r10

jne 		.falseCondL40

mov	.FL41(%rip), %r10
mov	%r10, -488(%rbp)

mov	.FL42(%rip), %r10
mov	%r10, -496(%rbp)

mov	.FL43(%rip), %r10
mov	%r10, -504(%rbp)

movss		-72(%rbp), %xmm0 
subss		-504(%rbp), %xmm0 
movss		%xmm0, -512(%rbp) 

movss		-496(%rbp), %xmm0 
mulss		-512(%rbp), %xmm0 
movss		%xmm0, -520(%rbp) 

movss		-488(%rbp), %xmm0 
addss		-520(%rbp), %xmm0 
movss		%xmm0, -528(%rbp) 

mov		-528(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL44

.falseCondL40: 

mov	.FL45(%rip), %r10
mov	%r10, -536(%rbp)

mov	.FL46(%rip), %r10
mov	%r10, -544(%rbp)

movss		-72(%rbp), %xmm0 
subss		-544(%rbp), %xmm0 
movss		%xmm0, -552(%rbp) 

movss		-536(%rbp), %xmm0 
subss		-552(%rbp), %xmm0 
movss		%xmm0, -560(%rbp) 

mov		-560(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL44: 

movq 	$1, -568(%rbp)

mov		-104(%rbp), %r10 
mov		-568(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -576(%rbp)

mov		-576(%rbp), %r10
mov		%r10, -104(%rbp)

jmp 		.beginWhileL26

.endWhileL25: 

movss		-24(%rbp), %xmm1 
movss		.FL47(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -584(%rbp) 

mov	.FL48(%rip), %r10
mov	%r10, -600(%rbp)

mov	.FL49(%rip), %r10
mov	%r10, -608(%rbp)

mov	.FL50(%rip), %r10
mov	%r10, -616(%rbp)

movss		-608(%rbp), %xmm0 
divss		-616(%rbp), %xmm0 
movss		%xmm0, -624(%rbp) 

movss		-16(%rbp), %xmm0 
addss		-624(%rbp), %xmm0 
movss		%xmm0, -632(%rbp) 

movss		-600(%rbp), %xmm0 
mulss		-632(%rbp), %xmm0 
movss		%xmm0, -640(%rbp) 

movss		-584(%rbp), %xmm0 
addss		-640(%rbp), %xmm0 
movss		%xmm0, -648(%rbp) 

movss		-72(%rbp), %xmm0 
mulss		-648(%rbp), %xmm0 
movss		%xmm0, -656(%rbp) 

mov		-656(%rbp), %r10
mov		%r10, -72(%rbp)

movq 	$1, -664(%rbp)

mov		-80(%rbp), %r10 
mov		-664(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -672(%rbp)

mov		-672(%rbp), %r10
mov		%r10, -80(%rbp)

jmp 		.beginWhileL24

.endWhileL23: 

.endIfL22: 

movss		-72(%rbp), %xmm1 
movss		.FL51(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -680(%rbp) 

movss		-680(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 17), $0 

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
subss		%xmm1, %xmm0 
movss		%xmm0, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, res(%rip)

mov	.FL55(%rip), %r10
mov	%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, w(%rip)

mov	.FL56(%rip), %r10
mov	%r10, -72(%rbp)

movss		-72(%rbp), %xmm1 
movss		.FL57(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, m(%rip)

movq 	$2, -96(%rbp)

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov		-96(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	potencia
movss 	%xmm0, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, -16(%rbp)

mov	.FL59(%rip), %r10
mov	%r10, -112(%rbp)

movss		-16(%rbp), %xmm0 
addss		-112(%rbp), %xmm0 
movss		%xmm0, -120(%rbp) 

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

movss		-120(%rbp), %xmm1
cvtps2pd	%xmm0, %xmm0 

mov 		$2, %rax 

call 	multiples
movss 	%xmm0, -128(%rbp) 

mov		$.SL58, %r10
mov	 	%r10, %rdi

movss		-128(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

