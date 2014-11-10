.SL3: 
		.string "%f resultado : " 

.FL2: 
		.float 2.6 

.FL1: 
		.float 2.6 

.FL0: 
		.float 8.87 

.text

.comm A, 40

.comm B, 448

.comm C, 80

.comm y, 8

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(8 * 14), $0 

mov 		%rdi, -16(%rbp) 
movss 		%xmm0, -8(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

mov	.FL0(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$4, -64(%rbp)

movq 	$0, -72(%rbp)

mov 		-64(%rbp), %r10 
mov 		-72(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov	.FL1(%rip), %r10
mov	%r10, -80(%rbp)

movss		-80(%rbp), %xmm0 
addss		-32(%rbp), %xmm0 
movss		%xmm0, -88(%rbp) 

movq 	$55, -96(%rbp)

mov 		-88(%rbp), %r10 
mov 		-96(%rbp), %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

movq 	$0, -104(%rbp)

mov 		-104(%rbp), %edx 
cltq 
mov 		A(,%rdx,8) , %r11
mov 		%r11, -112(%rbp) 

mov		-112(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 12), $0 


mov 		$0, %r10 
mov 		$0, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$1, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$2, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$3, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 
mov 		$0, %r10 
mov 		$4, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov 		$0, %r10 
mov 		$0, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$1, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$2, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$3, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$4, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$6, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$7, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$8, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$9, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$10, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$11, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$12, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$13, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$14, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$15, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$16, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$17, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$18, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$19, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$20, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$21, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$22, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$23, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$24, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$25, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$26, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$27, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$28, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$29, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$30, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$31, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$32, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$33, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$34, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$35, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$36, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$37, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$38, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$39, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$40, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$41, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$42, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$43, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$44, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$45, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$46, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$47, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$48, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$49, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$50, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$51, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$52, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$53, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$54, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 
mov 		$0, %r10 
mov 		$55, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

mov 		$0, %r10 
mov 		$0, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$1, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$2, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$3, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$4, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$6, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$7, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$8, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 
mov 		$0, %r10 
mov 		$9, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

mov		$0, %r10
mov		%r10, y(%rip)

movq 	$1, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, y(%rip)

movq 	$64, -24(%rbp)

movq 	$1, -32(%rbp)

mov 		-24(%rbp), %r10 
mov 		-32(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov	.FL2(%rip), %r10
mov	%r10, -40(%rbp)

movq 	$0, -48(%rbp)

mov 		-40(%rbp), %r10 
mov 		-48(%rbp), %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

movq 	$0, -56(%rbp)

movq 	$2, -64(%rbp)

mov 		-56(%rbp), %r10 
mov 		-64(%rbp), %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$1, -72(%rbp)

movq 	$3, -80(%rbp)

mov 		-72(%rbp), %r10 
mov 		-80(%rbp), %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$0, -88(%rbp)

mov 		-88(%rbp), %edx 
cltq 
mov 		B(,%rdx,8) , %r11
mov 		%r11, -96(%rbp) 

mov		$.SL3, %r10
mov	 	%r10, %rdi

movss		-96(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

