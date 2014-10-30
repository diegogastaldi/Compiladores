.SL5: 
		.string "3.3 = %f \n" 

.SL4: 
		.string "3.3 = %f \n" 

.FL3: 
		.float 3.3 

.SL2: 
		.string "3 = %d \n" 

.SL1: 
		.string "3 = %d \n" 

.SL0: 
		.string "3 = %d \n" 

.text

.comm f, 80

.comm i, 80

.globl	main
.type	main, @function 
main: 
enter   $(8 * 46), $0 

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

mov		-216(%rbp), %r10
mov		%r10, -176(%rbp)

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov		-176(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$3, -232(%rbp)

movq 	$1, -240(%rbp)

mov		-240(%rbp), %r10 
mov		-232(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -248(%rbp)

movl		-248(%rbp), %edx 
cltq 
mov 		-88(%rbp,%rdx,8) , %r11
mov 		%r11, -256(%rbp) 

mov		-256(%rbp), %r10
mov		%r10, -176(%rbp)

mov		$.SL1, %r10
mov	 	%r10, %rdi

mov		-176(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10 
mov		-176(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -280(%rbp)

movl		-280(%rbp), %edx 
cltq 
mov 		-88(%rbp,%rdx,8) , %r11
mov 		%r11, -288(%rbp) 

mov		-288(%rbp), %r10
mov		%r10, -176(%rbp)

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-176(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL3(%rip), %r10
mov	%r10, -304(%rbp)

movq 	$2, -312(%rbp)

mov 		-304(%rbp), %r10 
movl		-312(%rbp), %edx 
cltq 
mov 		%r10, -168(%rbp, %rdx, 8) 

movq 	$2, -320(%rbp)

movl		-320(%rbp), %edx 
cltq 
mov 		-168(%rbp,%rdx,8) , %r11
mov 		%r11, -328(%rbp) 

mov		-328(%rbp), %r10
mov		%r10, -184(%rbp)

mov		$.SL4, %r10
mov	 	%r10, %rdi

movss		-184(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movq 	$1, -344(%rbp)

mov		-344(%rbp), %r10 
mov		-176(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -352(%rbp)

movl		-352(%rbp), %edx 
cltq 
mov 		-168(%rbp,%rdx,8) , %r11
mov 		%r11, -360(%rbp) 

mov		-360(%rbp), %r10
mov		%r10, -184(%rbp)

mov		$.SL5, %r10
mov	 	%r10, %rdi

movss		-184(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

