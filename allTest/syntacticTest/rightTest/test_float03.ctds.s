.SL49: 
		.string "%f" 

.FL48: 
		.float 2.0 

.FL47: 
		.float -7.6 

.FL46: 
		.float 4.3 

.FL45: 
		.float -15.0 

.FL44: 
		.float 80.0 

.FL43: 
		.float 0.5 

.FL42: 
		.float 23.0 

.FL41: 
		.float 12345.356 

.FL40: 
		.float 3.2 

.FL38: 
		.float 498.0 

.FL37: 
		.float 4.0 

.FL36: 
		.float 35.0 

.FL32: 
		.float 0.0 

.FL31: 
		.float 5.0 

.FL29: 
		.float 2.0 

.FL14: 
		.float -3.0 

.FL13: 
		.float -3.0 

.FL12: 
		.float -20.0 

.FL11: 
		.float -100.1 

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
enter   $(8 * 24), $0 

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

mov		-8(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL1: 

.beginWhileL3: 

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -112(%rbp)

mov 		-32(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -120(%rbp)

cmpq		$0, -112(%rbp)
jne 		.L4
cmpq		$0, -120(%rbp)
je 		.L5
.L4: 
mov		$1, %r10
jmp 		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -128(%rbp)

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10
cmp 		-128(%rbp), %r10

jne 		.endWhileL2

movss		-48(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -136(%rbp) 

mov	.FL7(%rip), %r10
mov	%r10, -144(%rbp)

movss		-136(%rbp), %xmm0 
mulss		-144(%rbp), %xmm0 
movss		%xmm0, -152(%rbp) 

mov		-152(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -160(%rbp)

mov		-32(%rbp), %r10 
mov		-160(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -168(%rbp)

mov		-168(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

movq 	$1, -176(%rbp)

mov		-176(%rbp), %r10
cmp 		-40(%rbp), %r10

jne 		.falseCondL8

mov	.FL9(%rip), %r10
mov	%r10, -176(%rbp)

movss		-176(%rbp), %xmm0 
divss		-48(%rbp), %xmm0 
movss		%xmm0, -184(%rbp) 

movss		-184(%rbp), %xmm0
leave
ret

jmp 		.endIfL10

.falseCondL8: 

movss		-48(%rbp), %xmm0
leave
ret

.endIfL10: 

mov	.FL11(%rip), %r10
mov	%r10, -176(%rbp)

movss		-176(%rbp), %xmm0
leave
ret

.globl	multiples
.type	multiples, @function 
multiples: 
enter   $(8 * 26), $0 

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

mov	.FL12(%rip), %r10
mov	%r10, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$-2, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -48(%rbp)

mov	.FL13(%rip), %r10
mov	%r10, -144(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -56(%rbp)

mov	.FL14(%rip), %r10
mov	%r10, -152(%rbp)

mov		-152(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-32(%rbp), %xmm0 
mulss		-40(%rbp), %xmm0 
movss		%xmm0, -160(%rbp) 

movss		-160(%rbp), %xmm0 
subss		-56(%rbp), %xmm0 
movss		%xmm0, -168(%rbp) 

mov		-168(%rbp), %r10
mov		%r10, -64(%rbp)

movq 	$0, -176(%rbp)

mov		-176(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$0, -184(%rbp)

mov		-184(%rbp), %r10
mov		%r10, -104(%rbp)

movq 	$0, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$5, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -88(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-8(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -208(%rbp) 

movq 	$1, -216(%rbp)

mov		-216(%rbp), %r10
cmp 		-208(%rbp), %r10

jne 		.falseCondL15

movss		-32(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -216(%rbp) 

movq 	$1, -224(%rbp)

mov		-224(%rbp), %r10
cmp 		-216(%rbp), %r10

jne 		.falseCondL16

mov		-16(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL17

.falseCondL16: 

mov		-8(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL17: 

jmp 		.endIfL18

.falseCondL15: 

.beginWhileL20: 

mov		-80(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -224(%rbp)

movq 	$1, -224(%rbp)

mov		-224(%rbp), %r10
cmp 		-224(%rbp), %r10

jne 		.endWhileL19

.beginWhileL22: 

mov		-104(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -224(%rbp)

movq 	$1, -232(%rbp)

mov		-232(%rbp), %r10
cmp 		-224(%rbp), %r10

jne 		.endWhileL21

.beginWhileL24: 

mov		-96(%rbp), %rax
cmp		-88(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -232(%rbp)

mov 		-96(%rbp), %rax
cmp		-88(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -240(%rbp)

cmpq		$0, -232(%rbp)
jne 		.L25
cmpq		$0, -240(%rbp)
je 		.L26
.L25: 
mov		$1, %r10
jmp 		.L27
.L26:
mov		$0, %r10
.L27:
mov		%r10, -248(%rbp)

movq 	$1, -256(%rbp)

mov		-256(%rbp), %r10
cmp 		-248(%rbp), %r10

jne 		.endWhileL23

movq 	$3, -256(%rbp)

mov 		-48(%rbp), %rax
cmp		-256(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -264(%rbp)

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
cmp 		-264(%rbp), %r10

jne 		.falseCondL28

mov	.FL29(%rip), %r10
mov	%r10, -272(%rbp)

movss		-72(%rbp), %xmm0 
addss		-272(%rbp), %xmm0 
movss		%xmm0, -280(%rbp) 

mov		-280(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL30

.falseCondL28: 

mov	.FL31(%rip), %r10
mov	%r10, -288(%rbp)

movss		-72(%rbp), %xmm0 
subss		-288(%rbp), %xmm0 
movss		%xmm0, -296(%rbp) 

mov		-296(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL30: 

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10 
mov		-96(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -304(%rbp)

mov		-304(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL24

.endWhileL23: 

movss		-16(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -312(%rbp) 

mov	.FL32(%rip), %r10
mov	%r10, -320(%rbp)

movss		-16(%rbp), %xmm0 
ucomiss		-320(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -328(%rbp) 

cmpq		$0, -312(%rbp)
je 		.L33
cmpq		$0, -328(%rbp)
je 		.L33
mov		$1, %r10
jmp		.L34
.L33:
mov		$0, %r10
.L34:
mov		%r10, -336(%rbp)

movq 	$1, -344(%rbp)

mov		-344(%rbp), %r10
cmp 		-336(%rbp), %r10

jne 		.falseCondL35

mov	.FL36(%rip), %r10
mov	%r10, -344(%rbp)

mov	.FL37(%rip), %r10
mov	%r10, -352(%rbp)

movss		-352(%rbp), %xmm0 
mulss		-72(%rbp), %xmm0 
movss		%xmm0, -360(%rbp) 

movss		-344(%rbp), %xmm0 
addss		-360(%rbp), %xmm0 
movss		%xmm0, -368(%rbp) 

mov	.FL38(%rip), %r10
mov	%r10, -376(%rbp)

movss		-368(%rbp), %xmm0 
subss		-376(%rbp), %xmm0 
movss		%xmm0, -384(%rbp) 

mov		-384(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL39

.falseCondL35: 

mov	.FL40(%rip), %r10
mov	%r10, -392(%rbp)

movss		-392(%rbp), %xmm0 
subss		-72(%rbp), %xmm0 
movss		%xmm0, -400(%rbp) 

mov	.FL41(%rip), %r10
mov	%r10, -408(%rbp)

movss		-400(%rbp), %xmm0 
subss		-408(%rbp), %xmm0 
movss		%xmm0, -416(%rbp) 

mov		-416(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL39: 

movq 	$1, -344(%rbp)

mov		-104(%rbp), %r10 
mov		-344(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -424(%rbp)

mov		-424(%rbp), %r10
mov		%r10, -104(%rbp)

jmp 		.beginWhileL22

.endWhileL21: 

movss		-72(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -432(%rbp) 

mov	.FL42(%rip), %r10
mov	%r10, -440(%rbp)

movss		-440(%rbp), %xmm0 
mulss		-8(%rbp), %xmm0 
movss		%xmm0, -448(%rbp) 

movss		-432(%rbp), %xmm0 
addss		-448(%rbp), %xmm0 
movss		%xmm0, -456(%rbp) 

mov	.FL43(%rip), %r10
mov	%r10, -464(%rbp)

movss		-456(%rbp), %xmm0 
addss		-464(%rbp), %xmm0 
movss		%xmm0, -472(%rbp) 

mov		-472(%rbp), %r10
mov		%r10, -72(%rbp)

movq 	$1, -480(%rbp)

mov		-80(%rbp), %r10 
mov		-480(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -488(%rbp)

mov		-488(%rbp), %r10
mov		%r10, -80(%rbp)

jmp 		.beginWhileL20

.endWhileL19: 

.endIfL18: 

movss		-72(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 12), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

mov		$0, %r10
mov		%r10, w(%rip)

mov		$0, %r10
mov		%r10, m(%rip)

mov		$0, %r10
mov		%r10, res(%rip)

mov	.FL44(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

mov	.FL45(%rip), %r10
mov	%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, res(%rip)

mov	.FL46(%rip), %r10
mov	%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, w(%rip)

mov	.FL47(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, m(%rip)

movq 	$2, -64(%rbp)

movss		-24(%rbp), %xmm0

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	potencia
movss 	%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov	.FL48(%rip), %r10
mov	%r10, -80(%rbp)

movss		-16(%rbp), %xmm0 
addss		-80(%rbp), %xmm0 
movss		%xmm0, -88(%rbp) 

movss		-24(%rbp), %xmm0

movss		-88(%rbp), %xmm1

mov 		$2, %rax 

call 	multiples
movss 	%xmm0, -96(%rbp) 

mov		$.SL49, %r10
mov	 	%r10, %rdi

movss		-96(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

