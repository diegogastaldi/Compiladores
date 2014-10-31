.SL91: 
		.string "---------------------------------------------------------" 

.SL90: 
		.string "test1----------------------------------" 

.SL89: 
		.string "---------------------------------------------------------" 

.SL88: 
		.string "test----------------------------------" 

.SL87: 
		.string "---------------------------------------------------------" 

.SL84: 
		.string "GCD Enteros----------------------------------" 

.SL83: 
		.string "---------------------------------------------------------" 

.SL80: 
		.string "Int2Bin Enteros----------------------------------" 

.SL79: 
		.string "---------------------------------------------------------" 

.SL76: 
		.string "Nthprime Array Enteros----------------------------------" 

.SL75: 
		.string "---------------------------------------------------------" 

.SL72: 
		.string "Nthprime Enteros----------------------------------" 

.SL71: 
		.string "---------------------------------------------------------" 

.SL68: 
		.string "Factorial Array Enteros----------------------------------" 

.SL67: 
		.string "---------------------------------------------------------" 

.SL64: 
		.string "Factorial Reales----------------------------------" 

.SL63: 
		.string "---------------------------------------------------------" 

.SL60: 
		.string "Factorial Enteros----------------------------------" 

.SL59: 
		.string "input" 

.FL58: 
		.float 2.0 

.FL57: 
		.float 2.0 

.FL49: 
		.float 1.0 

.FL14: 
		.float 1.0 

.FL11: 
		.float 1.0 

.FL10: 
		.float 0.0 

.FL9: 
		.float 0 

.FL8: 
		.float 1.0 

.FL6: 
		.float 15.0 

.text

