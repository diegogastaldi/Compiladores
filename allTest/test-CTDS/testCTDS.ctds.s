.SL90: 
		.string "---------------------------------------------------------" 

.SL89: 
		.string "test1----------------------------------" 

.SL88: 
		.string "---------------------------------------------------------" 

.SL87: 
		.string "test----------------------------------" 

.SL86: 
		.string "---------------------------------------------------------" 

.SL83: 
		.string "GCD Enteros----------------------------------" 

.SL82: 
		.string "---------------------------------------------------------" 

.SL79: 
		.string "Int2Bin Enteros----------------------------------" 

.SL78: 
		.string "---------------------------------------------------------" 

.SL75: 
		.string "Nthprime Array Enteros----------------------------------" 

.SL74: 
		.string "---------------------------------------------------------" 

.SL71: 
		.string "Nthprime Enteros----------------------------------" 

.SL70: 
		.string "---------------------------------------------------------" 

.SL67: 
		.string "Factorial Array Enteros----------------------------------" 

.SL66: 
		.string "---------------------------------------------------------" 

.SL63: 
		.string "Factorial Reales----------------------------------" 

.SL62: 
		.string "---------------------------------------------------------" 

.SL59: 
		.string "Factorial Enteros----------------------------------" 

.SL58: 
		.string "input" 

.FL57: 
		.float 2.0 

.FL56: 
		.float 2.0 

.FL48: 
		.float 1.0 

.FL13: 
		.float 1.0 

.FL10: 
		.float 1.0 

.FL9: 
		.float 0.0 

.FL8: 
		.float -1.0 

.FL6: 
		.float 15.0 

.text

.globl	factorial
.type	factorial, @function 
factorial: 
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

jne 		.falseCondL0

movq 	$-1, -72(%rbp)

mov		-72(%rbp), %rax
leave
ret

.falseCondL0: 

movq 	$0, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL2: 

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.endWhileL1

movq 	$1, -104(%rbp)

