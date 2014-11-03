.SL79: 
		.string "16.16 = %f\n" 

.FL78: 
		.float 16.16 

.FL77: 
		.float 14.14 

.FL76: 
		.float 12.12 

.FL75: 
		.float 9.9 

.FL74: 
		.float 7.7 

.FL73: 
		.float 5.5 

.FL72: 
		.float 3.3 

.SL71: 
		.string "16 = %d\n" 

.SL70: 
		.string "16.16 = %f\n" 

.FL69: 
		.float 16.16 

.FL68: 
		.float 15.15 

.FL67: 
		.float 14.14 

.FL66: 
		.float 13.13 

.FL65: 
		.float 12.12 

.FL64: 
		.float 11.11 

.FL63: 
		.float 9.9 

.FL62: 
		.float 8.8 

.FL61: 
		.float 7.7 

.FL60: 
		.float 6.6 

.FL59: 
		.float 5.5 

.FL58: 
		.float 4.4 

.FL57: 
		.float 3.3 

.SL56: 
		.string "3.3 = %f\n" 

.FL55: 
		.float 3.3 

.SL54: 
		.string "7 = %d\n" 

.SL53: 
		.string "7.7 = %f\n" 

.FL52: 
		.float 4.4 

.FL51: 
		.float 3.3 

.SL50: 
		.string "16.16 = %f\n" 

.SL49: 
		.string "15 = %d\n" 

.SL48: 
		.string "14.14 = %f\n" 

.SL47: 
		.string "13 = %d\n" 

.SL46: 
		.string "12.12 = %f\n" 

.SL45: 
		.string "11 = %d\n" 

.SL44: 
		.string "9.9 = %f\n" 

.SL43: 
		.string "8 = %d\n" 

.SL42: 
		.string "7.7 = %f\n" 

.SL41: 
		.string "6 = %d\n" 

.SL40: 
		.string "5.5 = %f\n" 

.SL39: 
		.string "4 = %d\n" 

.SL38: 
		.string "3.3 = %f\n" 

.SL37: 
		.string "metodo con trece parametros intercalados entre floats en ints \n" 

.SL36: 
		.string "16 = %d\n" 

.SL35: 
		.string "15 = %d\n" 

.SL34: 
		.string "14 = %d\n" 

.SL33: 
		.string "13 = %d\n" 

.SL32: 
		.string "12 = %d\n" 

.SL31: 
		.string "11 = %d\n" 

.SL30: 
		.string "9 = %d\n" 

.SL29: 
		.string "8 = %d\n" 

.SL28: 
		.string "7 = %d\n" 

.SL27: 
		.string "6 = %d\n" 

.SL26: 
		.string "5 = %d\n" 

.SL25: 
		.string "4 = %d\n" 

.SL24: 
		.string "3 = %d\n" 

.SL23: 
		.string "metodo con trece int como parametros \n" 

.SL22: 
		.string "16.16 = %f\n" 

.SL21: 
		.string "15.15 = %f\n" 

.SL20: 
		.string "14.14 = %f\n" 

.SL19: 
		.string "13.13 = %f\n" 

.SL18: 
		.string "12.12 = %f\n" 

.SL17: 
		.string "11.11 = %f\n" 

.SL16: 
		.string "9.9 = %f\n" 

.SL15: 
		.string "8.8 = %f\n" 

.SL14: 
		.string "7.7 = %f\n" 

.SL13: 
		.string "6.6 = %f\n" 

.SL12: 
		.string "5.5 = %f\n" 

.SL11: 
		.string "4.4 = %f\n" 

.SL10: 
		.string "3.3 = %f\n" 

.SL9: 
		.string "metodo con trece float como parametros \n" 

.SL8: 
		.string "4 = %d\n" 

.SL7: 
		.string "3.3 = %f\n" 

.SL6: 
		.string "metodo con un int y un float como parametros \n" 

.SL5: 
		.string "4 = %d\n" 

.SL4: 
		.string "3 = %d\n" 

.SL3: 
		.string "metodo con dos int como parametros \n" 

.SL2: 
		.string "4.4 = %f\n" 

.SL1: 
		.string "3.3 = %f\n" 

.SL0: 
		.string "metodo con dos float como parametros \n" 

.text

.globl	method1
.type	method1, @function 
method1: 
enter   $(8 * 6), $0 

movss 		%xmm0, -16(%rbp) 
movss 		%xmm1, -8(%rbp) 

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov		$.SL1, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL2, %r10
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

mov 		%rdi, -16(%rbp) 
mov 		%rsi, -8(%rbp) 

mov		$.SL3, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov		$.SL4, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL5, %r10
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

movss 		%xmm0, -16(%rbp) 
mov 		%rdi, -8(%rbp) 

