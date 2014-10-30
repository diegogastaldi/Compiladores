.SL73: 
		.string "16.16 = %f\n" 

.FL72: 
		.float 16.16 

.FL71: 
		.float 14.14 

.FL70: 
		.float 12.12 

.FL69: 
		.float 9.9 

.FL68: 
		.float 7.7 

.FL67: 
		.float 5.5 

.FL66: 
		.float 3.3 

.SL65: 
		.string "16 = %d\n" 

.SL64: 
		.string "16.16 = %f\n" 

.FL63: 
		.float 16.16 

.FL62: 
		.float 15.15 

.FL61: 
		.float 14.14 

.FL60: 
		.float 13.13 

.FL59: 
		.float 12.12 

.FL58: 
		.float 11.11 

.FL57: 
		.float 9.9 

.FL56: 
		.float 8.8 

.FL55: 
		.float 7.7 

.FL54: 
		.float 6.6 

.FL53: 
		.float 5.5 

.FL52: 
		.float 4.4 

.FL51: 
		.float 3.3 

.SL50: 
		.string "3.3 = %f\n" 

.FL49: 
		.float 3.3 

.SL48: 
		.string "7 = %d\n" 

.SL47: 
		.string "7.7 = %f\n" 

.FL46: 
		.float 4.4 

.FL45: 
		.float 3.3 

.SL44: 
		.string "16.16 = %f\n" 

.SL43: 
		.string "15 = %d\n" 

.SL42: 
		.string "14.14 = %f\n" 

.SL41: 
		.string "13 = %d\n" 

.SL40: 
		.string "12.12 = %f\n" 

.SL39: 
		.string "11 = %d\n" 

.SL38: 
		.string "9.9 = %f\n" 

.SL37: 
		.string "8 = %d\n" 

.SL36: 
		.string "7.7 = %f\n" 

.SL35: 
		.string "6 = %d\n" 

.SL34: 
		.string "5.5 = %f\n" 

.SL33: 
		.string "4 = %d\n" 

.SL32: 
		.string "3.3 = %f\n" 

.SL31: 
		.string "16 = %d\n" 

.SL30: 
		.string "15 = %d\n" 

.SL29: 
		.string "14 = %d\n" 

.SL28: 
		.string "13 = %d\n" 

.SL27: 
		.string "12 = %d\n" 

.SL26: 
		.string "11 = %d\n" 

.SL25: 
		.string "9 = %d\n" 

.SL24: 
		.string "8 = %d\n" 

.SL23: 
		.string "7 = %d\n" 

.SL22: 
		.string "6 = %d\n" 

.SL21: 
		.string "5 = %d\n" 

.SL20: 
		.string "4 = %d\n" 

.SL19: 
		.string "3 = %d\n" 

.SL18: 
		.string "16.16 = %f\n" 

.SL17: 
		.string "15.15 = %f\n" 

.SL16: 
		.string "14.14 = %f\n" 

.SL15: 
		.string "13.13 = %f\n" 

.SL14: 
		.string "12.12 = %f\n" 

.SL13: 
		.string "11.11 = %f\n" 

.SL12: 
		.string "9.9 = %f\n" 

.SL11: 
		.string "8.8 = %f\n" 

.SL10: 
		.string "7.7 = %f\n" 

.SL9: 
		.string "6.6 = %f\n" 

.SL8: 
		.string "5.5 = %f\n" 

.SL7: 
		.string "4.4 = %f\n" 

.SL6: 
		.string "3.3 = %f\n" 

.SL5: 
		.string "4 = %d\n" 

.SL4: 
		.string "3.3 = %f\n" 

.SL3: 
		.string "4 = %d\n" 

.SL2: 
		.string "3 = %d\n" 

.SL1: 
		.string "4.4 = %f\n" 

.SL0: 
		.string "3.3 = %f\n" 

.text

.globl	method1
.type	method1, @function 
method1: 
enter   $(8 * 6), $0 

movss 		%xmm1, -8(%rbp) 
movss 		%xmm0, -16(%rbp) 

mov		$.SL0, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL1, %r10
mov	 	%r10, %rdi

