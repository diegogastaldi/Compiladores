.L0L6: 
		.string "%d" 

.L0L5: 
		.string "entro al while con %d" 

.text

.comm A, 4712

.comm B, 448

.comm C, 40

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(8 * 40), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

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

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -120(%rbp)

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 		-120(%rbp), %r10

jne 		.falseCondL0

movq 	$1, -136(%rbp)

mov		-16(%rbp), %r10 
mov		-136(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -144(%rbp)

movq 	$0, -152(%rbp)

mov 		-144(%rbp), %r10 
movl		-152(%rbp), %edx 
cltq 
mov 		%r10, -32(%rbp, %rdx, 8) 

.falseCondL0: 

mov 		-24(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -160(%rbp)

movq 	$1, -168(%rbp)

mov		-168(%rbp), %r10
cmp 		-160(%rbp), %r10

jne 		.falseCondL1

movq 	$5, -176(%rbp)

mov		-24(%rbp), %r10 
mov		-176(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -184(%rbp)

movq 	$1, -192(%rbp)

movq 	$1, -200(%rbp)

mov		-200(%rbp), %r10 
mov		-192(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -208(%rbp)

mov 		-184(%rbp), %r10 
movl		-208(%rbp), %edx 
cltq 
mov 		%r10, -32(%rbp, %rdx, 8) 

jmp 		.endIfL2

.falseCondL1: 

mov		-24(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -216(%rbp)

mov 		-16(%rbp), %r10 
movl		-216(%rbp), %edx 
cltq 
mov 		%r10, -32(%rbp, %rdx, 8) 

.endIfL2: 

movq 	$0, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -96(%rbp)

.beginWhileL4: 

movq 	$589, -232(%rbp)

mov		-96(%rbp), %rax
cmp		-232(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -240(%rbp)

movq 	$1, -248(%rbp)

mov		-248(%rbp), %r10
cmp 		-240(%rbp), %r10

jne 		.endWhileL3

mov		$.L0L5, %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -272(%rbp) 

mov 		-96(%rbp), %r10 
mov 		-96(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

movq 	$1, -288(%rbp)

mov		-288(%rbp), %r10 
mov		-96(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -296(%rbp)

mov		-296(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL4

.endWhileL3: 

movq 	$1, -304(%rbp)

mov		-304(%rbp), %r10 
mov		-96(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -312(%rbp)

mov 		-312(%rbp), %edx 
cltq 
mov 		A(,%rdx,8) , %r11
mov 		%r11, -320(%rbp) 

mov		-320(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 11), $0 

mov 		$0, %r10 
mov 		$589, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov 		$0, %r10 
mov 		$56, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$4, -24(%rbp)

movq 	$8, -40(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -56(%rbp) 

mov		$.L0L6, %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -80(%rbp) 

mov 		$0, %rax
leave
ret

