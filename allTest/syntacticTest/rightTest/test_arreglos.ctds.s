.L0L9: 
		.string "%d" 

.text

.comm A, 4712

.comm B, 448

.comm C, 40

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(8 * 71), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -120(%rbp)

movl 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 	-120(%rbp), %r10

jne 		.falseCondL0

movl 	$1, -136(%rbp)

mov		-16(%rbp), %r10 
mov		-136(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -144(%rbp)

movl 	$0, -152(%rbp)

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

movl 	$1, -168(%rbp)

mov		-168(%rbp), %r10
cmp 	-160(%rbp), %r10

jne 		.falseCondL1

movl 	$5, -176(%rbp)

mov		-24(%rbp), %r10 
mov		-176(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -184(%rbp)

movl 	$1, -192(%rbp)

movl 	$1, -200(%rbp)

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

movl 	$0, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -96(%rbp)

.beginWhileL4: 

movl 	$589, -232(%rbp)

mov		-96(%rbp), %rax
cmp		-232(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -240(%rbp)

movl 	$1, -248(%rbp)

mov		-248(%rbp), %r10
cmp 	-240(%rbp), %r10

jne 		.endWhileL3

movl 	$2, -256(%rbp)

mov		-96(%rbp), %r10 
mov		-256(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -264(%rbp)

mov 		-264(%rbp), %r10 
mov 		-96(%rbp), %edx 
imul		$8, %edx 
cltq 
mov 		%r10, A(, %edx, 8) 

movl 	$1, -272(%rbp)

movl 	$1, -288(%rbp)

mov		-272(%rbp), %r10 
mov		-288(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -280(%rbp)

mov		-280(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL4

.endWhileL3: 

movl 	$8, -296(%rbp)

mov		-296(%rbp), %r10
mov		%r10, -96(%rbp)

.beginWhileL6: 

movl 	$0, -304(%rbp)

mov		-96(%rbp), %rax
cmp		-304(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -312(%rbp)

movl 	$1, -320(%rbp)

mov		-320(%rbp), %r10
cmp 	-312(%rbp), %r10

jne 		.endWhileL5

movl 	$2, -328(%rbp)

movl 	$8, -336(%rbp)

mov		-328(%rbp), %r10 
mov		-336(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -344(%rbp)

mov		-96(%rbp), %r10 
mov		-344(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -352(%rbp)

mov 		-352(%rbp), %edx 
imul		$8, %edx 
cltq 
mov 		A(,%edx,8) , %r11
mov 		%r11, -360(%rbp) 

movl 	$3, -368(%rbp)

mov		-360(%rbp), %r10 
mov		-368(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -376(%rbp)

mov 		-376(%rbp), %r10 
mov 		-96(%rbp), %edx 
imul		$8, %edx 
cltq 
mov 		%r10, B(, %edx, 8) 

movl 	$1, -384(%rbp)

movl 	$1, -400(%rbp)

mov		-400(%rbp), %r10 
mov		-384(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -392(%rbp)

mov		-392(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL6

.endWhileL5: 

movl 	$0, -408(%rbp)

mov		-408(%rbp), %r10
mov		%r10, -96(%rbp)

.beginWhileL8: 

movl 	$5, -416(%rbp)

movl 	$9, -424(%rbp)

mov		-416(%rbp), %r10 
mov		-424(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -432(%rbp)

movl 	$40, -440(%rbp)

mov		-440(%rbp), %r10 
mov		-432(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -448(%rbp)

mov		-96(%rbp), %rax
cmp		-448(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -456(%rbp)

movl 	$1, -464(%rbp)

mov		-464(%rbp), %r10
cmp 	-456(%rbp), %r10

jne 		.endWhileL7

movl 	$2, -472(%rbp)

movl 	$8, -480(%rbp)

mov		-472(%rbp), %r10 
mov		-480(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -488(%rbp)

mov		-96(%rbp), %r10 
mov		-488(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -496(%rbp)

mov 		-496(%rbp), %edx 
imul		$8, %edx 
cltq 
mov 		A(,%edx,8) , %r11
mov 		%r11, -504(%rbp) 

mov 		-96(%rbp), %edx 
imul		$8, %edx 
cltq 
mov 		B(,%edx,8) , %r11
mov 		%r11, -512(%rbp) 

mov		-504(%rbp), %rax
cmp		-512(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -520(%rbp)

movl 	$1, -536(%rbp)

mov		-520(%rbp), %r10 
mov		-536(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -528(%rbp)

mov 		-528(%rbp), %r10 
mov 		-96(%rbp), %edx 
imul		$8, %edx 
cltq 
mov 		%r10, C(, %edx, 8) 

movl 	$1, -544(%rbp)

mov		-96(%rbp), %r10 
mov		-544(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -552(%rbp)

mov		-552(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL8

.endWhileL7: 

movl 	$0, -560(%rbp)

movl		-560(%rbp), %edx 
cltq 
mov 		-32(%rbp,%rdx,8) , %r11
mov 		%r11, -568(%rbp) 

mov		-568(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 11), $0 

movl 	$4, -24(%rbp)

movl 	$8, -40(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -56(%rbp) 

mov		$.L0L9, %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -80(%rbp) 

mov 		$0, %rax
leave
ret

