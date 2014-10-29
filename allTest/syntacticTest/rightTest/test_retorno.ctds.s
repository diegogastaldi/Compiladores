.text

.globl	id
.type	id, @function 
id: 
enter   $(8 * 42), $0 
mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq 	$100, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL1: 

mov		-32(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.endWhileL0

mov		-8(%rbp), %r10
mov		%r10, -48(%rbp)

.beginWhileL3: 

movq 	$0, -96(%rbp)

mov		-8(%rbp), %rax
cmp		-96(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -104(%rbp)

movq 	$0, -112(%rbp)

mov		-8(%rbp), %rax
cmp		-112(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -120(%rbp)

cmpq		$0, -104(%rbp)
jne 		.L4
cmpq		$0, -120(%rbp)
je 		.L5
.L4: 
mov		$1, %r10
jmp 		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -128(%rbp)

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10
cmp 		-128(%rbp), %r10

jne 		.endWhileL2

movq 	$0, -144(%rbp)

mov		-8(%rbp), %rax
cmp		-144(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.falseCondL7

movq 	$1, -168(%rbp)

mov		-168(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -176(%rbp)

mov		-176(%rbp), %r10
mov		%r10, -8(%rbp)

jmp 		.endIfL8

.falseCondL7: 

movq 	$1, -184(%rbp)

mov		-8(%rbp), %r10 
mov		-184(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -8(%rbp)

.endIfL8: 

jmp 		.beginWhileL3

.endWhileL2: 

.beginWhileL10: 

mov		-8(%rbp), %rax
cmp		-48(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -200(%rbp)

mov		-8(%rbp), %rax
cmp		-48(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -208(%rbp)

cmpq		$0, -200(%rbp)
jne 		.L11
cmpq		$0, -208(%rbp)
je 		.L12
.L11: 
mov		$1, %r10
jmp 		.L13
.L12:
mov		$0, %r10
.L13:
mov		%r10, -216(%rbp)

movq 	$1, -224(%rbp)

mov		-224(%rbp), %r10
cmp 		-216(%rbp), %r10

jne 		.endWhileL9

mov		-8(%rbp), %rax
cmp		-48(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -232(%rbp)

movq 	$1, -240(%rbp)

mov		-240(%rbp), %r10
cmp 		-232(%rbp), %r10

jne 		.falseCondL14

movq 	$1, -248(%rbp)

mov		-8(%rbp), %r10 
mov		-248(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -256(%rbp)

mov		-256(%rbp), %r10
mov		%r10, -8(%rbp)

jmp 		.endIfL15

.falseCondL14: 

mov 		-8(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -264(%rbp)

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
cmp 		-264(%rbp), %r10

jne 		.falseCondL16

movq 	$1, -280(%rbp)

mov		-32(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -288(%rbp)

mov		-288(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -296(%rbp)

mov		-32(%rbp), %r10 
mov		-296(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -304(%rbp)

mov		-280(%rbp), %r10 
mov		-304(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -312(%rbp)

mov		-312(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -320(%rbp)

mov		-320(%rbp), %r10
mov		%r10, -8(%rbp)

.falseCondL16: 

.endIfL15: 

jmp 		.beginWhileL10

.endWhileL9: 

mov		-40(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -328(%rbp)

mov		-32(%rbp), %r10 
mov		-328(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -336(%rbp)

mov		-336(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL1

.endWhileL0: 

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 

movq 	$9, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	id
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