movss		-8(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movss		-16(%rbp), %xmm0 
addss		-8(%rbp), %xmm0 
movss		%xmm0, -48(%rbp) 

movss		-48(%rbp), %xmm0
leave
ret

.globl	method2
.type	method2, @function 
method2: 
enter   $(8 * 6), $0 

mov 		%rsi, -8(%rbp) 
mov 		%rdi, -16(%rbp) 

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL3, %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		-16(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-48(%rbp), %rax
leave
ret

.globl	method3
.type	method3, @function 
method3: 
enter   $(8 * 6), $0 

mov 		%rdi, -8(%rbp) 
movss 		%xmm0, -16(%rbp) 

mov		$.SL4, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL5, %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movss		-16(%rbp), %xmm0
leave
ret

.globl	method4
.type	method4, @function 
method4: 
enter   $(8 * 28), $0 

mov 		56(%rbp), %r10
mov 		%r10, -8(%rbp) 
mov 		48(%rbp), %r10
mov 		%r10, -16(%rbp) 
mov 		40(%rbp), %r10
mov 		%r10, -24(%rbp) 
mov 		32(%rbp), %r10
mov 		%r10, -32(%rbp) 
mov 		24(%rbp), %r10
mov 		%r10, -40(%rbp) 
movss 		%xmm7, -48(%rbp) 
movss 		%xmm6, -56(%rbp) 
movss 		%xmm5, -64(%rbp) 
movss 		%xmm4, -72(%rbp) 
movss 		%xmm3, -80(%rbp) 
movss 		%xmm2, -88(%rbp) 
movss 		%xmm1, -96(%rbp) 
movss 		%xmm0, -104(%rbp) 

mov		$.SL6, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL7, %r10
mov	 	%r10, %rdi

movss		-96(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL8, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL9, %r10
mov	 	%r10, %rdi

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL10, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL11, %r10
mov	 	%r10, %rdi

movss		-64(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL12, %r10
mov	 	%r10, %rdi

movss		-56(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL13, %r10
mov	 	%r10, %rdi

movss		-48(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL14, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL15, %r10
mov	 	%r10, %rdi

movss		-32(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL16, %r10
mov	 	%r10, %rdi

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL17, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL18, %r10
mov	 	%r10, %rdi

movss		-8(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movss		-8(%rbp), %xmm0
leave
ret

.globl	method5
.type	method5, @function 
method5: 
enter   $(8 * 28), $0 

mov 		-40(%rbp), %r10
mov 		%r10, -8(%rbp) 
mov 		-32(%rbp), %r10
mov 		%r10, -16(%rbp) 
mov 		-24(%rbp), %r10
mov 		%r10, -24(%rbp) 
mov 		-16(%rbp), %r10
mov 		%r10, -32(%rbp) 
mov 		-8(%rbp), %r10
mov 		%r10, -40(%rbp) 
mov 		0(%rbp), %r10
mov 		%r10, -48(%rbp) 
mov 		8(%rbp), %r10
mov 		%r10, -56(%rbp) 
mov 		%r9, -64(%rbp) 
mov 		%r8, -72(%rbp) 
mov 		%rcx, -80(%rbp) 
mov 		%rdx, -88(%rbp) 
mov 		%rsi, -96(%rbp) 
mov 		%rdi, -104(%rbp) 

mov		$.SL19, %r10
mov	 	%r10, %rdi

mov		-104(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL20, %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL21, %r10
mov	 	%r10, %rdi

mov		-88(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL22, %r10
mov	 	%r10, %rdi

mov		-80(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL23, %r10
mov	 	%r10, %rdi

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL24, %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL25, %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL26, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL27, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL28, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL29, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL30, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL31, %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		-8(%rbp), %rax
leave
ret

.globl	method6
.type	method6, @function 
method6: 
enter   $(8 * 28), $0 

movss 		%xmm6, -8(%rbp) 
mov 		%r9, -16(%rbp) 
movss 		%xmm5, -24(%rbp) 
mov 		%r8, -32(%rbp) 
movss 		%xmm4, -40(%rbp) 
mov 		%rcx, -48(%rbp) 
movss 		%xmm3, -56(%rbp) 
mov 		%rdx, -64(%rbp) 
movss 		%xmm2, -72(%rbp) 
mov 		%rsi, -80(%rbp) 
movss 		%xmm1, -88(%rbp) 
mov 		%rdi, -96(%rbp) 
movss 		%xmm0, -104(%rbp) 

mov		$.SL32, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL33, %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL34, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL35, %r10
mov	 	%r10, %rdi

mov		-80(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL36, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL37, %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL38, %r10
mov	 	%r10, %rdi

movss		-56(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL39, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL40, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL41, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL42, %r10
mov	 	%r10, %rdi

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL43, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL44, %r10
mov	 	%r10, %rdi

movss		-8(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movss		-8(%rbp), %xmm0
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 66), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

mov	.FL45(%rip), %r10
mov	%r10, -32(%rbp)

mov	.FL46(%rip), %r10
mov	%r10, -40(%rbp)

movss		-32(%rbp), %xmm0

movss		-40(%rbp), %xmm1

mov 		$2, %rax 

call 	method1
movss 	%xmm0, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL47, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movq 	$3, -56(%rbp)

movq 	$4, -64(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	method2
mov 	%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL48, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL49(%rip), %r10
mov	%r10, -80(%rbp)

movq 	$4, -88(%rbp)

movss		-80(%rbp), %xmm0

mov		-88(%rbp), %r10
mov	 	%r10, %rdi

mov 		$1, %rax 

call 	method3
movss 	%xmm0, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL50, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov	.FL51(%rip), %r10
mov	%r10, -104(%rbp)

mov	.FL52(%rip), %r10
mov	%r10, -112(%rbp)

mov	.FL53(%rip), %r10
mov	%r10, -120(%rbp)

mov	.FL54(%rip), %r10
mov	%r10, -128(%rbp)

mov	.FL55(%rip), %r10
mov	%r10, -136(%rbp)

mov	.FL56(%rip), %r10
mov	%r10, -144(%rbp)

mov	.FL57(%rip), %r10
mov	%r10, -152(%rbp)

mov	.FL58(%rip), %r10
mov	%r10, -160(%rbp)

mov	.FL59(%rip), %r10
mov	%r10, -168(%rbp)

mov	.FL60(%rip), %r10
mov	%r10, -176(%rbp)

mov	.FL61(%rip), %r10
mov	%r10, -184(%rbp)

mov	.FL62(%rip), %r10
mov	%r10, -192(%rbp)

mov	.FL63(%rip), %r10
mov	%r10, -200(%rbp)

movss		-104(%rbp), %xmm0

movss		-112(%rbp), %xmm1

movss		-120(%rbp), %xmm2

movss		-128(%rbp), %xmm3

movss		-136(%rbp), %xmm4

movss		-144(%rbp), %xmm5

movss		-152(%rbp), %xmm6

movss		-160(%rbp), %xmm7

mov		-168(%rbp), %r10
mov		%r10, -208(%rbp)

mov		-176(%rbp), %r10
mov		%r10, -216(%rbp)

mov		-184(%rbp), %r10
mov		%r10, -224(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -232(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -240(%rbp)

mov 		$8, %rax 

call 	method4
movss 	%xmm0, -248(%rbp) 

mov		-248(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL64, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movq 	$3, -256(%rbp)

movq 	$4, -264(%rbp)

movq 	$5, -272(%rbp)

movq 	$6, -280(%rbp)

movq 	$7, -288(%rbp)

movq 	$8, -296(%rbp)

movq 	$9, -304(%rbp)

movq 	$11, -312(%rbp)

movq 	$12, -320(%rbp)

movq 	$13, -328(%rbp)

movq 	$14, -336(%rbp)

movq 	$15, -344(%rbp)

movq 	$16, -352(%rbp)

mov		-256(%rbp), %r10
mov	 	%r10, %rdi

mov		-264(%rbp), %r10
mov	 	%r10, %rsi

mov		-272(%rbp), %r10
mov	 	%r10, %rdx

mov		-280(%rbp), %r10
mov	 	%r10, %rcx

mov		-288(%rbp), %r10
mov	 	%r10, %r8

mov		-296(%rbp), %r10
mov	 	%r10, %r9

mov		-304(%rbp), %r10
mov	 	%r10, -360(%rbp) 

mov		-312(%rbp), %r10
mov	 	%r10, -368(%rbp) 

mov		-320(%rbp), %r10
mov	 	%r10, -376(%rbp) 

mov		-328(%rbp), %r10
mov	 	%r10, -384(%rbp) 

mov		-336(%rbp), %r10
mov	 	%r10, -392(%rbp) 

mov		-344(%rbp), %r10
mov	 	%r10, -400(%rbp) 

mov		-352(%rbp), %r10
mov	 	%r10, -408(%rbp) 

mov 		$0, %rax 

call 	method5
mov 	%rax, -416(%rbp) 

mov		-416(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL65, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL66(%rip), %r10
mov	%r10, -424(%rbp)

movq 	$4, -432(%rbp)

mov	.FL67(%rip), %r10
mov	%r10, -440(%rbp)

movq 	$6, -448(%rbp)

mov	.FL68(%rip), %r10
mov	%r10, -456(%rbp)

movq 	$8, -464(%rbp)

mov	.FL69(%rip), %r10
mov	%r10, -472(%rbp)

movq 	$11, -480(%rbp)

mov	.FL70(%rip), %r10
mov	%r10, -488(%rbp)

movq 	$13, -496(%rbp)

mov	.FL71(%rip), %r10
mov	%r10, -504(%rbp)

movq 	$15, -512(%rbp)

mov	.FL72(%rip), %r10
mov	%r10, -520(%rbp)

movss		-424(%rbp), %xmm0

mov		-432(%rbp), %r10
mov	 	%r10, %rdi

movss		-440(%rbp), %xmm1

mov		-448(%rbp), %r10
mov	 	%r10, %rsi

movss		-456(%rbp), %xmm2

mov		-464(%rbp), %r10
mov	 	%r10, %rdx

movss		-472(%rbp), %xmm3

mov		-480(%rbp), %r10
mov	 	%r10, %rcx

movss		-488(%rbp), %xmm4

mov		-496(%rbp), %r10
mov	 	%r10, %r8

movss		-504(%rbp), %xmm5

mov		-512(%rbp), %r10
mov	 	%r10, %r9

movss		-520(%rbp), %xmm6

mov 		$7, %rax 

call 	method6
movss 	%xmm0, -528(%rbp) 

mov		-528(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL73, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

