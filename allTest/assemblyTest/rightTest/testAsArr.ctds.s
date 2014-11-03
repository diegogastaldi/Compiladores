.SL17: 
		.string "5.5 = %f \n" 

.FL16: 
		.float 5.5 

.SL15: 
		.string "2.2 = %f \n" 

.FL14: 
		.float 2.2 

.SL13: 
		.string "3.3 = %f \n" 

.FL12: 
		.float 3.3 

.SL11: 
		.string "3 = %d \n" 

.SL10: 
		.string "2 = %d \n" 

.SL9: 
		.string "3 = %d \n" 

.SL8: 
		.string "5.5 = %f \n" 

.FL7: 
		.float 5.5 

.SL6: 
		.string "2.2 = %f \n" 

.FL5: 
		.float 2.2 

.SL4: 
		.string "3.3 = %f \n" 

.FL3: 
		.float 3.3 

.SL2: 
		.string "3 = %d \n" 

.SL1: 
		.string "2 = %d \n" 

.SL0: 
		.string "3 = %d \n" 

.text

.comm f, 80

.comm i, 80

.globl	main
.type	main, @function 
main: 
enter   $(8 * 66), $0 


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

mov 		$0, %r10 
mov 		$0, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$1, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$2, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$3, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$4, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$6, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$7, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$8, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 
mov 		$0, %r10 
mov 		$9, %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 

mov 		$0, %r10 
mov 		$0, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$1, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$2, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$3, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$4, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$6, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$7, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$8, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 
mov 		$0, %r10 
mov 		$9, %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 

movq 	$3, -192(%rbp)

movq 	$2, -200(%rbp)

mov 		-192(%rbp), %r10 
movl		-200(%rbp), %edx 
cltq 
mov 		%r10, -88(%rbp, %rdx, 8) 

movq 	$2, -208(%rbp)

movl		-208(%rbp), %edx 
cltq 
mov 		-88(%rbp,%rdx,8) , %r11
mov 		%r11, -216(%rbp) 

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov		-216(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$3, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -176(%rbp)

movq 	$2, -232(%rbp)

mov 		-232(%rbp), %r10 
movl		-176(%rbp), %edx 
cltq 
mov 		%r10, -88(%rbp, %rdx, 8) 

movq 	$3, -240(%rbp)

movl		-240(%rbp), %edx 
cltq 
mov 		-88(%rbp,%rdx,8) , %r11
mov 		%r11, -248(%rbp) 

mov		$.SL1, %r10
mov	 	%r10, %rdi

mov		-248(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$0, -256(%rbp)

mov 		-176(%rbp), %r10 
movl		-256(%rbp), %edx 
cltq 
mov 		%r10, -88(%rbp, %rdx, 8) 

movq 	$0, -264(%rbp)

movl		-264(%rbp), %edx 
cltq 
mov 		-88(%rbp,%rdx,8) , %r11
mov 		%r11, -272(%rbp) 

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-272(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL3(%rip), %r10
mov	%r10, -280(%rbp)

movq 	$2, -288(%rbp)

mov 		-280(%rbp), %r10 
movl		-288(%rbp), %edx 
cltq 
mov 		%r10, -168(%rbp, %rdx, 8) 

movq 	$2, -296(%rbp)

movl		-296(%rbp), %edx 
cltq 
mov 		-168(%rbp,%rdx,8) , %r11
mov 		%r11, -304(%rbp) 

mov		$.SL4, %r10
mov	 	%r10, %rdi

movss		-304(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov	.FL5(%rip), %r10
mov	%r10, -312(%rbp)

mov 		-312(%rbp), %r10 
movl		-176(%rbp), %edx 
cltq 
mov 		%r10, -168(%rbp, %rdx, 8) 

movq 	$3, -320(%rbp)

movl		-320(%rbp), %edx 
cltq 
mov 		-168(%rbp,%rdx,8) , %r11
mov 		%r11, -328(%rbp) 

mov		$.SL6, %r10
mov	 	%r10, %rdi

movss		-328(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov	.FL7(%rip), %r10
mov	%r10, -336(%rbp)

mov		-336(%rbp), %r10
mov		%r10, -184(%rbp)

movq 	$0, -344(%rbp)

mov 		-184(%rbp), %r10 
movl		-344(%rbp), %edx 
cltq 
mov 		%r10, -168(%rbp, %rdx, 8) 

movq 	$0, -352(%rbp)

movl		-352(%rbp), %edx 
cltq 
mov 		-168(%rbp,%rdx,8) , %r11
mov 		%r11, -360(%rbp) 

mov		$.SL8, %r10
mov	 	%r10, %rdi

movss		-360(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movq 	$3, -368(%rbp)

movq 	$2, -376(%rbp)

mov 		-368(%rbp), %r10 
mov 		-376(%rbp), %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 

movq 	$2, -384(%rbp)

mov 		-384(%rbp), %edx 
cltq 
mov 		i(,%rdx,8) , %r11
mov 		%r11, -392(%rbp) 

mov		$.SL9, %r10
mov	 	%r10, %rdi

mov		-392(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$2, -400(%rbp)

mov 		-400(%rbp), %r10 
mov 		-176(%rbp), %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 

movq 	$3, -408(%rbp)

mov 		-408(%rbp), %edx 
cltq 
mov 		i(,%rdx,8) , %r11
mov 		%r11, -416(%rbp) 

mov		$.SL10, %r10
mov	 	%r10, %rdi

mov		-416(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$0, -424(%rbp)

mov 		-176(%rbp), %r10 
mov 		-424(%rbp), %edx 
cltq 
mov 		%r10, i(, %rdx, 8) 

movq 	$0, -432(%rbp)

mov 		-432(%rbp), %edx 
cltq 
mov 		i(,%rdx,8) , %r11
mov 		%r11, -440(%rbp) 

mov		$.SL11, %r10
mov	 	%r10, %rdi

mov		-440(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL12(%rip), %r10
mov	%r10, -448(%rbp)

movq 	$2, -456(%rbp)

mov 		-448(%rbp), %r10 
mov 		-456(%rbp), %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 

movq 	$2, -464(%rbp)

mov 		-464(%rbp), %edx 
cltq 
mov 		f(,%rdx,8) , %r11
mov 		%r11, -472(%rbp) 

mov		$.SL13, %r10
mov	 	%r10, %rdi

movss		-472(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov	.FL14(%rip), %r10
mov	%r10, -480(%rbp)

mov 		-480(%rbp), %r10 
mov 		-176(%rbp), %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 

movq 	$3, -488(%rbp)

mov 		-488(%rbp), %edx 
cltq 
mov 		f(,%rdx,8) , %r11
mov 		%r11, -496(%rbp) 

mov		$.SL15, %r10
mov	 	%r10, %rdi

movss		-496(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov	.FL16(%rip), %r10
mov	%r10, -504(%rbp)

mov		-504(%rbp), %r10
mov		%r10, -184(%rbp)

movq 	$0, -512(%rbp)

mov 		-184(%rbp), %r10 
mov 		-512(%rbp), %edx 
cltq 
mov 		%r10, f(, %rdx, 8) 

movq 	$0, -520(%rbp)

mov 		-520(%rbp), %edx 
cltq 
mov 		f(,%rdx,8) , %r11
mov 		%r11, -528(%rbp) 

mov		$.SL17, %r10
mov	 	%r10, %rdi

movss		-528(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