mov		$.SL6, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov		$.SL7, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL8, %r10
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

movss 		%xmm0, -104(%rbp) 
movss 		%xmm1, -96(%rbp) 
movss 		%xmm2, -88(%rbp) 
movss 		%xmm3, -80(%rbp) 
movss 		%xmm4, -72(%rbp) 
movss 		%xmm5, -64(%rbp) 
movss 		%xmm6, -56(%rbp) 
movss 		%xmm7, -48(%rbp) 
mov 		16(%rbp), %r10
mov 		%r10, -40(%rbp) 
mov 		24(%rbp), %r10
mov 		%r10, -32(%rbp) 
mov 		32(%rbp), %r10
mov 		%r10, -24(%rbp) 
mov 		40(%rbp), %r10
mov 		%r10, -16(%rbp) 
mov 		48(%rbp), %r10
mov 		%r10, -8(%rbp) 

mov		$.SL9, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov		$.SL10, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL11, %r10
mov	 	%r10, %rdi

movss		-96(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL12, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL13, %r10
mov	 	%r10, %rdi

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL14, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL15, %r10
mov	 	%r10, %rdi

movss		-64(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL16, %r10
mov	 	%r10, %rdi

movss		-56(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL17, %r10
mov	 	%r10, %rdi

movss		-48(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL18, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL19, %r10
mov	 	%r10, %rdi

movss		-32(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL20, %r10
mov	 	%r10, %rdi

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL21, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL22, %r10
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

mov 		%rdi, -104(%rbp) 
mov 		%rsi, -96(%rbp) 
mov 		%rdx, -88(%rbp) 
mov 		%rcx, -80(%rbp) 
mov 		%r8, -72(%rbp) 
mov 		%r9, -64(%rbp) 
mov 		16(%rbp), %r10
mov 		%r10, -56(%rbp) 
mov 		24(%rbp), %r10
mov 		%r10, -48(%rbp) 
mov 		32(%rbp), %r10
mov 		%r10, -40(%rbp) 
mov 		40(%rbp), %r10
mov 		%r10, -32(%rbp) 
mov 		48(%rbp), %r10
mov 		%r10, -24(%rbp) 
mov 		56(%rbp), %r10
mov 		%r10, -16(%rbp) 
mov 		64(%rbp), %r10
mov 		%r10, -8(%rbp) 

mov		$.SL23, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov		$.SL24, %r10
mov	 	%r10, %rdi

mov		-104(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL25, %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL26, %r10
mov	 	%r10, %rdi

mov		-88(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL27, %r10
mov	 	%r10, %rdi

mov		-80(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL28, %r10
mov	 	%r10, %rdi

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL29, %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL30, %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL31, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL32, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL33, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL34, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL35, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL36, %r10
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

movss 		%xmm0, -104(%rbp) 
mov 		%rdi, -96(%rbp) 
movss 		%xmm1, -88(%rbp) 
mov 		%rsi, -80(%rbp) 
movss 		%xmm2, -72(%rbp) 
mov 		%rdx, -64(%rbp) 
movss 		%xmm3, -56(%rbp) 
mov 		%rcx, -48(%rbp) 
movss 		%xmm4, -40(%rbp) 
mov 		%r8, -32(%rbp) 
movss 		%xmm5, -24(%rbp) 
mov 		%r9, -16(%rbp) 
movss 		%xmm6, -8(%rbp) 

mov		$.SL37, %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov		$.SL38, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL39, %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL40, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL41, %r10
mov	 	%r10, %rdi

mov		-80(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL42, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL43, %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL44, %r10
mov	 	%r10, %rdi

movss		-56(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL45, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL46, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL47, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL48, %r10
mov	 	%r10, %rdi

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov		$.SL49, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL50, %r10
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
enter   $(8 * 54), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

mov	.FL51(%rip), %r10
mov	%r10, -32(%rbp)

mov	.FL52(%rip), %r10
mov	%r10, -40(%rbp)

movss		-32(%rbp), %xmm0

movss		-40(%rbp), %xmm1

mov 		$2, %rax 

call 	method1
movss 	%xmm0, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL53, %r10
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

mov		$.SL54, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL55(%rip), %r10
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

mov		$.SL56, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov	.FL57(%rip), %r10
mov	%r10, -104(%rbp)

mov	.FL58(%rip), %r10
mov	%r10, -112(%rbp)

mov	.FL59(%rip), %r10
mov	%r10, -120(%rbp)

mov	.FL60(%rip), %r10
mov	%r10, -128(%rbp)

mov	.FL61(%rip), %r10
mov	%r10, -136(%rbp)

mov	.FL62(%rip), %r10
mov	%r10, -144(%rbp)

mov	.FL63(%rip), %r10
mov	%r10, -152(%rbp)

mov	.FL64(%rip), %r10
mov	%r10, -160(%rbp)

mov	.FL65(%rip), %r10
mov	%r10, -168(%rbp)

mov	.FL66(%rip), %r10
mov	%r10, -176(%rbp)

mov	.FL67(%rip), %r10
mov	%r10, -184(%rbp)

mov	.FL68(%rip), %r10
mov	%r10, -192(%rbp)

mov	.FL69(%rip), %r10
mov	%r10, -200(%rbp)

movss		-104(%rbp), %xmm0

movss		-112(%rbp), %xmm1

movss		-120(%rbp), %xmm2

movss		-128(%rbp), %xmm3

movss		-136(%rbp), %xmm4

movss		-144(%rbp), %xmm5

movss		-152(%rbp), %xmm6

movss		-160(%rbp), %xmm7

mov		-168(%rbp), %rbx
mov		%rbx, 0(%rsp)

mov		-176(%rbp), %rbx
mov		%rbx, 8(%rsp)

mov		-184(%rbp), %rbx
mov		%rbx, 16(%rsp)

mov		-192(%rbp), %rbx
mov		%rbx, 24(%rsp)

mov		-200(%rbp), %rbx
mov		%rbx, 32(%rsp)

mov 		$13, %rax 

call 	method4
movss 	%xmm0, -208(%rbp) 

mov		-208(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL70, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movq 	$3, -216(%rbp)

movq 	$4, -224(%rbp)

movq 	$5, -232(%rbp)

movq 	$6, -240(%rbp)

movq 	$7, -248(%rbp)

movq 	$8, -256(%rbp)

movq 	$9, -264(%rbp)

movq 	$11, -272(%rbp)

movq 	$12, -280(%rbp)

movq 	$13, -288(%rbp)

movq 	$14, -296(%rbp)

movq 	$15, -304(%rbp)

movq 	$16, -312(%rbp)

mov		-216(%rbp), %r10
mov	 	%r10, %rdi

mov		-224(%rbp), %r10
mov	 	%r10, %rsi

mov		-232(%rbp), %r10
mov	 	%r10, %rdx

mov		-240(%rbp), %r10
mov	 	%r10, %rcx

mov		-248(%rbp), %r10
mov	 	%r10, %r8

mov		-256(%rbp), %r10
mov	 	%r10, %r9

mov		-264(%rbp), %r10
mov	 	%r10, 0(%rsp) 

mov		-272(%rbp), %r10
mov	 	%r10, 8(%rsp) 

mov		-280(%rbp), %r10
mov	 	%r10, 16(%rsp) 

mov		-288(%rbp), %r10
mov	 	%r10, 24(%rsp) 

mov		-296(%rbp), %r10
mov	 	%r10, 32(%rsp) 

mov		-304(%rbp), %r10
mov	 	%r10, 40(%rsp) 

mov		-312(%rbp), %r10
mov	 	%r10, 48(%rsp) 

mov 		$0, %rax 

call 	method5
mov 	%rax, -320(%rbp) 

mov		-320(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL71, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL72(%rip), %r10
mov	%r10, -328(%rbp)

movq 	$4, -336(%rbp)

mov	.FL73(%rip), %r10
mov	%r10, -344(%rbp)

movq 	$6, -352(%rbp)

mov	.FL74(%rip), %r10
mov	%r10, -360(%rbp)

movq 	$8, -368(%rbp)

mov	.FL75(%rip), %r10
mov	%r10, -376(%rbp)

movq 	$11, -384(%rbp)

mov	.FL76(%rip), %r10
mov	%r10, -392(%rbp)

movq 	$13, -400(%rbp)

mov	.FL77(%rip), %r10
mov	%r10, -408(%rbp)

movq 	$15, -416(%rbp)

mov	.FL78(%rip), %r10
mov	%r10, -424(%rbp)

movss		-328(%rbp), %xmm0

mov		-336(%rbp), %r10
mov	 	%r10, %rdi

movss		-344(%rbp), %xmm1

mov		-352(%rbp), %r10
mov	 	%r10, %rsi

movss		-360(%rbp), %xmm2

mov		-368(%rbp), %r10
mov	 	%r10, %rdx

movss		-376(%rbp), %xmm3

mov		-384(%rbp), %r10
mov	 	%r10, %rcx

movss		-392(%rbp), %xmm4

mov		-400(%rbp), %r10
mov	 	%r10, %r8

movss		-408(%rbp), %xmm5

mov		-416(%rbp), %r10
mov	 	%r10, %r9

movss		-424(%rbp), %xmm6

mov 		$7, %rax 

call 	method6
movss 	%xmm0, -432(%rbp) 

mov		-432(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL79, %r10
mov	 	%r10, %rdi

movss		-16(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

