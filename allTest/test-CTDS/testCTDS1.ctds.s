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
enter   $(8 * 28), $0 

mov 		%rdi, -64(%rbp) 
mov 		%rsi, -56(%rbp) 
mov 		%rdx, -48(%rbp) 
mov 		%rcx, -40(%rbp) 
mov 		%r8, -32(%rbp) 
mov 		%r9, -24(%rbp) 
mov 		16(%rbp), %r10
mov 		%r10, -16(%rbp) 
mov 		24(%rbp), %r10
mov 		%r10, -8(%rbp) 

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

movss 		%xmm0, -64(%rbp) 
movss 		%xmm1, -56(%rbp) 
movss 		%xmm2, -48(%rbp) 
movss 		%xmm3, -40(%rbp) 
movss 		%xmm4, -32(%rbp) 
movss 		%xmm5, -24(%rbp) 
movss 		%xmm6, -16(%rbp) 
movss 		%xmm7, -8(%rbp) 

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

mov 		$1, %rax 

call 	print_float

mov 		$0, %rax
leave
ret

.globl	ochoparametrosMixtos
.type	ochoparametrosMixtos, @function 
ochoparametrosMixtos: 
enter   $(8 * 28), $0 

mov 		%rdi, -64(%rbp) 
movss 		%xmm0, -56(%rbp) 
mov 		%rsi, -48(%rbp) 
movss 		%xmm1, -40(%rbp) 
mov 		%rdx, -32(%rbp) 
movss 		%xmm2, -24(%rbp) 
mov 		%rcx, -16(%rbp) 
movss 		%xmm3, -8(%rbp) 

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

mov 		$1, %rax 

call 	print_float

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 104), $0 


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

movq 	$100, -184(%rbp)

mov		-184(%rbp), %r10
mov		%r10, global(%rip)

movq 	$0, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$11, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$1, -208(%rbp)

movq 	$1, -216(%rbp)