mov		-32(%rbp), %r10 
mov		-104(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-40(%rbp), %r10 
mov		-32(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.beginWhileL2

.endWhileL1: 

mov		-40(%rbp), %rax
leave
ret

.globl	factorialFor
.type	factorialFor, @function 
factorialFor: 
enter   $(8 * 12), $0 

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

movq 	$-1, -72(%rbp)

mov		-72(%rbp), %rax
leave
ret

.falseCondL3: 

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-96(%rbp), %r10 
mov		-104(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -104(%rbp)

jmp 		.endForL4

.beginForL5: 

mov		-40(%rbp), %r10 
mov		-32(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -40(%rbp)

.endForL4: 

mov		-104(%rbp), %r10 
mov		-96(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-104(%rbp), %r10
cmp 		-8(%rbp), %r10

jl 		.beginForL5

mov		-96(%rbp), %r10 
mov		-104(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	factorialF
.type	factorialF, @function 
factorialF: 
enter   $(8 * 16), $0 

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
mov	%r10, -72(%rbp)

movss		-72(%rbp), %xmm0
leave
ret

.falseCondL7: 

mov	.FL9(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -32(%rbp)

mov	.FL10(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL12: 

movss		-8(%rbp), %xmm0 
ucomiss		-32(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -96(%rbp) 

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.endWhileL11

mov	.FL13(%rip), %r10
mov	%r10, -104(%rbp)

movss		-32(%rbp), %xmm0 
addss		-104(%rbp), %xmm0 
movss		%xmm0, -112(%rbp) 

mov		-112(%rbp), %r10
mov		%r10, -32(%rbp)

movss		-40(%rbp), %xmm0 
mulss		-32(%rbp), %xmm0 
movss		%xmm0, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.beginWhileL12

.endWhileL11: 

movss		-40(%rbp), %xmm0
leave
ret

.globl	factorialArray
.type	factorialArray, @function 
factorialArray: 
enter   $(8 * 38), $0 

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

.beginWhileL15: 

mov		-32(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -200(%rbp)

movq 	$1, -208(%rbp)

mov		-208(%rbp), %r10
cmp 		-200(%rbp), %r10

jne 		.endWhileL14

movq 	$0, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -160(%rbp)

movq 	$1, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -168(%rbp)

.beginWhileL17: 

mov		-160(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -224(%rbp)

movq 	$1, -232(%rbp)

mov		-232(%rbp), %r10
cmp 		-224(%rbp), %r10

jne 		.endWhileL16

movq 	$1, -232(%rbp)

mov		-160(%rbp), %r10 
mov		-232(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -240(%rbp)

mov		-240(%rbp), %r10
mov		%r10, -160(%rbp)

mov		-168(%rbp), %r10 
mov		-160(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -248(%rbp)

mov		-248(%rbp), %r10
mov		%r10, -168(%rbp)

jmp 		.beginWhileL17

.endWhileL16: 

mov 		-168(%rbp), %r10 
movl		-32(%rbp), %edx 
cltq 
mov 		%r10, -152(%rbp, %rdx, 8) 

movq 	$1, -256(%rbp)

mov		-32(%rbp), %r10 
mov		-256(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -264(%rbp)

mov		-264(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL15

.endWhileL14: 

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -280(%rbp)

mov		-8(%rbp), %rax
cmp		-280(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -288(%rbp)

movq 	$1, -296(%rbp)

mov		-296(%rbp), %r10
cmp 		-288(%rbp), %r10

jne 		.falseCondL18

movq 	$-1, -296(%rbp)

mov		-296(%rbp), %rax
leave
ret

jmp 		.endIfL19

.falseCondL18: 

movl		-8(%rbp), %edx 
cltq 
mov 		-152(%rbp,%rdx,8) , %r11
mov 		%r11, -304(%rbp) 

mov		-304(%rbp), %rax
leave
ret

.endIfL19: 

.globl	nthprime
.type	nthprime, @function 
nthprime: 
enter   $(8 * 28), $0 

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

.beginWhileL21: 

movq 	$0, -88(%rbp)

mov		-8(%rbp), %rax
cmp		-88(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.endWhileL20

movq 	$0, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -112(%rbp)

mov		-24(%rbp), %r10 
mov		-112(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL23: 

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -128(%rbp) 

mov		-32(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -136(%rbp)

cmpq		$0, -128(%rbp)
je 		.L24
cmpq		$0, -136(%rbp)
je 		.L24
mov		$1, %r10
jmp		.L25
.L24:
mov		$0, %r10
.L25:
mov		%r10, -144(%rbp)

movq 	$1, -152(%rbp)

mov		-152(%rbp), %r10
cmp 		-144(%rbp), %r10

jne 		.endWhileL22

mov		-24(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rdx, -152(%rbp)

movq 	$0, -160(%rbp)

mov 		-152(%rbp), %rax
cmp		-160(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -168(%rbp)

movq 	$1, -176(%rbp)

mov		-176(%rbp), %r10
cmp 		-168(%rbp), %r10

jne 		.falseCondL26

movq 	$1, -176(%rbp)

mov		-176(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.endIfL27

.falseCondL26: 

movq 	$1, -184(%rbp)

mov		-32(%rbp), %r10 
mov		-184(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL27: 

jmp 		.beginWhileL23

.endWhileL22: 

movq 	$2, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -32(%rbp)

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -208(%rbp) 

movq 	$1, -216(%rbp)

mov		-216(%rbp), %r10
cmp 		-208(%rbp), %r10

jne 		.falseCondL28

movq 	$1, -216(%rbp)

mov		-216(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -8(%rbp)

.falseCondL28: 

jmp 		.beginWhileL21

.endWhileL20: 

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

.beginWhileL30: 

movq 	$100, -848(%rbp)

mov		-24(%rbp), %rax
cmp		-848(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -856(%rbp)

movq 	$1, -864(%rbp)

mov		-864(%rbp), %r10
cmp 		-856(%rbp), %r10

jne 		.endWhileL29

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprime
mov 	%rax, -864(%rbp) 

mov 		-864(%rbp), %r10 
movl		-24(%rbp), %edx 
cltq 
mov 		%r10, -824(%rbp, %rdx, 8) 

movq 	$1, -872(%rbp)

mov		-24(%rbp), %r10 
mov		-872(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -880(%rbp)

mov		-880(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL30

.endWhileL29: 

movq 	$1, -888(%rbp)

mov		-888(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -896(%rbp)

movl		-896(%rbp), %edx 
cltq 
mov 		-824(%rbp,%rdx,8) , %r11
mov 		%r11, -904(%rbp) 

mov		-904(%rbp), %rax
leave
ret

.globl	int2bin
.type	int2bin, @function 
int2bin: 
enter   $(8 * 36), $0 

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

.beginWhileL32: 

movq 	$1, -88(%rbp)

movq 	$1, -96(%rbp)

mov		-96(%rbp), %r10
cmp 		-88(%rbp), %r10

jne 		.endWhileL31

movq 	$0, -96(%rbp)

mov		-8(%rbp), %rax
cmp		-96(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.falseCondL33

movq 	$2, -112(%rbp)

mov		-8(%rbp), %rax 
cltd
idivq	-112(%rbp)
mov		%rdx, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$0, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -48(%rbp)

.beginWhileL35: 

movq 	$1, -136(%rbp)

movq 	$1, -144(%rbp)

mov		-144(%rbp), %r10
cmp 		-136(%rbp), %r10

jne 		.endWhileL34

mov		-48(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -144(%rbp)

movq 	$1, -152(%rbp)

mov		-152(%rbp), %r10
cmp 		-144(%rbp), %r10

jne 		.falseCondL36

movq 	$10, -152(%rbp)

mov		-40(%rbp), %r10 
mov		-152(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -160(%rbp)

mov		-160(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -168(%rbp)

mov		-48(%rbp), %r10 
mov		-168(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -176(%rbp)

mov		-176(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.beginWhileL35

jmp 		.endIfL37

.falseCondL36: 

jmp 		.endWhileL34

.endIfL37: 

jmp 		.beginWhileL35

.endWhileL34: 

mov		-24(%rbp), %r10 
mov		-40(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -184(%rbp)

mov		-184(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$1, -192(%rbp)

mov		-32(%rbp), %r10 
mov		-192(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$2, -208(%rbp)

mov		-8(%rbp), %rax 
cltd
idivq	-208(%rbp) 
mov		%rax, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -8(%rbp)

jmp 		.beginWhileL32

jmp 		.endIfL38

.falseCondL33: 

jmp 		.endWhileL31

.endIfL38: 

movq 	$0, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -56(%rbp)

.beginWhileL40: 

movq 	$1, -232(%rbp)

movq 	$1, -240(%rbp)

mov		-240(%rbp), %r10
cmp 		-232(%rbp), %r10

jne 		.endWhileL39

mov		-56(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -240(%rbp)

movq 	$1, -248(%rbp)

mov		-248(%rbp), %r10
cmp 		-240(%rbp), %r10

jne 		.falseCondL41

movq 	$10, -248(%rbp)

mov		-8(%rbp), %r10 
mov		-248(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -264(%rbp)

mov		-56(%rbp), %r10 
mov		-264(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -272(%rbp)

mov		-272(%rbp), %r10
mov		%r10, -56(%rbp)

jmp 		.beginWhileL40

jmp 		.endIfL42

.falseCondL41: 

jmp 		.endWhileL39

.endIfL42: 

jmp 		.beginWhileL40

.endWhileL39: 

jmp 		.beginWhileL32

.endWhileL31: 

mov		-24(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -280(%rbp)

mov		-280(%rbp), %rax
leave
ret

.globl	gcd
.type	gcd, @function 
gcd: 
enter   $(8 * 20), $0 

mov 		%rdi, -16(%rbp) 
mov 		%rsi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL44: 

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

jne 		.endWhileL43

mov		-16(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rdx, -88(%rbp)

movq 	$0, -96(%rbp)

mov 		-88(%rbp), %rax
cmp		-96(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -104(%rbp)

mov		-8(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rdx, -112(%rbp)

movq 	$0, -120(%rbp)

mov 		-112(%rbp), %rax
cmp		-120(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -128(%rbp)

cmpq		$0, -104(%rbp)
je 		.L45
cmpq		$0, -128(%rbp)
je 		.L45
mov		$1, %r10
jmp		.L46
.L45:
mov		$0, %r10
.L46:
mov		%r10, -136(%rbp)

movq 	$1, -144(%rbp)

mov		-144(%rbp), %r10
cmp 		-136(%rbp), %r10

jne 		.falseCondL47

mov		-32(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL47: 

movq 	$1, -144(%rbp)

mov		-32(%rbp), %r10 
mov		-144(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL44

.endWhileL43: 

mov		-40(%rbp), %rax
leave
ret

.globl	potenciaR
.type	potenciaR, @function 
potenciaR: 
enter   $(8 * 16), $0 

movss 		%xmm0, -16(%rbp) 
mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

mov	.FL48(%rip), %r10
mov	%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL50: 

movq 	$1, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.endWhileL49

mov		-32(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -88(%rbp)

mov 		-32(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

cmpq		$0, -88(%rbp)
jne 		.L51
cmpq		$0, -96(%rbp)
je 		.L52
.L51: 
mov		$1, %r10
jmp 		.L53
.L52:
mov		$0, %r10
.L53:
mov		%r10, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.falseCondL54

movss		-40(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -112(%rbp) 

mov		-112(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -120(%rbp)

mov		-32(%rbp), %r10 
mov		-120(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.endIfL55

.falseCondL54: 

jmp 		.endWhileL49

.endIfL55: 

jmp 		.beginWhileL50

.endWhileL49: 

movss		-40(%rbp), %xmm0
leave
ret

.globl	test
.type	test, @function 
test: 
enter   $(8 * 22), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

mov	.FL56(%rip), %r10
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

mov	.FL57(%rip), %r10
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
enter   $(8 * 54), $0 


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

mov		$.SL58, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	init_input

mov		$.SL59, %r10
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

.beginWhileL61: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.endWhileL60

mov 		$0, %rax 

call 	get_int
mov 	%rax, -112(%rbp) 

mov		-112(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorial
mov 	%rax, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL61

.endWhileL60: 

mov		$.SL62, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL63, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -136(%rbp) 

mov		-136(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -144(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL65: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.endWhileL64

mov 		$0, %rax 

call 	get_float
movss 	%xmm0, -160(%rbp) 

mov		-160(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-40(%rbp), %xmm0

mov 		$1, %rax 

call 	factorialF
movss 	%xmm0, -168(%rbp) 

mov		-168(%rbp), %r10
mov		%r10, -40(%rbp)

movss		-40(%rbp), %xmm0

mov 		$1, %rax 

call 	print_float

movq 	$1, -176(%rbp)

mov		-176(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -184(%rbp)

mov		-184(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL65

.endWhileL64: 

mov		$.SL66, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL67, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -184(%rbp) 

mov		-184(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL69: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -200(%rbp)

movq 	$1, -208(%rbp)

mov		-208(%rbp), %r10
cmp 		-200(%rbp), %r10

jne 		.endWhileL68

mov 		$0, %rax 

call 	get_int
mov 	%rax, -208(%rbp) 

mov		-208(%rbp), %r10
mov		%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorialArray
mov 	%rax, -216(%rbp) 

mov		-216(%rbp), %r10
mov		%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -224(%rbp)

mov		-224(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL69

.endWhileL68: 

mov		$.SL70, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL71, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -232(%rbp) 

mov		-232(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -240(%rbp)

mov		-240(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL73: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -248(%rbp)

movq 	$1, -256(%rbp)

mov		-256(%rbp), %r10
cmp 		-248(%rbp), %r10

jne 		.endWhileL72

mov 		$0, %rax 

call 	get_int
mov 	%rax, -256(%rbp) 

mov		-256(%rbp), %r10
mov		%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprime
mov 	%rax, -264(%rbp) 

mov		-264(%rbp), %r10
mov		%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -280(%rbp)

mov		-280(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL73

.endWhileL72: 

mov		$.SL74, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL75, %r10
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

.beginWhileL77: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -296(%rbp)

movq 	$1, -304(%rbp)

mov		-304(%rbp), %r10
cmp 		-296(%rbp), %r10

jne 		.endWhileL76

mov 		$0, %rax 

call 	get_int
mov 	%rax, -304(%rbp) 

mov		-304(%rbp), %r10
mov		%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprimeArray
mov 	%rax, -312(%rbp) 

mov		-312(%rbp), %r10
mov		%r10, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -320(%rbp)

mov		-320(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -328(%rbp)

mov		-328(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL77

.endWhileL76: 

mov		$.SL78, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL79, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -328(%rbp) 

mov		-328(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -336(%rbp)

mov		-336(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL81: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -344(%rbp)

movq 	$1, -352(%rbp)

mov		-352(%rbp), %r10
cmp 		-344(%rbp), %r10

jne 		.endWhileL80

mov 		$0, %rax 

call 	get_int
mov 	%rax, -352(%rbp) 

mov		-352(%rbp), %r10
mov		%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	int2bin
mov 	%rax, -360(%rbp) 

mov		-360(%rbp), %r10
mov		%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -368(%rbp)

mov		-368(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -376(%rbp)

mov		-376(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL81

.endWhileL80: 

mov		$.SL82, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL83, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	get_int
mov 	%rax, -376(%rbp) 

mov		-376(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -384(%rbp)

mov		-384(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL85: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -392(%rbp)

movq 	$1, -400(%rbp)

mov		-400(%rbp), %r10
cmp 		-392(%rbp), %r10

jne 		.endWhileL84

mov 		$0, %rax 

call 	get_int
mov 	%rax, -400(%rbp) 

mov 		$0, %rax 

call 	get_int
mov 	%rax, -408(%rbp) 

mov		-400(%rbp), %r10
mov	 	%r10, %rdi

mov		-408(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	gcd
mov 	%rax, -416(%rbp) 

mov		-416(%rbp), %r10
mov		%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -424(%rbp)

mov		-424(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -432(%rbp)

mov		-432(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL85

.endWhileL84: 

mov		$.SL86, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL87, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	test

mov		$.SL88, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov		$.SL89, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	test1

mov		$.SL90, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_string

mov 		$0, %rax 

call 	close_input

mov 		$0, %rax
leave
ret