.globl	factorial
.type	factorial, @function 
factorial: 
enter   $(8 * 18), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq 	$15, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-8(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 		-64(%rbp), %r10

jne 		.falseCondL0

movq 	$1, -80(%rbp)

mov		-80(%rbp), %rax 
neg		%rax 
mov		%rax, -88(%rbp) 

mov		-88(%rbp), %rax
leave
ret

.falseCondL0: 

movq 	$0, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL2: 

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -112(%rbp)

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.endWhileL1

movq 	$1, -128(%rbp)

mov		-32(%rbp), %r10 
mov		-128(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-40(%rbp), %r10 
mov		-32(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -144(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.beginWhileL2

.endWhileL1: 

mov		-40(%rbp), %rax
leave
ret

.globl	factorialFor
.type	factorialFor, @function 
factorialFor: 
enter   $(8 * 16), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq 	$15, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-8(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 		-64(%rbp), %r10

jne 		.falseCondL3

movq 	$1, -80(%rbp)

mov		-80(%rbp), %rax 
neg		%rax 
mov		%rax, -88(%rbp) 

mov		-88(%rbp), %rax
leave
ret

.falseCondL3: 

movq 	$1, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -112(%rbp)

movq 	$1, -120(%rbp)

jmp 		.endForL4

.beginForL5: 

mov		-40(%rbp), %r10 
mov		-32(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-120(%rbp), %r10 
mov		-112(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -32(%rbp)

.endForL4: 

mov		-120(%rbp), %r10
cmp 		-8(%rbp), %r10

jle 		.beginForL5

mov		-40(%rbp), %rax
leave
ret

.globl	factorialF
.type	factorialF, @function 
factorialF: 
enter   $(8 * 18), $0 

movss 		%xmm0, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

mov	.FL6(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

movss		-8(%rbp), %xmm0 
ucomiss		-24(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -64(%rbp) 

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 		-64(%rbp), %r10

jne 		.falseCondL7

mov	.FL8(%rip), %r10
mov	%r10, -80(%rbp)

movss		-80(%rbp), %xmm1 
movss		.FL9(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -88(%rbp) 

movss		-88(%rbp), %xmm0
leave
ret

.falseCondL7: 

mov	.FL10(%rip), %r10
mov	%r10, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL11(%rip), %r10
mov	%r10, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL13: 

movss		-8(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -112(%rbp) 

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.endWhileL12

mov	.FL14(%rip), %r10
mov	%r10, -128(%rbp)

movss		-32(%rbp), %xmm0 
addss		-128(%rbp), %xmm0 
movss		%xmm0, -136(%rbp) 

mov		-136(%rbp), %r10
mov		%r10, -32(%rbp)

movss		-40(%rbp), %xmm0 
mulss		-32(%rbp), %xmm0 
movss		%xmm0, -144(%rbp) 

mov		-144(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.beginWhileL13

.endWhileL12: 

movss		-40(%rbp), %xmm0
leave
ret

.globl	factorialArray
.type	factorialArray, @function 
factorialArray: 
enter   $(8 * 42), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

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

movq		$0, %r10
mov		%r10, -104(%rbp)

movq		$0, %r10
mov		%r10, -112(%rbp)

movq		$0, %r10
mov		%r10, -120(%rbp)

movq		$0, %r10
mov		%r10, -128(%rbp)

movq		$0, %r10
mov		%r10, -136(%rbp)

movq		$0, %r10
mov		%r10, -144(%rbp)

movq		$0, %r10
mov		%r10, -152(%rbp)

movq		$0, %r10
mov		%r10, -160(%rbp)

movq 	$15, -184(%rbp)

mov		-184(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL16: 

mov		-32(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -200(%rbp)

movq 	$1, -208(%rbp)

mov		-208(%rbp), %r10
cmp 		-200(%rbp), %r10

jne 		.endWhileL15

movq 	$0, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -160(%rbp)

movq 	$1, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -168(%rbp)

.beginWhileL18: 

mov		-160(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -232(%rbp)

movq 	$1, -240(%rbp)

mov		-240(%rbp), %r10
cmp 		-232(%rbp), %r10

jne 		.endWhileL17

movq 	$1, -248(%rbp)

mov		-160(%rbp), %r10 
mov		-248(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -160(%rbp)

mov		-168(%rbp), %r10 
mov		-160(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -264(%rbp)

mov		-264(%rbp), %r10
mov		%r10, -168(%rbp)

jmp 		.beginWhileL18

.endWhileL17: 

mov 		-168(%rbp), %r10 
movl		-32(%rbp), %edx 
cltq 
mov 		%r10, -152(%rbp, %rdx, 8) 

movq 	$1, -272(%rbp)

mov		-32(%rbp), %r10 
mov		-272(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -280(%rbp)

mov		-280(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL16

.endWhileL15: 

movq 	$1, -288(%rbp)

mov		-288(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -296(%rbp)

mov		-8(%rbp), %rax
cmp		-296(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -304(%rbp)

movq 	$1, -312(%rbp)

mov		-312(%rbp), %r10
cmp 		-304(%rbp), %r10

jne 		.falseCondL19

movq 	$1, -320(%rbp)

mov		-320(%rbp), %rax 
neg		%rax 
mov		%rax, -328(%rbp) 

mov		-328(%rbp), %rax
leave
ret

jmp 		.endIfL20

.falseCondL19: 

movl		-8(%rbp), %edx 
cltq 
mov 		-152(%rbp,%rdx,8) , %r11
mov 		%r11, -336(%rbp) 

mov		-336(%rbp), %rax
leave
ret

.endIfL20: 

.globl	nthprime
.type	nthprime, @function 
nthprime: 
enter   $(8 * 32), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq 	$0, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1, -72(%rbp)

mov		-8(%rbp), %r10 
mov		-72(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -8(%rbp)

.beginWhileL22: 

movq 	$0, -88(%rbp)

mov		-8(%rbp), %rax
cmp		-88(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.endWhileL21

movq 	$0, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -120(%rbp)

mov		-24(%rbp), %r10 
mov		-120(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL24: 

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -136(%rbp) 

mov		-32(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -144(%rbp)

cmpq		$0, -136(%rbp)
je 		.L25
cmpq		$0, -144(%rbp)
je 		.L25
mov		$1, %r10
jmp		.L26
.L25:
mov		$0, %r10
.L26:
mov		%r10, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.endWhileL23

mov		-24(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rdx, -168(%rbp)

movq 	$0, -176(%rbp)

mov 		-168(%rbp), %rax
cmp		-176(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -184(%rbp)

movq 	$1, -192(%rbp)

mov		-192(%rbp), %r10
cmp 		-184(%rbp), %r10

jne 		.falseCondL27

movq 	$1, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.endIfL28

.falseCondL27: 

movq 	$1, -208(%rbp)

mov		-32(%rbp), %r10 
mov		-208(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL28: 

jmp 		.beginWhileL24

.endWhileL23: 

movq 	$2, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -32(%rbp)

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -232(%rbp) 

movq 	$1, -240(%rbp)

mov		-240(%rbp), %r10
cmp 		-232(%rbp), %r10

jne 		.falseCondL29

movq 	$1, -248(%rbp)

mov		-248(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -8(%rbp)

.falseCondL29: 

jmp 		.beginWhileL22

.endWhileL21: 

mov		-24(%rbp), %rax
leave
ret

.globl	nthprimeArray
.type	nthprimeArray, @function 
nthprimeArray: 
enter   $(8 * 114), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

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

movq		$0, %r10
mov		%r10, -104(%rbp)

movq		$0, %r10
mov		%r10, -112(%rbp)

movq		$0, %r10
mov		%r10, -120(%rbp)

movq		$0, %r10
mov		%r10, -128(%rbp)

movq		$0, %r10
mov		%r10, -136(%rbp)

movq		$0, %r10
mov		%r10, -144(%rbp)

movq		$0, %r10
mov		%r10, -152(%rbp)

movq		$0, %r10
mov		%r10, -160(%rbp)

movq		$0, %r10
mov		%r10, -168(%rbp)

movq		$0, %r10
mov		%r10, -176(%rbp)

movq		$0, %r10
mov		%r10, -184(%rbp)

movq		$0, %r10
mov		%r10, -192(%rbp)

movq		$0, %r10
mov		%r10, -200(%rbp)

movq		$0, %r10
mov		%r10, -208(%rbp)

movq		$0, %r10
mov		%r10, -216(%rbp)

movq		$0, %r10
mov		%r10, -224(%rbp)

movq		$0, %r10
mov		%r10, -232(%rbp)

movq		$0, %r10
mov		%r10, -240(%rbp)

movq		$0, %r10
mov		%r10, -248(%rbp)

movq		$0, %r10
mov		%r10, -256(%rbp)

movq		$0, %r10
mov		%r10, -264(%rbp)

movq		$0, %r10
mov		%r10, -272(%rbp)

movq		$0, %r10
mov		%r10, -280(%rbp)

movq		$0, %r10
mov		%r10, -288(%rbp)

movq		$0, %r10
mov		%r10, -296(%rbp)

movq		$0, %r10
mov		%r10, -304(%rbp)

movq		$0, %r10
mov		%r10, -312(%rbp)

movq		$0, %r10
mov		%r10, -320(%rbp)

movq		$0, %r10
mov		%r10, -328(%rbp)

movq		$0, %r10
mov		%r10, -336(%rbp)

movq		$0, %r10
mov		%r10, -344(%rbp)

movq		$0, %r10
mov		%r10, -352(%rbp)

movq		$0, %r10
mov		%r10, -360(%rbp)

movq		$0, %r10
mov		%r10, -368(%rbp)

movq		$0, %r10
mov		%r10, -376(%rbp)

movq		$0, %r10
mov		%r10, -384(%rbp)

movq		$0, %r10
mov		%r10, -392(%rbp)

movq		$0, %r10
mov		%r10, -400(%rbp)

movq		$0, %r10
mov		%r10, -408(%rbp)

movq		$0, %r10
mov		%r10, -416(%rbp)

movq		$0, %r10
mov		%r10, -424(%rbp)

movq		$0, %r10
mov		%r10, -432(%rbp)

movq		$0, %r10
mov		%r10, -440(%rbp)

movq		$0, %r10
mov		%r10, -448(%rbp)

movq		$0, %r10
mov		%r10, -456(%rbp)

movq		$0, %r10
mov		%r10, -464(%rbp)

movq		$0, %r10
mov		%r10, -472(%rbp)

movq		$0, %r10
mov		%r10, -480(%rbp)

movq		$0, %r10
mov		%r10, -488(%rbp)

movq		$0, %r10
mov		%r10, -496(%rbp)

movq		$0, %r10
mov		%r10, -504(%rbp)

movq		$0, %r10
mov		%r10, -512(%rbp)

movq		$0, %r10
mov		%r10, -520(%rbp)

movq		$0, %r10
mov		%r10, -528(%rbp)

movq		$0, %r10
mov		%r10, -536(%rbp)

movq		$0, %r10
mov		%r10, -544(%rbp)

movq		$0, %r10
mov		%r10, -552(%rbp)

movq		$0, %r10
mov		%r10, -560(%rbp)

movq		$0, %r10
mov		%r10, -568(%rbp)

movq		$0, %r10
mov		%r10, -576(%rbp)

movq		$0, %r10
mov		%r10, -584(%rbp)

movq		$0, %r10
mov		%r10, -592(%rbp)

movq		$0, %r10
mov		%r10, -600(%rbp)

movq		$0, %r10
mov		%r10, -608(%rbp)

movq		$0, %r10
mov		%r10, -616(%rbp)

movq		$0, %r10
mov		%r10, -624(%rbp)

movq		$0, %r10
mov		%r10, -632(%rbp)

movq		$0, %r10
mov		%r10, -640(%rbp)

movq		$0, %r10
mov		%r10, -648(%rbp)

movq		$0, %r10
mov		%r10, -656(%rbp)

movq		$0, %r10
mov		%r10, -664(%rbp)

movq		$0, %r10
mov		%r10, -672(%rbp)

movq		$0, %r10
mov		%r10, -680(%rbp)

movq		$0, %r10
mov		%r10, -688(%rbp)

movq		$0, %r10
mov		%r10, -696(%rbp)

movq		$0, %r10
mov		%r10, -704(%rbp)

movq		$0, %r10
mov		%r10, -712(%rbp)

movq		$0, %r10
mov		%r10, -720(%rbp)

movq		$0, %r10
mov		%r10, -728(%rbp)

movq		$0, %r10
mov		%r10, -736(%rbp)

movq		$0, %r10
mov		%r10, -744(%rbp)

movq		$0, %r10
mov		%r10, -752(%rbp)

movq		$0, %r10
mov		%r10, -760(%rbp)

movq		$0, %r10
mov		%r10, -768(%rbp)

movq		$0, %r10
mov		%r10, -776(%rbp)

movq		$0, %r10
mov		%r10, -784(%rbp)

movq		$0, %r10
mov		%r10, -792(%rbp)

movq		$0, %r10
mov		%r10, -800(%rbp)

movq		$0, %r10
mov		%r10, -808(%rbp)

movq		$0, %r10
mov		%r10, -816(%rbp)

movq 	$0, -840(%rbp)

mov		-840(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL31: 

movq 	$100, -848(%rbp)

mov		-24(%rbp), %rax
cmp		-848(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -856(%rbp)

movq 	$1, -864(%rbp)

mov		-864(%rbp), %r10
cmp 		-856(%rbp), %r10

jne 		.endWhileL30

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprime
mov 	%rax, -872(%rbp) 

mov 		-872(%rbp), %r10 
movl		-24(%rbp), %edx 
cltq 
mov 		%r10, -824(%rbp, %rdx, 8) 

movq 	$1, -880(%rbp)

mov		-24(%rbp), %r10 
mov		-880(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -888(%rbp)

mov		-888(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL31

.endWhileL30: 

movq 	$1, -896(%rbp)

mov		-896(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -904(%rbp)

movl		-904(%rbp), %edx 
cltq 
mov 		-824(%rbp,%rdx,8) , %r11
mov 		%r11, -912(%rbp) 

mov		-912(%rbp), %rax
leave
ret

.globl	int2bin
.type	int2bin, @function 
int2bin: 
enter   $(8 * 42), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq		$0, %r10
mov		%r10, -48(%rbp)

movq 	$0, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL33: 

movq 	$1, -88(%rbp)

movq 	$1, -96(%rbp)

mov		-96(%rbp), %r10
cmp 		-88(%rbp), %r10

jne 		.endWhileL32

movq 	$1, -104(%rbp)

mov		-8(%rbp), %rax
cmp		-104(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -112(%rbp)

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.falseCondL34

movq 	$2, -128(%rbp)

mov		-8(%rbp), %rax 
cltd
idivq	-128(%rbp)
mov		%rdx, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$0, -144(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -48(%rbp)

.beginWhileL36: 

movq 	$1, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.endWhileL35

mov		-48(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -168(%rbp)

movq 	$1, -176(%rbp)

mov		-176(%rbp), %r10
cmp 		-168(%rbp), %r10

jne 		.falseCondL37

movq 	$10, -184(%rbp)

mov		-40(%rbp), %r10 
mov		-184(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -200(%rbp)

mov		-48(%rbp), %r10 
mov		-200(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.beginWhileL36

jmp 		.endIfL38

.falseCondL37: 

jmp 		.endWhileL35

.endIfL38: 

jmp 		.beginWhileL36

.endWhileL35: 

mov		-24(%rbp), %r10 
mov		-40(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$1, -224(%rbp)

mov		-32(%rbp), %r10 
mov		-224(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$2, -240(%rbp)

mov		-8(%rbp), %rax 
cltd
idivq	-240(%rbp) 
mov		%rax, -248(%rbp)

mov		-248(%rbp), %r10
mov		%r10, -8(%rbp)

jmp 		.beginWhileL33

jmp 		.endIfL39

.falseCondL34: 

jmp 		.endWhileL32

.endIfL39: 

movq 	$0, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -56(%rbp)

.beginWhileL41: 

movq 	$1, -264(%rbp)

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
cmp 		-264(%rbp), %r10

jne 		.endWhileL40

mov		-56(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -280(%rbp)

movq 	$1, -288(%rbp)

mov		-288(%rbp), %r10
cmp 		-280(%rbp), %r10

jne 		.falseCondL42

movq 	$10, -296(%rbp)

mov		-8(%rbp), %r10 
mov		-296(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -304(%rbp)

mov		-304(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -312(%rbp)

mov		-56(%rbp), %r10 
mov		-312(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -320(%rbp)

mov		-320(%rbp), %r10
mov		%r10, -56(%rbp)

jmp 		.beginWhileL41

jmp 		.endIfL43

.falseCondL42: 

jmp 		.endWhileL40

.endIfL43: 

jmp 		.beginWhileL41

.endWhileL40: 

jmp 		.beginWhileL33

.endWhileL32: 

mov		-24(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -328(%rbp)

mov		-328(%rbp), %rax
leave
ret

.globl	gcd
.type	gcd, @function 
gcd: 
enter   $(8 * 22), $0 

mov 		%rsi, -8(%rbp) 
mov 		%rdi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL45: 

mov		-16(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -72(%rbp)

mov		-32(%rbp), %rax
cmp		-72(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.endWhileL44

mov		-16(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rdx, -96(%rbp)

movq 	$0, -104(%rbp)

mov 		-96(%rbp), %rax
cmp		-104(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -112(%rbp)

mov		-8(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rdx, -120(%rbp)

movq 	$0, -128(%rbp)

mov 		-120(%rbp), %rax
cmp		-128(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -136(%rbp)

cmpq		$0, -112(%rbp)
je 		.L46
cmpq		$0, -136(%rbp)
je 		.L46
mov		$1, %r10
jmp		.L47
.L46:
mov		$0, %r10
.L47:
mov		%r10, -144(%rbp)

movq 	$1, -152(%rbp)

mov		-152(%rbp), %r10
cmp 		-144(%rbp), %r10

jne 		.falseCondL48

mov		-32(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL48: 

movq 	$1, -160(%rbp)

mov		-32(%rbp), %r10 
mov		-160(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -168(%rbp)

mov		-168(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL45

.endWhileL44: 

mov		-40(%rbp), %rax
leave
ret

.globl	potenciaR
.type	potenciaR, @function 
potenciaR: 
enter   $(8 * 18), $0 

mov 		%rdi, -8(%rbp) 
movss 		%xmm0, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

mov	.FL49(%rip), %r10
mov	%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL51: 

movq 	$1, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.endWhileL50

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -96(%rbp)

mov 		-32(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -104(%rbp)

cmpq		$0, -96(%rbp)
jne 		.L52
cmpq		$0, -104(%rbp)
je 		.L53
.L52: 
mov		$1, %r10
jmp 		.L54
.L53:
mov		$0, %r10
.L54:
mov		%r10, -112(%rbp)

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.falseCondL55

movss		-40(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -128(%rbp) 

mov		-128(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -136(%rbp)

mov		-32(%rbp), %r10 
mov		-136(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -144(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.endIfL56

.falseCondL55: 

jmp 		.endWhileL50

.endIfL56: 

jmp 		.beginWhileL51

.endWhileL50: 

movss		-40(%rbp), %xmm0
leave
ret

.globl	test
.type	test, @function 
test: 
enter   $(8 * 22), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

mov	.FL57(%rip), %r10
mov	%r10, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$3, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorial
mov 	%rax, -40(%rbp) 

movq 	$4, -48(%rbp)

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorial
mov 	%rax, -56(%rbp) 

mov		-40(%rbp), %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	gcd
mov 	%rax, -64(%rbp) 

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$3, -72(%rbp)

mov		-72(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorial
mov 	%rax, -80(%rbp) 

movq 	$4, -88(%rbp)

mov		-88(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorial
mov 	%rax, -96(%rbp) 

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	gcd
mov 	%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprimeArray
mov 	%rax, -112(%rbp) 

mov		-112(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$3, -120(%rbp)

mov		-120(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorial
mov 	%rax, -128(%rbp) 

movq 	$4, -136(%rbp)

mov		-136(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorial
mov 	%rax, -144(%rbp) 

mov		-128(%rbp), %r10
mov	 	%r10, %rdi

mov		-144(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	gcd
mov 	%rax, -152(%rbp) 

mov		-152(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprimeArray
mov 	%rax, -160(%rbp) 

movss		-16(%rbp), %xmm0

mov		-160(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	potenciaR
movss 	%xmm0, -168(%rbp) 

mov		-168(%rbp), %r10
mov		%r10, -16(%rbp)

movss		-16(%rbp), %xmm0

mov 		$1, %rax 

call 	print_float

mov 		$0, %rax
leave
ret

.globl	test1
.type	test1, @function 
test1: 
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

mov	.FL58(%rip), %r10
mov	%r10, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		$0, %rax 

call 	test

movss		-16(%rbp), %xmm0

mov 		$1, %rax 

call 	print_float

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 68), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

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

mov		$.SL59, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	init_input

mov		$.SL60, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -88(%rbp) 

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL62: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.endWhileL61

mov 		$0, %rax 

call 	get_int
mov 	%rax, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorial
mov 	%rax, -128(%rbp) 

mov		-128(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -144(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL62

.endWhileL61: 

mov		$.SL63, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL64, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -152(%rbp) 

mov		-152(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -160(%rbp)

mov		-160(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL66: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -168(%rbp)

movq 	$1, -176(%rbp)

mov		-176(%rbp), %r10
cmp 		-168(%rbp), %r10

jne 		.endWhileL65

mov 		$0, %rax 

call 	get_float
movss 	%xmm0, -184(%rbp) 

mov		-184(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-40(%rbp), %xmm0

mov 		$1, %rax 

call 	factorialF
movss 	%xmm0, -192(%rbp) 

mov		-192(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-40(%rbp), %xmm0

mov 		$1, %rax 

call 	print_float

movq 	$1, -200(%rbp)

mov		-200(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL66

.endWhileL65: 

mov		$.SL67, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL68, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -216(%rbp) 

mov		-216(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL70: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -232(%rbp)

movq 	$1, -240(%rbp)

mov		-240(%rbp), %r10
cmp 		-232(%rbp), %r10

jne 		.endWhileL69

mov 		$0, %rax 

call 	get_int
mov 	%rax, -248(%rbp) 

mov		-248(%rbp), %r10
mov		%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorialArray
mov 	%rax, -256(%rbp) 

mov		-256(%rbp), %r10
mov		%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -264(%rbp)

mov		-264(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -272(%rbp)

mov		-272(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL70

.endWhileL69: 

mov		$.SL71, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL72, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -280(%rbp) 

mov		-280(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -288(%rbp)

mov		-288(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL74: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -296(%rbp)

movq 	$1, -304(%rbp)

mov		-304(%rbp), %r10
cmp 		-296(%rbp), %r10

jne 		.endWhileL73

mov 		$0, %rax 

call 	get_int
mov 	%rax, -312(%rbp) 

mov		-312(%rbp), %r10
mov		%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprime
mov 	%rax, -320(%rbp) 

mov		-320(%rbp), %r10
mov		%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -328(%rbp)

mov		-328(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -336(%rbp)

mov		-336(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL74

.endWhileL73: 

mov		$.SL75, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL76, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -344(%rbp) 

mov		-344(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -352(%rbp)

mov		-352(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL78: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -360(%rbp)

movq 	$1, -368(%rbp)

mov		-368(%rbp), %r10
cmp 		-360(%rbp), %r10

jne 		.endWhileL77

mov 		$0, %rax 

call 	get_int
mov 	%rax, -376(%rbp) 

mov		-376(%rbp), %r10
mov		%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprimeArray
mov 	%rax, -384(%rbp) 

mov		-384(%rbp), %r10
mov		%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -392(%rbp)

mov		-392(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -400(%rbp)

mov		-400(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL78

.endWhileL77: 

mov		$.SL79, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL80, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -408(%rbp) 

mov		-408(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -416(%rbp)

mov		-416(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL82: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -424(%rbp)

movq 	$1, -432(%rbp)

mov		-432(%rbp), %r10
cmp 		-424(%rbp), %r10

jne 		.endWhileL81

mov 		$0, %rax 

call 	get_int
mov 	%rax, -440(%rbp) 

mov		-440(%rbp), %r10
mov		%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	int2bin
mov 	%rax, -448(%rbp) 

mov		-448(%rbp), %r10
mov		%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -456(%rbp)

mov		-456(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -464(%rbp)

mov		-464(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL82

.endWhileL81: 

mov		$.SL83, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL84, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -472(%rbp) 

mov		-472(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -480(%rbp)

mov		-480(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL86: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -488(%rbp)

movq 	$1, -496(%rbp)

mov		-496(%rbp), %r10
cmp 		-488(%rbp), %r10

jne 		.endWhileL85

mov 		$0, %rax 

call 	get_int
mov 	%rax, -504(%rbp) 

mov 		$0, %rax 

call 	get_int
mov 	%rax, -512(%rbp) 

mov		-504(%rbp), %r10
mov	 	%r10, %rdi

mov		-512(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	gcd
mov 	%rax, -520(%rbp) 

mov		-520(%rbp), %r10
mov		%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -528(%rbp)

mov		-528(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -536(%rbp)

mov		-536(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL86

.endWhileL85: 

mov		$.SL87, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL88, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	test

mov		$.SL89, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL90, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	test1

mov		$.SL91, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	close_input

mov 		$0, %rax
leave
ret

