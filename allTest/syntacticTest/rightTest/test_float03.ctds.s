.L0L27: 
		.string "%f" 

.text

.comm w, 8

.comm m, 8

.comm res, 8

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(8 * 32), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq 	$0, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1.0, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$0, -96(%rbp)

mov		-16(%rbp), %rax
cmp		-96(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.falseCondL0

mov		-16(%rbp), %rax 
neg		%rax 
mov		%rax, -120(%rbp) 

mov		-120(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL0: 

.beginWhileL2: 

mov		-32(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -136(%rbp)

mov 		-32(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -144(%rbp)

cmpq		$0, -136(%rbp)
jne 		.L3
cmpq		$0, -144(%rbp)
je 		.L4
.L3: 
mov		$1, %r10
jmp 		.L5
.L4:
mov		$0, %r10
.L5:
mov		%r10, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.endWhileL1

movq 	$2.0, -168(%rbp)

mov		-24(%rbp), %r10 
mov		-168(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -176(%rbp)

mov		-48(%rbp), %r10 
mov		-176(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -184(%rbp)

mov		-184(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -192(%rbp)

mov		-32(%rbp), %r10 
mov		-192(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL2

.endWhileL1: 

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -208(%rbp) 

cmpq		$0, -208(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -216(%rbp) 

movq 	$1, -224(%rbp)

mov		-224(%rbp), %r10
cmp 		-216(%rbp), %r10

jne 		.falseCondL6

movq 	$1.0, -232(%rbp)

mov		-232(%rbp), %rax 
cltd
idivq	-48(%rbp) 
mov		%rax, -240(%rbp)

mov		-240(%rbp), %rax
leave
ret

jmp 		.endIfL7

.falseCondL6: 

mov		-48(%rbp), %rax
leave
ret

.endIfL7: 

movq 	$100.1, -248(%rbp)

mov		-248(%rbp), %rax 
neg		%rax 
mov		%rax, -256(%rbp) 

mov		-256(%rbp), %rax
leave
ret

.globl	multiples
.type	multiples, @function 
multiples: 
enter   $(8 * 81), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

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

movq 	$20.0, -128(%rbp)

mov		-128(%rbp), %rax 
neg		%rax 
mov		%rax, -136(%rbp) 

mov		-136(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$2, -144(%rbp)

mov		-144(%rbp), %rax 
neg		%rax 
mov		%rax, -152(%rbp) 

mov		-152(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$3.0, -160(%rbp)

mov		-160(%rbp), %rax 
neg		%rax 
mov		%rax, -168(%rbp) 

mov		-168(%rbp), %r10
mov		%r10, -56(%rbp)

movq 	$3.0, -176(%rbp)

mov		-176(%rbp), %rax 
neg		%rax 
mov		%rax, -184(%rbp) 

mov		-184(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-56(%rbp), %r10 
mov		-40(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -192(%rbp)

mov		-32(%rbp), %r10 
mov		-192(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -64(%rbp)

movq 	$0, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -80(%rbp)

movq 	$0, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -104(%rbp)

movq 	$0, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$5, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -88(%rbp)

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -240(%rbp)

movq 	$1, -248(%rbp)

mov		-248(%rbp), %r10
cmp 		-240(%rbp), %r10

jne 		.falseCondL8

mov		-64(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -256(%rbp)

movq 	$1, -264(%rbp)

mov		-264(%rbp), %r10
cmp 		-256(%rbp), %r10

jne 		.falseCondL9

mov		-24(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL10

.falseCondL9: 

mov		-16(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL10: 

jmp 		.endIfL11

.falseCondL8: 

.beginWhileL13: 

mov		-80(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -272(%rbp)

movq 	$1, -280(%rbp)

mov		-280(%rbp), %r10
cmp 		-272(%rbp), %r10

jne 		.endWhileL12

.beginWhileL15: 

mov		-104(%rbp), %rax
cmp		-88(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -288(%rbp)

movq 	$1, -296(%rbp)

mov		-296(%rbp), %r10
cmp 		-288(%rbp), %r10

jne 		.endWhileL14

.beginWhileL17: 

mov		-96(%rbp), %rax
cmp		-88(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -304(%rbp)

mov 		-96(%rbp), %rax
cmp		-88(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -312(%rbp)

cmpq		$0, -304(%rbp)
jne 		.L18
cmpq		$0, -312(%rbp)
je 		.L19
.L18: 
mov		$1, %r10
jmp 		.L20
.L19:
mov		$0, %r10
.L20:
mov		%r10, -320(%rbp)

movq 	$1, -328(%rbp)

mov		-328(%rbp), %r10
cmp 		-320(%rbp), %r10

jne 		.endWhileL16

movq 	$3, -336(%rbp)

mov 		-48(%rbp), %rax
cmp		-336(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -344(%rbp)

movq 	$1, -352(%rbp)

mov		-352(%rbp), %r10
cmp 		-344(%rbp), %r10

jne 		.falseCondL21

movq 	$2.0, -360(%rbp)

mov		-72(%rbp), %r10 
mov		-360(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -368(%rbp)

mov		-368(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL22

.falseCondL21: 

movq 	$10.0, -376(%rbp)

movq 	$2.0, -384(%rbp)

mov		-376(%rbp), %rax 
cltd
idivq	-384(%rbp) 
mov		%rax, -392(%rbp)

mov		-392(%rbp), %r10 
mov		-72(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -400(%rbp)

mov		-400(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL22: 

movq 	$1, -408(%rbp)

mov		-408(%rbp), %r10 
mov		-96(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -416(%rbp)

mov		-416(%rbp), %r10
mov		%r10, -96(%rbp)

jmp 		.beginWhileL17

.endWhileL16: 

mov		-32(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -424(%rbp)

movq 	$0.0, -432(%rbp)

mov		-432(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -440(%rbp)

cmpq		$0, -424(%rbp)
je 		.L23
cmpq		$0, -440(%rbp)
je 		.L23
mov		$1, %r10
jmp		.L24
.L23:
mov		$0, %r10
.L24:
mov		%r10, -448(%rbp)

movq 	$1, -456(%rbp)

mov		-456(%rbp), %r10
cmp 		-448(%rbp), %r10

jne 		.falseCondL25

movq 	$35.0, -464(%rbp)

movq 	$4.0, -472(%rbp)

movq 	$498.0, -480(%rbp)

mov		-480(%rbp), %r10 
mov		-72(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -488(%rbp)

mov		-472(%rbp), %r10 
mov		-488(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -496(%rbp)

mov		-464(%rbp), %r10 
mov		-496(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -504(%rbp)

mov		-504(%rbp), %r10
mov		%r10, -72(%rbp)

jmp 		.endIfL26

.falseCondL25: 

movq 	$3.2, -512(%rbp)

movq 	$12345.356, -520(%rbp)

mov		-520(%rbp), %r10 
mov		-72(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -528(%rbp)

mov		-528(%rbp), %r10 
mov		-512(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -536(%rbp)

mov		-536(%rbp), %r10
mov		%r10, -72(%rbp)

.endIfL26: 

movq 	$1, -544(%rbp)

mov		-104(%rbp), %r10 
mov		-544(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -552(%rbp)

mov		-552(%rbp), %r10
mov		%r10, -104(%rbp)

jmp 		.beginWhileL15

.endWhileL14: 

mov		-24(%rbp), %rax 
neg		%rax 
mov		%rax, -560(%rbp) 

movq 	$23.0, -568(%rbp)

movq 	$2.0, -576(%rbp)

movq 	$4.0, -584(%rbp)

mov		-576(%rbp), %rax 
cltd
idivq	-584(%rbp) 
mov		%rax, -592(%rbp)

mov		-16(%rbp), %r10 
mov		-592(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -600(%rbp)

mov		-568(%rbp), %r10 
mov		-600(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -608(%rbp)

mov		-560(%rbp), %r10 
mov		-608(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -616(%rbp)

mov		-72(%rbp), %r10 
mov		-616(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -624(%rbp)

mov		-624(%rbp), %r10
mov		%r10, -72(%rbp)

movq 	$1, -632(%rbp)

mov		-80(%rbp), %r10 
mov		-632(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -640(%rbp)

mov		-640(%rbp), %r10
mov		%r10, -80(%rbp)

jmp 		.beginWhileL13

.endWhileL12: 

.endIfL11: 

mov		-72(%rbp), %rax 
neg		%rax 
mov		%rax, -648(%rbp) 

mov		-648(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 24), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$80.0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$15.0, -40(%rbp)

mov		-40(%rbp), %rax 
neg		%rax 
mov		%rax, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, res(%rip)

movq 	$4.3, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, w(%rip)

movq 	$7.6, -64(%rbp)

mov		-64(%rbp), %rax 
neg		%rax 
mov		%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, m(%rip)

movq 	$2, -88(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-88(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	potencia
mov 	%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$2.0, -136(%rbp)

mov		-16(%rbp), %r10 
mov		-136(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -144(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-144(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	multiples
mov 	%rax, -160(%rbp) 

mov		$.L0L27, %r10
mov	 	%r10, %rdi

mov		-160(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -184(%rbp) 

mov 		$0, %rax
leave
ret

