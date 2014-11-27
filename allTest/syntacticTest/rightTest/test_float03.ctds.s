.SL59: 
		.string "%f" 

.FL58: 
		.float 2.0 

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
enter   $(8 * 30), $0 

movss 		%xmm0, -16(%rbp) 
mov 		%rdi, -8(%rbp) 

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

mov		-8(%rbp), %rax
cmp		-96(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.falseCondL1

mov		-8(%rbp), %rax 
neg		%rax 
mov		%rax, -112(%rbp) 

mov		-112(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL1: 

.beginWhileL3: 

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -128(%rbp)

mov 		-32(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -136(%rbp)

cmpq		$0, -128(%rbp)
jne 		.L4
cmpq		$0, -136(%rbp)
je 		.L5
.L4: 
mov		$1, %r10
jmp 		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -144(%rbp)

movq 	$1, -152(%rbp)

mov		-152(%rbp), %r10
cmp 		-144(%rbp), %r10

jne 		.endWhileL2

movss		-48(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -152(%rbp) 

mov	.FL7(%rip), %r10
mov	%r10, -160(%rbp)

movss		-152(%rbp), %xmm0 
mulss		-160(%rbp), %xmm0 
movss		%xmm0, -168(%rbp) 

mov		-168(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -176(%rbp)

mov		-32(%rbp), %r10 
mov		-176(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -184(%rbp)

mov		-184(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -192(%rbp) 

cmpq		$0, -192(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -200(%rbp) 

movq 	$1, -208(%rbp)

mov		-208(%rbp), %r10
cmp 		-200(%rbp), %r10

jne 		.falseCondL8

mov	.FL9(%rip), %r10
mov	%r10, -208(%rbp)

movss		-208(%rbp), %xmm0 
divss		-48(%rbp), %xmm0 
movss		%xmm0, -216(%rbp) 

movss		-216(%rbp), %xmm0
leave
ret

jmp 		.endIfL10

.falseCondL8: 

movss		-48(%rbp), %xmm0
leave
ret

.endIfL10: 

mov	.FL11(%rip), %r10
mov	%r10, -224(%rbp)

movss		-224(%rbp), %xmm1 
movss		.FL12(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -232(%rbp) 

movss		-232(%rbp), %xmm0
leave
ret

.globl	multiples
.type	multiples, @function 
multiples: 
enter   $(8 * 74), $0 

movss 		%xmm0, -16(%rbp) 
movss 		%xmm1, -8(%rbp) 

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
subss		%xmm1, %xmm0 
movss		%xmm0, -168(%rbp) 

mov		-168(%rbp), %r10
mov		%r10, -56(%rbp)

mov	.FL17(%rip), %r10
mov	%r10, -176(%rbp)

movss		-176(%rbp), %xmm1 
movss		.FL18(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -184(%rbp) 

mov		-184(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-32(%rbp), %xmm0 
mulss		-40(%rbp), %xmm0 
movss		%xmm0, -192(%rbp) 

movss		-192(%rbp), %xmm0 
subss		-56(%rbp), %xmm0 
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
ucomiss		-8(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -240(%rbp) 

movq 	$1, -248(%rbp)

mov		-248(%rbp), %r10
cmp 		-240(%rbp), %r10

jne 		.falseCondL19

movss		-32(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -248(%rbp) 

movq 	$1, -256(%rbp)

mov		-256(%rbp), %r10
cmp 		-248(%rbp), %r10

jne 		.falseCondL20

mov		-16(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL21

.falseCondL20: 

mov		-8(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL21: 

jmp 		.endIfL22

.falseCondL19: 

.beginWhileL24: 

mov		-80(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -256(%rbp)

movq 	$1, -264(%rbp)

mov		-264(%rbp), %r10
cmp 		-256(%rbp), %r10

jne 		.endWhileL23

.beginWhileL26: 

mov		-104(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -264(%rbp)

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
cmp 		-264(%rbp), %r10

jne 		.endWhileL25

.beginWhileL28: 

mov		-96(%rbp), %rax
cmp		-88(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -272(%rbp)

mov 		-96(%rbp), %rax
cmp		-88(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -280(%rbp)

cmpq		$0, -272(%rbp)
jne 		.L29
cmpq		$0, -280(%rbp)
je 		.L30
.L29: 
mov		$1, %r10
jmp 		.L31
.L30:
mov		$0, %r10
.L31:
mov		%r10, -288(%rbp)

movq 	$1, -296(%rbp)

mov		-296(%rbp), %r10
cmp 		-288(%rbp), %r10

jne 		.endWhileL27

movq 	$3, -296(%rbp)

mov 		-48(%rbp), %rax
cmp		-296(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -304(%rbp)

movq 	$1, -312(%rbp)

mov		-312(%rbp), %r10
cmp 		-304(%rbp), %r10

jne 		.falseCondL32

mov	.FL33(%rip), %r10
mov	%r10, -312(%rbp)

movss		-72(%rbp), %xmm0 
addss		-312(%rbp), %xmm0 
movss		%xmm0, -320(%rbp) 

mov		-320(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL34

.falseCondL32: 

mov	.FL35(%rip), %r10
mov	%r10, -328(%rbp)

mov	.FL36(%rip), %r10
mov	%r10, -336(%rbp)

movss		-328(%rbp), %xmm0 
divss		-336(%rbp), %xmm0 
movss		%xmm0, -344(%rbp) 

movss		-72(%rbp), %xmm0 
subss		-344(%rbp), %xmm0 
movss		%xmm0, -352(%rbp) 

mov		-352(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL34: 

movq 	$1, -360(%rbp)

mov		-360(%rbp), %r10 
mov		-96(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -368(%rbp)

mov		-368(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL28

.endWhileL27: 

movss		-16(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -368(%rbp) 

mov	.FL37(%rip), %r10
mov	%r10, -376(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-376(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -384(%rbp) 

cmpq		$0, -368(%rbp)
je 		.L38
cmpq		$0, -384(%rbp)
je 		.L38
mov		$1, %r10
jmp		.L39
.L38:
mov		$0, %r10
.L39:
mov		%r10, -392(%rbp)

movq 	$1, -400(%rbp)

mov		-400(%rbp), %r10
cmp 		-392(%rbp), %r10

jne 		.falseCondL40

mov	.FL41(%rip), %r10
mov	%r10, -400(%rbp)

mov	.FL42(%rip), %r10
mov	%r10, -408(%rbp)

movss		-408(%rbp), %xmm0 
mulss		-72(%rbp), %xmm0 
movss		%xmm0, -416(%rbp) 

movss		-400(%rbp), %xmm0 
addss		-416(%rbp), %xmm0 
movss		%xmm0, -424(%rbp) 

mov	.FL43(%rip), %r10
mov	%r10, -432(%rbp)

movss		-424(%rbp), %xmm0 
subss		-432(%rbp), %xmm0 
movss		%xmm0, -440(%rbp) 

mov		-440(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL44

.falseCondL40: 

mov	.FL45(%rip), %r10
mov	%r10, -448(%rbp)

movss		-448(%rbp), %xmm0 
subss		-72(%rbp), %xmm0 
movss		%xmm0, -456(%rbp) 

mov	.FL46(%rip), %r10
mov	%r10, -464(%rbp)

movss		-456(%rbp), %xmm0 
subss		-464(%rbp), %xmm0 
movss		%xmm0, -472(%rbp) 

mov		-472(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL44: 

movq 	$1, -480(%rbp)

mov		-104(%rbp), %r10 
mov		-480(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -488(%rbp)

mov		-488(%rbp), %r10
mov		%r10, -104(%rbp)

jmp 		.beginWhileL26

.endWhileL25: 

movss		-16(%rbp), %xmm1 
movss		.FL47(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -496(%rbp) 

movss		-72(%rbp), %xmm0 
mulss		-496(%rbp), %xmm0 
movss		%xmm0, -504(%rbp) 

mov	.FL48(%rip), %r10
mov	%r10, -512(%rbp)

movss		-512(%rbp), %xmm0 
mulss		-8(%rbp), %xmm0 
movss		%xmm0, -520(%rbp) 

movss		-504(%rbp), %xmm0 
addss		-520(%rbp), %xmm0 
movss		%xmm0, -528(%rbp) 

mov	.FL49(%rip), %r10
mov	%r10, -536(%rbp)

mov	.FL50(%rip), %r10
mov	%r10, -544(%rbp)

movss		-536(%rbp), %xmm0 
divss		-544(%rbp), %xmm0 
movss		%xmm0, -552(%rbp) 

movss		-528(%rbp), %xmm0 
addss		-552(%rbp), %xmm0 
movss		%xmm0, -560(%rbp) 

mov		-560(%rbp), %r10
mov		%r10, -72(%rbp)

movq 	$1, -568(%rbp)

mov		-80(%rbp), %r10 
mov		-568(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -576(%rbp)

mov		-576(%rbp), %r10
mov		%r10, -80(%rbp)

jmp 		.beginWhileL24

.endWhileL23: 

.endIfL22: 

movss		-72(%rbp), %xmm1 
movss		.FL51(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -584(%rbp) 

movss		-584(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 14), $0 


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
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, w(%rip)

mov	.FL56(%rip), %r10
mov	%r10, -64(%rbp)

movss		-64(%rbp), %xmm1 
movss		.FL57(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, m(%rip)

movq 	$2, -80(%rbp)

movss		-24(%rbp), %xmm0

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	potencia
movss 	%xmm0, -88(%rbp) 

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov	.FL58(%rip), %r10
mov	%r10, -96(%rbp)

movss		-16(%rbp), %xmm0 
addss		-96(%rbp), %xmm0 
movss		%xmm0, -104(%rbp) 

movss		-24(%rbp), %xmm0

movss		-104(%rbp), %xmm1

mov 		$2, %rax 

call 	multiples
movss 	%xmm0, -112(%rbp) 

mov		$.SL59, %r10
mov	 	%r10, %rdi

movss		-112(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

