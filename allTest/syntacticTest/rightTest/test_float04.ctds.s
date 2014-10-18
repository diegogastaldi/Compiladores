.L0L8: 
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
movzb %al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 	-104(%rbp), %r10

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
movzb %al, %rax
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
cmp 	-152(%rbp), %r10

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
cmp 	-216(%rbp), %r10

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

.globl	multRepeat
.type	multRepeat, @function 
multRepeat: 
enter   $(8 * 11), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

mov		-24(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -56(%rbp)

mov		-24(%rbp), %r10 
mov		-56(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -64(%rbp)

mov		-24(%rbp), %r10 
mov		-64(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -72(%rbp)

mov		-16(%rbp), %r10 
mov		-72(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -80(%rbp)

mov		-16(%rbp), %r10 
mov		-80(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 23), $0 

movq 	$15.0, -32(%rbp)

mov		-32(%rbp), %rax 
neg		%rax 
mov		%rax, -40(%rbp) 

mov		-40(%rbp), %r10
mov		%r10, res(%rip)

movq 	$4.3, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, w(%rip)

movq 	$7.6, -56(%rbp)

mov		-56(%rbp), %rax 
neg		%rax 
mov		%rax, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, m(%rip)

movq 	$80.0, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

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

mov 		res(%rip), %r10 
mov		%r10, -128(%rbp) 

mov		-128(%rbp), %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	multRepeat
mov 	%rax, -152(%rbp) 

mov		$.L0L8, %r10
mov	 	%r10, %rdi

mov		-152(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -176(%rbp) 

mov 		$0, %rax
leave
ret

