.SL6: 
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
enter   $(8 * 16), $0 
mov 		%rdi, -8(%rbp) 
movss 		%xmm0, -16(%rbp) 

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
enter   $(8 * 30), $0 

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

movq 	$58, -24(%rbp)

movq 	$6, -32(%rbp)

mov		-32(%rbp), %rax 
neg		%rax 
mov		%rax, -40(%rbp) 

mov		-40(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -48(%rbp)

movq 	$1, -56(%rbp)

mov 		-48(%rbp), %r10 
mov 		-56(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov	.FL2(%rip), %r10
mov	%r10, -64(%rbp)

movq 	$0, -72(%rbp)

mov 		-64(%rbp), %r10 
mov 		-72(%rbp), %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

movq 	$4, -80(%rbp)

movq 	$6, -88(%rbp)

mov		-80(%rbp), %rax
cmp		-88(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -96(%rbp)

cmpq		$0, -96(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -104(%rbp) 

movq 	$2, -112(%rbp)

mov 		-104(%rbp), %r10 
mov 		-112(%rbp), %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$5, -120(%rbp)

movq 	$7, -128(%rbp)

movq 	$3, -136(%rbp)

movq 	$3, -144(%rbp)

mov		-136(%rbp), %r10 
mov		-144(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %r10 
mov		-128(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -160(%rbp)

mov 		-160(%rbp), %edx 
cltq 
mov 		A(,%rdx,8) , %r11
mov 		%r11, -168(%rbp) 

mov		-120(%rbp), %rax
cmp		-168(%rbp), %rax
setge 	%al
movzb 	%al, %rax
mov		%rax, -176(%rbp)

movq 	$1, -184(%rbp)

cmpq		$0, -176(%rbp)
jne 		.L3
cmpq		$0, -184(%rbp)
je 		.L4
.L3: 
mov		$1, %r10
jmp 		.L5
.L4:
mov		$0, %r10
.L5:
mov		%r10, -192(%rbp)

movq 	$3, -200(%rbp)

mov 		-192(%rbp), %r10 
mov 		-200(%rbp), %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$0, -208(%rbp)

mov 		-208(%rbp), %edx 
cltq 
mov 		B(,%rdx,8) , %r11
mov 		%r11, -216(%rbp) 

mov		$.SL6, %r10
mov	 	%r10, %rdi

movss		-216(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

