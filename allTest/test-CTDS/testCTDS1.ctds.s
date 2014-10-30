.FL36: 
		.float 44.0 

.FL35: 
		.float 33.0 

.FL34: 
		.float 22.0 

.FL33: 
		.float 11.0 

.FL32: 
		.float 8.0 

.FL31: 
		.float 7.0 

.FL30: 
		.float 6.0 

.FL29: 
		.float 5.0 

.FL28: 
		.float 4.0 

.FL27: 
		.float 3.0 

.FL26: 
		.float 2.0 

.FL25: 
		.float 1.0 

.SL0: 
		.string "input1" 

.text

.comm global, 8

.globl	ochoparametrosInt
.type	ochoparametrosInt, @function 
ochoparametrosInt: 
enter   $(8 * 29), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 
mov 		%rdx, -24(%rbp) 
mov 		%rcx, -32(%rbp) 
mov 		%r8, -40(%rbp) 
mov 		%r9, -48(%rbp) 
mov 		8(%rbp), %r10
mov 		%r10, -56(%rbp) 
mov 		16(%rbp), %r10
mov 		%r10, -64(%rbp) 

movq		$0, %r10
mov		%r10, -72(%rbp)

mov		-64(%rbp), %r10 
mov		-56(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %r10 
mov		-48(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -160(%rbp)

mov		-160(%rbp), %r10 
mov		-40(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -168(%rbp)

mov		-168(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -176(%rbp)

mov		-176(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -184(%rbp)

mov		-184(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -192(%rbp)

mov		-192(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -200(%rbp)

mov 		global(%rip), %r10 
mov		%r10, -208(%rbp) 

mov		-200(%rbp), %r10 
mov		-208(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$1000, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, global(%rip)

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

mov 		$0, %rax
leave
ret

.globl	ochoparametrosFloat
.type	ochoparametrosFloat, @function 
ochoparametrosFloat: 
enter   $(8 * 26), $0 
movss 		%xmm0, -8(%rbp) 
movss 		%xmm1, -16(%rbp) 
movss 		%xmm2, -24(%rbp) 
movss 		%xmm3, -32(%rbp) 
movss 		%xmm4, -40(%rbp) 
movss 		%xmm5, -48(%rbp) 
movss 		%xmm6, -56(%rbp) 
movss 		%xmm7, -64(%rbp) 

movq		$0, %r10
mov		%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
addss		-56(%rbp), %xmm0 
movss		%xmm0, -152(%rbp) 

movss		-152(%rbp), %xmm0 
addss		-48(%rbp), %xmm0 
movss		%xmm0, -160(%rbp) 

movss		-160(%rbp), %xmm0 
addss		-40(%rbp), %xmm0 
movss		%xmm0, -168(%rbp) 

movss		-168(%rbp), %xmm0 
addss		-32(%rbp), %xmm0 
movss		%xmm0, -176(%rbp) 

movss		-176(%rbp), %xmm0 
addss		-24(%rbp), %xmm0 
movss		%xmm0, -184(%rbp) 

movss		-184(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -192(%rbp) 

movss		-192(%rbp), %xmm0 
addss		-8(%rbp), %xmm0 
movss		%xmm0, -200(%rbp) 

mov		-200(%rbp), %r10
mov		%r10, -80(%rbp)

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	print_float

mov 		$0, %rax
leave
ret

.globl	ochoparametrosMixtos
.type	ochoparametrosMixtos, @function 
ochoparametrosMixtos: 
enter   $(8 * 30), $0 
mov 		%rdi, -8(%rbp) 
movss 		%xmm0, -16(%rbp) 
mov 		%rsi, -24(%rbp) 
movss 		%xmm1, -32(%rbp) 
mov 		%rdx, -40(%rbp) 
movss 		%xmm2, -48(%rbp) 
mov 		%rcx, -56(%rbp) 
movss 		%xmm3, -64(%rbp) 

movq		$0, %r10
mov		%r10, -72(%rbp)

movq		$0, %r10
mov		%r10, -80(%rbp)

mov		-64(%rbp), %r10 
mov		-48(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -160(%rbp)

mov		-160(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -168(%rbp)

mov		-168(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -176(%rbp)

mov 		global(%rip), %r10 
mov		%r10, -184(%rbp) 

mov		-176(%rbp), %r10 
mov		-184(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -80(%rbp)

movss		-56(%rbp), %xmm0 
addss		-40(%rbp), %xmm0 
movss		%xmm0, -200(%rbp) 

movss		-200(%rbp), %xmm0 
addss		-24(%rbp), %xmm0 
movss		%xmm0, -208(%rbp) 

movss		-208(%rbp), %xmm0 
addss		-8(%rbp), %xmm0 
movss		%xmm0, -216(%rbp) 

mov		-216(%rbp), %r10
mov		%r10, -88(%rbp)

movq 	$10000, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, global(%rip)

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	print_float

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 130), $0 

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

mov		$0, %r10
mov		%r10, global(%rip)

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	init_input

movq 	$100, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, global(%rip)

movq 	$0, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$11, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$1, -216(%rbp)

movq 	$1, -224(%rbp)

jmp 		.endForL1

.beginForL2: 

movq 	$1, -232(%rbp)

movq 	$1, -240(%rbp)

jmp 		.endForL3

.beginForL4: 

movq 	$1, -248(%rbp)

movq 	$1, -256(%rbp)

jmp 		.endForL5

.beginForL6: 

movq 	$1, -264(%rbp)

mov		-48(%rbp), %r10 
mov		-264(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -272(%rbp)

mov		-272(%rbp), %r10
mov		%r10, -48(%rbp)

mov		-256(%rbp), %r10 
mov		-248(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -24(%rbp)

.endForL5: 

mov		-256(%rbp), %r10
cmp 		-16(%rbp), %r10

jle 		.beginForL6

mov		-240(%rbp), %r10 
mov		-232(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -240(%rbp)

mov		-240(%rbp), %r10
mov		%r10, -32(%rbp)

.endForL3: 

mov		-240(%rbp), %r10
cmp 		-16(%rbp), %r10

jle 		.beginForL4

mov		-224(%rbp), %r10 
mov		-216(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -40(%rbp)

.endForL1: 

mov		-224(%rbp), %r10
cmp 		-16(%rbp), %r10

jle 		.beginForL2

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$0, -288(%rbp)

mov		-288(%rbp), %r10
mov		%r10, -56(%rbp)

movq 	$0, -296(%rbp)

mov		-296(%rbp), %r10
mov		%r10, -72(%rbp)

movq 	$0, -304(%rbp)

mov		-304(%rbp), %r10
mov		%r10, -64(%rbp)

movq 	$1, -312(%rbp)

movq 	$1, -320(%rbp)

jmp 		.endForL7

.beginForL8: 

movq 	$1, -328(%rbp)

movq 	$1, -336(%rbp)

jmp 		.endForL9

.beginForL10: 

jmp 		.endForL9

movq 	$1, -344(%rbp)

movq 	$1, -352(%rbp)

jmp 		.endForL11

.beginForL12: 

movq 	$1, -360(%rbp)

mov		-64(%rbp), %r10 
mov		-360(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -368(%rbp)

mov		-368(%rbp), %r10
mov		%r10, -64(%rbp)

mov		-352(%rbp), %r10 
mov		-344(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -352(%rbp)

mov		-352(%rbp), %r10
mov		%r10, -24(%rbp)

.endForL11: 

mov		-352(%rbp), %r10
cmp 		-16(%rbp), %r10

jle 		.beginForL12

movq 	$1, -376(%rbp)

mov		-72(%rbp), %r10 
mov		-376(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -384(%rbp)

mov		-384(%rbp), %r10
mov		%r10, -72(%rbp)

mov		-336(%rbp), %r10 
mov		-328(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -336(%rbp)

mov		-336(%rbp), %r10
mov		%r10, -32(%rbp)

.endForL9: 

mov		-336(%rbp), %r10
cmp 		-16(%rbp), %r10

jle 		.beginForL10

movq 	$1, -392(%rbp)

mov		-56(%rbp), %r10 
mov		-392(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -400(%rbp)

mov		-400(%rbp), %r10
mov		%r10, -56(%rbp)

mov		-320(%rbp), %r10 
mov		-312(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -320(%rbp)

mov		-320(%rbp), %r10
mov		%r10, -40(%rbp)

.endForL7: 

mov		-320(%rbp), %r10
cmp 		-16(%rbp), %r10

jle 		.beginForL8

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

mov		-72(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -432(%rbp)

mov		-432(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$1, -440(%rbp)

mov		-440(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$1, -448(%rbp)

mov		-448(%rbp), %r10
mov		%r10, -88(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -104(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -120(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -112(%rbp)

movq 	$10, -456(%rbp)

mov		-456(%rbp), %r10
mov		%r10, -16(%rbp)

.beginWhileL14: 

mov		-104(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -464(%rbp)

movq 	$1, -472(%rbp)

mov		-472(%rbp), %r10
cmp 		-464(%rbp), %r10

jne 		.endWhileL13

.beginWhileL16: 

mov		-120(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -480(%rbp)

movq 	$1, -488(%rbp)

mov		-488(%rbp), %r10
cmp 		-480(%rbp), %r10

jne 		.endWhileL15

.beginWhileL18: 

mov		-112(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -496(%rbp)

movq 	$1, -504(%rbp)

mov		-504(%rbp), %r10
cmp 		-496(%rbp), %r10

jne 		.endWhileL17

movq 	$1, -512(%rbp)

mov		-88(%rbp), %r10 
mov		-512(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -520(%rbp)

mov		-520(%rbp), %r10
mov		%r10, -88(%rbp)

movq 	$1, -528(%rbp)

mov		-112(%rbp), %r10 
mov		-528(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -536(%rbp)

mov		-536(%rbp), %r10
mov		%r10, -112(%rbp)

jmp 		.beginWhileL18

.endWhileL17: 

movq 	$1, -544(%rbp)

mov		-96(%rbp), %r10 
mov		-544(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -552(%rbp)

mov		-552(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$1, -560(%rbp)

mov		-120(%rbp), %r10 
mov		-560(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -568(%rbp)

mov		-568(%rbp), %r10
mov		%r10, -120(%rbp)

jmp 		.beginWhileL16

.endWhileL15: 

movq 	$1, -576(%rbp)

mov		-80(%rbp), %r10 
mov		-576(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -584(%rbp)

mov		-584(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$1, -592(%rbp)

mov		-104(%rbp), %r10 
mov		-592(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -600(%rbp)

mov		-600(%rbp), %r10
mov		%r10, -104(%rbp)

movq 	$100, -608(%rbp)

mov		-608(%rbp), %r10
mov		%r10, -128(%rbp)

movq 	$100, -616(%rbp)

mov		-616(%rbp), %r10
mov		%r10, -144(%rbp)

movq 	$100, -624(%rbp)

mov		-624(%rbp), %r10
mov		%r10, -136(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -152(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -168(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -160(%rbp)

movq 	$1000, -632(%rbp)

mov		-632(%rbp), %r10
mov		%r10, -176(%rbp)

.beginWhileL20: 

mov		-152(%rbp), %rax
cmp		-176(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -640(%rbp)

movq 	$1, -648(%rbp)

mov		-648(%rbp), %r10
cmp 		-640(%rbp), %r10

jne 		.endWhileL19

.beginWhileL22: 

mov		-168(%rbp), %rax
cmp		-176(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -656(%rbp)

movq 	$1, -664(%rbp)

mov		-664(%rbp), %r10
cmp 		-656(%rbp), %r10

jne 		.endWhileL21

jmp 		.endWhileL21

.beginWhileL24: 

mov		-160(%rbp), %rax
cmp		-176(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -672(%rbp)

movq 	$1, -680(%rbp)

mov		-680(%rbp), %r10
cmp 		-672(%rbp), %r10

jne 		.endWhileL23

movq 	$1, -688(%rbp)

mov		-136(%rbp), %r10 
mov		-688(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -696(%rbp)

mov		-696(%rbp), %r10
mov		%r10, -136(%rbp)

movq 	$1, -704(%rbp)

mov		-160(%rbp), %r10 
mov		-704(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -712(%rbp)

mov		-712(%rbp), %r10
mov		%r10, -160(%rbp)

jmp 		.beginWhileL24

.endWhileL23: 

movq 	$1, -720(%rbp)

mov		-144(%rbp), %r10 
mov		-720(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -728(%rbp)

mov		-728(%rbp), %r10
mov		%r10, -144(%rbp)

movq 	$1, -736(%rbp)

mov		-168(%rbp), %r10 
mov		-736(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -744(%rbp)

mov		-744(%rbp), %r10
mov		%r10, -168(%rbp)

jmp 		.beginWhileL22

.endWhileL21: 

movq 	$100, -752(%rbp)

mov		-128(%rbp), %r10 
mov		-752(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -760(%rbp)

mov		-760(%rbp), %r10
mov		%r10, -128(%rbp)

movq 	$100, -768(%rbp)

mov		-152(%rbp), %r10 
mov		-768(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -776(%rbp)

mov		-776(%rbp), %r10
mov		%r10, -152(%rbp)

jmp 		.beginWhileL20

jmp 		.beginWhileL20

.endWhileL19: 

mov		-128(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

mov		-144(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

mov		-136(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

jmp 		.beginWhileL14

.endWhileL13: 

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

mov		-96(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

mov		-88(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$1, -832(%rbp)

movq 	$2, -840(%rbp)

movq 	$3, -848(%rbp)

movq 	$4, -856(%rbp)

movq 	$5, -864(%rbp)

movq 	$6, -872(%rbp)

movq 	$7, -880(%rbp)

movq 	$8, -896(%rbp)

mov		-832(%rbp), %r10
mov	 	%r10, %rdi

mov		-840(%rbp), %r10
mov	 	%r10, %rsi

mov		-848(%rbp), %r10
mov	 	%r10, %rdx

mov		-856(%rbp), %r10
mov	 	%r10, %rcx

mov		-864(%rbp), %r10
mov	 	%r10, %r8

mov		-872(%rbp), %r10
mov	 	%r10, %r9

mov		-880(%rbp), %r10
mov	 	%r10, -888(%rbp) 

mov		-896(%rbp), %r10
mov	 	%r10, -904(%rbp) 

mov 		$0, %rax 

call 	ochoparametrosInt

mov	.FL25(%rip), %r10
mov	%r10, -912(%rbp)

mov	.FL26(%rip), %r10
mov	%r10, -920(%rbp)

mov	.FL27(%rip), %r10
mov	%r10, -928(%rbp)

mov	.FL28(%rip), %r10
mov	%r10, -936(%rbp)

mov	.FL29(%rip), %r10
mov	%r10, -944(%rbp)

mov	.FL30(%rip), %r10
mov	%r10, -952(%rbp)

mov	.FL31(%rip), %r10
mov	%r10, -960(%rbp)

mov	.FL32(%rip), %r10
mov	%r10, -968(%rbp)

movss		-912(%rbp), %xmm0

movss		-920(%rbp), %xmm1

movss		-928(%rbp), %xmm2

movss		-936(%rbp), %xmm3

movss		-944(%rbp), %xmm4

movss		-952(%rbp), %xmm5

movss		-960(%rbp), %xmm6

movss		-968(%rbp), %xmm7

mov 		$8, %rax 

call 	ochoparametrosFloat

movq 	$10, -976(%rbp)

mov	.FL33(%rip), %r10
mov	%r10, -984(%rbp)

movq 	$20, -992(%rbp)

mov	.FL34(%rip), %r10
mov	%r10, -1000(%rbp)

movq 	$30, -1008(%rbp)

mov	.FL35(%rip), %r10
mov	%r10, -1016(%rbp)

movq 	$40, -1024(%rbp)

mov	.FL36(%rip), %r10
mov	%r10, -1032(%rbp)

mov		-976(%rbp), %r10
mov	 	%r10, %rdi

movss		-984(%rbp), %xmm0

mov		-992(%rbp), %r10
mov	 	%r10, %rsi

movss		-1000(%rbp), %xmm1

mov		-1008(%rbp), %r10
mov	 	%r10, %rdx

movss		-1016(%rbp), %xmm2

mov		-1024(%rbp), %r10
mov	 	%r10, %rcx

movss		-1032(%rbp), %xmm3

mov 		$4, %rax 

call 	ochoparametrosMixtos

mov 		$0, %rax
leave
ret

