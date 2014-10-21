.L0L3: 
		.string "%d resultado : " 

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
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$8.87, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$4, -64(%rbp)

movq 	$0, -72(%rbp)

mov 		-64(%rbp), %r10 
mov 		-72(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

movq 	$2.6, -80(%rbp)

mov		-80(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -88(%rbp)

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
enter   $(8 * 42), $0 

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

movq 	$2.6, -64(%rbp)

mov		-64(%rbp), %rax 
neg		%rax 
mov		%rax, -72(%rbp) 

movq 	$0, -80(%rbp)

mov 		-72(%rbp), %r10 
mov 		-80(%rbp), %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

movq 	$4, -88(%rbp)

movq 	$6, -96(%rbp)

mov		-88(%rbp), %rax
cmp		-96(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -104(%rbp)

cmpq		$0, -104(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -112(%rbp) 

movq 	$2, -120(%rbp)

mov 		-112(%rbp), %r10 
mov 		-120(%rbp), %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$5, -128(%rbp)

movq 	$7, -136(%rbp)

movq 	$3, -144(%rbp)

movq 	$3, -152(%rbp)

mov		-144(%rbp), %r10 
mov		-152(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -160(%rbp)

mov		-160(%rbp), %r10 
mov		-136(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -168(%rbp)

mov 		-168(%rbp), %edx 
cltq 
mov 		A(,%rdx,8) , %r11
mov 		%r11, -176(%rbp) 

mov		-128(%rbp), %rax
cmp		-176(%rbp), %rax
setge 	%al
movzb 	%al, %rax
mov		%rax, -184(%rbp)

movq 	$1, -192(%rbp)

cmpq		$0, -184(%rbp)
jne 		.L0
cmpq		$0, -192(%rbp)
je 		.L1
.L0: 
mov		$1, %r10
jmp 		.L2
.L1:
mov		$0, %r10
.L2:
mov		%r10, -200(%rbp)

movq 	$3, -208(%rbp)

mov 		-200(%rbp), %r10 
mov 		-208(%rbp), %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$4, -224(%rbp)

movq 	$8, -240(%rbp)

movq 	$6, -248(%rbp)

mov		-240(%rbp), %r10 
mov		-248(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -256(%rbp)

movq 	$7, -264(%rbp)

movq 	$2, -272(%rbp)

mov		-272(%rbp), %rax 
cltd
idivq	-264(%rbp)
mov		%rax, -280(%rbp)

mov		-256(%rbp), %rax 
cltd
idivq	-280(%rbp) 
mov		%rax, -288(%rbp)

mov		-224(%rbp), %r10
mov	 	%r10, %rdi

mov		-288(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -304(%rbp) 

mov		$.L0L3, %r10
mov	 	%r10, %rdi

mov		-304(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -328(%rbp) 

mov 		$0, %rax
leave
ret

