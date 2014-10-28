.SL2: 
		.string "%d resultado : " 

.text

.comm A, 40

.comm B, 448

.comm C, 80

.globl	par
.type	par, @function 
par: 
enter   $(8 * 3), $0 

movq 	$15, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(8 * 18), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$2, -56(%rbp)

movq 	$0, -64(%rbp)

mov 		-56(%rbp), %r10 
mov 		-64(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

movq 	$1, -72(%rbp)

mov 		-72(%rbp), %edx 
cltq 
mov 		A(,%rdx,8) , %r11
mov 		%r11, -80(%rbp) 

mov		-80(%rbp), %rax
leave
ret

movq 	$1, -88(%rbp)

mov 		$0, %rax 

call 	par
mov 	%rax, -96(%rbp) 

mov 		$0, %rax 

call 	par
mov 	%rax, -104(%rbp) 

movq 	$5, -112(%rbp)

mov		-104(%rbp), %r10 
mov		-112(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -120(%rbp)

jmp 		.endForL0

.beginForL1: 

movq 	$2, -128(%rbp)

mov		-32(%rbp), %r10 
mov		-128(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -136(%rbp)

mov 		-136(%rbp), %r10 
mov 		-32(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov		-96(%rbp), %r10 
mov		-88(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

.endForL0: 

mov		-96(%rbp), %r10
cmp 		-120(%rbp), %r10

jle 		.beginForL1

.globl	main
.type	main, @function 
main: 
enter   $(8 * 6), $0 

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

movq 	$4, -16(%rbp)

movq 	$8, -24(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	pruArreglos
mov 	%rax, -32(%rbp) 

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

