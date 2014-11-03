.SL12: 
		.string "5.5 = %f \n" 

.FL11: 
		.float 5.5 

.SL10: 
		.string "3.3 = %f \n" 

.FL9: 
		.float 3.3 

.SL8: 
		.string "3 = %d \n" 

.SL7: 
		.string "3 = %d \n" 

.SL6: 
		.string "5.5 = %f \n" 

.FL5: 
		.float 5.5 

.SL4: 
		.string "3.3 = %f \n" 

.FL3: 
		.float 3.3 

.SL2: 
		.string "0 = %d \n" 

.SL1: 
		.string "3 = %d \n" 

.SL0: 
		.string "3 = %d \n" 

.text

.comm f, 8

.comm i, 8

.globl	main
.type	main, @function 
main: 
enter   $(8 * 18), $0 


movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

mov		$0, %r10
mov		%r10, f(%rip)

mov		$0, %r10
mov		%r10, i(%rip)

movq 	$3, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$3, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL1, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		i(%rip), %r10 
mov		%r10, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL3(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL4, %r10
mov	 	%r10, %rdi

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov	.FL5(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL6, %r10
mov	 	%r10, %rdi

movss		-24(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

movq 	$3, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, i(%rip)

mov 		i(%rip), %r10 
mov		%r10, -96(%rbp) 

mov		$.SL7, %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		-32(%rbp), %r10
mov		%r10, i(%rip)

mov 		i(%rip), %r10 
mov		%r10, -104(%rbp) 

mov		$.SL8, %r10
mov	 	%r10, %rdi

mov		-104(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL9(%rip), %r10
mov	%r10, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, f(%rip)

mov 		f(%rip), %r10 
mov		%r10, -120(%rbp) 

mov		$.SL10, %r10
mov	 	%r10, %rdi

movss		-120(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov	.FL11(%rip), %r10
mov	%r10, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, f(%rip)

mov 		f(%rip), %r10 
mov		%r10, -136(%rbp) 

mov		$.SL12, %r10
mov	 	%r10, %rdi

movss		-136(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