mov		-208(%rbp), %r10 
mov		-216(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -216(%rbp)

jmp 		.endForL1

.beginForL2: 

movq 	$1, -224(%rbp)

movq 	$1, -232(%rbp)

mov		-224(%rbp), %r10 
mov		-232(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -232(%rbp)

jmp 		.endForL3

.beginForL4: 

movq 	$1, -240(%rbp)

movq 	$1, -248(%rbp)

mov		-240(%rbp), %r10 
mov		-248(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -248(%rbp)

jmp 		.endForL5

.beginForL6: 

movq 	$1, -256(%rbp)

mov		-48(%rbp), %r10 
mov		-256(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -264(%rbp)

mov		-264(%rbp), %r10
mov		%r10, -48(%rbp)

.endForL5: 

mov		-248(%rbp), %r10 
mov		-240(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -248(%rbp)

mov		-248(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-248(%rbp), %r10
cmp 		-16(%rbp), %r10

jl 		.beginForL6

mov		-240(%rbp), %r10 
mov		-248(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -248(%rbp)

mov		-248(%rbp), %r10
mov		%r10, -24(%rbp)

.endForL3: 

mov		-232(%rbp), %r10 
mov		-224(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-232(%rbp), %r10
cmp 		-16(%rbp), %r10

jl 		.beginForL4

mov		-224(%rbp), %r10 
mov		-232(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -32(%rbp)

.endForL1: 

mov		-216(%rbp), %r10 
mov		-208(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-216(%rbp), %r10
cmp 		-16(%rbp), %r10

jl 		.beginForL2

mov		-208(%rbp), %r10 
mov		-216(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	print_int

movq 	$0, -240(%rbp)

mov		-240(%rbp), %r10
mov		%r10, -56(%rbp)

movq 	$0, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -72(%rbp)

movq 	$0, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -64(%rbp)

movq 	$1, -272(%rbp)

movq 	$1, -280(%rbp)

mov		-272(%rbp), %r10 
mov		-280(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -280(%rbp)

jmp 		.endForL7

.beginForL8: 

movq 	$1, -288(%rbp)

movq 	$1, -296(%rbp)

mov		-288(%rbp), %r10 
mov		-296(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -296(%rbp)

jmp 		.endForL9

.beginForL10: 

jmp 		.endForL9

movq 	$1, -304(%rbp)

movq 	$1, -312(%rbp)

mov		-304(%rbp), %r10 
mov		-312(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -312(%rbp)

jmp 		.endForL11

.beginForL12: 

movq 	$1, -320(%rbp)

mov		-64(%rbp), %r10 
mov		-320(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -328(%rbp)

mov		-328(%rbp), %r10
mov		%r10, -64(%rbp)

.endForL11: 

mov		-312(%rbp), %r10 
mov		-304(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -312(%rbp)

mov		-312(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-312(%rbp), %r10
cmp 		-16(%rbp), %r10

jl 		.beginForL12

mov		-304(%rbp), %r10 
mov		-312(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -312(%rbp)

mov		-312(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$1, -304(%rbp)

mov		-72(%rbp), %r10 
mov		-304(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -336(%rbp)

mov		-336(%rbp), %r10
mov		%r10, -72(%rbp)

.endForL9: 

mov		-296(%rbp), %r10 
mov		-288(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -296(%rbp)

mov		-296(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-296(%rbp), %r10
cmp 		-16(%rbp), %r10

jl 		.beginForL10

mov		-288(%rbp), %r10 
mov		-296(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -296(%rbp)

mov		-296(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1, -288(%rbp)

mov		-56(%rbp), %r10 
mov		-288(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -344(%rbp)

mov		-344(%rbp), %r10
mov		%r10, -56(%rbp)

.endForL7: 

mov		-280(%rbp), %r10 
mov		-272(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -280(%rbp)

mov		-280(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-280(%rbp), %r10
cmp 		-16(%rbp), %r10

jl 		.beginForL8

mov		-272(%rbp), %r10 
mov		-280(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -280(%rbp)

mov		-280(%rbp), %r10
mov		%r10, -40(%rbp)

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

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$1, -352(%rbp)

mov		-352(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$1, -360(%rbp)

mov		-360(%rbp), %r10
mov		%r10, -88(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -104(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -120(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -112(%rbp)

movq 	$10, -368(%rbp)

mov		-368(%rbp), %r10
mov		%r10, -16(%rbp)

.beginWhileL14: 

mov		-104(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -376(%rbp)

movq 	$1, -384(%rbp)

mov		-384(%rbp), %r10
cmp 		-376(%rbp), %r10

jne 		.endWhileL13

.beginWhileL16: 

mov		-120(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -384(%rbp)

movq 	$1, -392(%rbp)

mov		-392(%rbp), %r10
cmp 		-384(%rbp), %r10

jne 		.endWhileL15

.beginWhileL18: 

mov		-112(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -392(%rbp)

movq 	$1, -400(%rbp)

mov		-400(%rbp), %r10
cmp 		-392(%rbp), %r10

jne 		.endWhileL17

movq 	$1, -400(%rbp)

mov		-88(%rbp), %r10 
mov		-400(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -408(%rbp)

mov		-408(%rbp), %r10
mov		%r10, -88(%rbp)

movq 	$1, -416(%rbp)

mov		-112(%rbp), %r10 
mov		-416(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -424(%rbp)

mov		-424(%rbp), %r10
mov		%r10, -112(%rbp)

jmp 		.beginWhileL18

.endWhileL17: 

movq 	$1, -432(%rbp)

mov		-96(%rbp), %r10 
mov		-432(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -440(%rbp)

mov		-440(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$1, -448(%rbp)

mov		-120(%rbp), %r10 
mov		-448(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -456(%rbp)

mov		-456(%rbp), %r10
mov		%r10, -120(%rbp)

jmp 		.beginWhileL16

.endWhileL15: 

movq 	$1, -464(%rbp)

mov		-80(%rbp), %r10 
mov		-464(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -472(%rbp)

mov		-472(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$1, -480(%rbp)

mov		-104(%rbp), %r10 
mov		-480(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -488(%rbp)

mov		-488(%rbp), %r10
mov		%r10, -104(%rbp)

movq 	$100, -496(%rbp)

mov		-496(%rbp), %r10
mov		%r10, -128(%rbp)

movq 	$100, -504(%rbp)

mov		-504(%rbp), %r10
mov		%r10, -144(%rbp)

movq 	$100, -512(%rbp)

mov		-512(%rbp), %r10
mov		%r10, -136(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -152(%rbp)

mov		-144(%rbp), %r10
mov		%r10, -168(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -160(%rbp)

movq 	$1000, -520(%rbp)

mov		-520(%rbp), %r10
mov		%r10, -176(%rbp)

.beginWhileL20: 

mov		-152(%rbp), %rax
cmp		-176(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -528(%rbp)

movq 	$1, -536(%rbp)

mov		-536(%rbp), %r10
cmp 		-528(%rbp), %r10

jne 		.endWhileL19

.beginWhileL22: 

mov		-168(%rbp), %rax
cmp		-176(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -536(%rbp)

movq 	$1, -544(%rbp)

mov		-544(%rbp), %r10
cmp 		-536(%rbp), %r10

jne 		.endWhileL21

jmp 		.endWhileL21

.beginWhileL24: 

mov		-160(%rbp), %rax
cmp		-176(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -544(%rbp)

movq 	$1, -552(%rbp)

mov		-552(%rbp), %r10
cmp 		-544(%rbp), %r10

jne 		.endWhileL23

movq 	$1, -552(%rbp)

mov		-136(%rbp), %r10 
mov		-552(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -560(%rbp)

mov		-560(%rbp), %r10
mov		%r10, -136(%rbp)

movq 	$1, -568(%rbp)

mov		-160(%rbp), %r10 
mov		-568(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -576(%rbp)

mov		-576(%rbp), %r10
mov		%r10, -160(%rbp)

jmp 		.beginWhileL24

.endWhileL23: 

movq 	$1, -584(%rbp)

mov		-144(%rbp), %r10 
mov		-584(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -592(%rbp)

mov		-592(%rbp), %r10
mov		%r10, -144(%rbp)

movq 	$1, -600(%rbp)

mov		-168(%rbp), %r10 
mov		-600(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -608(%rbp)

mov		-608(%rbp), %r10
mov		%r10, -168(%rbp)

jmp 		.beginWhileL22

.endWhileL21: 

movq 	$100, -616(%rbp)

mov		-128(%rbp), %r10 
mov		-616(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -624(%rbp)

mov		-624(%rbp), %r10
mov		%r10, -128(%rbp)

movq 	$100, -632(%rbp)

mov		-152(%rbp), %r10 
mov		-632(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -640(%rbp)

mov		-640(%rbp), %r10
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

movq 	$1, -648(%rbp)

movq 	$2, -656(%rbp)

movq 	$3, -664(%rbp)

movq 	$4, -672(%rbp)

movq 	$5, -680(%rbp)

movq 	$6, -688(%rbp)

movq 	$7, -696(%rbp)

movq 	$8, -704(%rbp)

mov		-648(%rbp), %r10
mov	 	%r10, %rdi

mov		-656(%rbp), %r10
mov	 	%r10, %rsi

mov		-664(%rbp), %r10
mov	 	%r10, %rdx

mov		-672(%rbp), %r10
mov	 	%r10, %rcx

mov		-680(%rbp), %r10
mov	 	%r10, %r8

mov		-688(%rbp), %r10
mov	 	%r10, %r9

mov		-696(%rbp), %r10
mov	 	%r10, 0(%rsp) 

mov		-704(%rbp), %r10
mov	 	%r10, 8(%rsp) 

mov 		$0, %rax 

call 	ochoparametrosInt

mov	.FL25(%rip), %r10
mov	%r10, -712(%rbp)

mov	.FL26(%rip), %r10
mov	%r10, -720(%rbp)

mov	.FL27(%rip), %r10
mov	%r10, -728(%rbp)

mov	.FL28(%rip), %r10
mov	%r10, -736(%rbp)

mov	.FL29(%rip), %r10
mov	%r10, -744(%rbp)

mov	.FL30(%rip), %r10
mov	%r10, -752(%rbp)

mov	.FL31(%rip), %r10
mov	%r10, -760(%rbp)

mov	.FL32(%rip), %r10
mov	%r10, -768(%rbp)

movss		-712(%rbp), %xmm0

movss		-720(%rbp), %xmm1

movss		-728(%rbp), %xmm2

movss		-736(%rbp), %xmm3

movss		-744(%rbp), %xmm4

movss		-752(%rbp), %xmm5

movss		-760(%rbp), %xmm6

movss		-768(%rbp), %xmm7

mov 		$8, %rax 

call 	ochoparametrosFloat

movq 	$10, -776(%rbp)

mov	.FL33(%rip), %r10
mov	%r10, -784(%rbp)

movq 	$20, -792(%rbp)

mov	.FL34(%rip), %r10
mov	%r10, -800(%rbp)

movq 	$30, -808(%rbp)

mov	.FL35(%rip), %r10
mov	%r10, -816(%rbp)

movq 	$40, -824(%rbp)

mov	.FL36(%rip), %r10
mov	%r10, -832(%rbp)

mov		-776(%rbp), %r10
mov	 	%r10, %rdi

movss		-784(%rbp), %xmm0

mov		-792(%rbp), %r10
mov	 	%r10, %rsi

movss		-800(%rbp), %xmm1

mov		-808(%rbp), %r10
mov	 	%r10, %rdx

movss		-816(%rbp), %xmm2

mov		-824(%rbp), %r10
mov	 	%r10, %rcx

movss		-832(%rbp), %xmm3

mov 		$4, %rax 

call 	ochoparametrosMixtos

mov 		$0, %rax
leave
ret

