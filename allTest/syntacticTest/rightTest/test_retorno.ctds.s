.text

.globl	id
.type	id, @function 
id: 
enter   $(8 * 36), $0 

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

movq 	$0, -88(%rbp)

mov		-8(%rbp), %rax
cmp		-88(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

movq 	$0, -104(%rbp)

mov		-8(%rbp), %rax
cmp		-104(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -112(%rbp)

cmpq		$0, -96(%rbp)
jne 		.L4
cmpq		$0, -112(%rbp)
je 		.L5
.L4: 
mov		$1, %r10
jmp 		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -120(%rbp)

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 		-120(%rbp), %r10

jne 		.endWhileL2

movq 	$0, -128(%rbp)

mov		-8(%rbp), %rax
cmp		-128(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -136(%rbp)

movq 	$1, -144(%rbp)

mov		-144(%rbp), %r10
cmp 		-136(%rbp), %r10

jne 		.falseCondL7

movq 	$1, -144(%rbp)

mov		-144(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %r10
mov		%r10, -8(%rbp)

jmp 		.endIfL8

.falseCondL7: 

movq 	$1, -160(%rbp)

mov		-8(%rbp), %r10 
mov		-160(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -168(%rbp)

mov		-168(%rbp), %r10
mov		%r10, -8(%rbp)

.endIfL8: 

jmp 		.beginWhileL3

.endWhileL2: 

.beginWhileL10: 

mov		-8(%rbp), %rax
cmp		-48(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -176(%rbp)

mov		-8(%rbp), %rax
cmp		-48(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -184(%rbp)

cmpq		$0, -176(%rbp)
jne 		.L11
cmpq		$0, -184(%rbp)
je 		.L12
.L11: 
mov		$1, %r10
jmp 		.L13
.L12:
mov		$0, %r10
.L13:
mov		%r10, -192(%rbp)

movq 	$1, -200(%rbp)

mov		-200(%rbp), %r10
cmp 		-192(%rbp), %r10

jne 		.endWhileL9

mov		-8(%rbp), %rax
cmp		-48(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -200(%rbp)

movq 	$1, -208(%rbp)

mov		-208(%rbp), %r10
cmp 		-200(%rbp), %r10

jne 		.falseCondL14

movq 	$1, -208(%rbp)

mov		-8(%rbp), %r10 
mov		-208(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -8(%rbp)

jmp 		.endIfL15

.falseCondL14: 

mov 		-8(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -224(%rbp)

movq 	$1, -232(%rbp)

mov		-232(%rbp), %r10
cmp 		-224(%rbp), %r10

jne 		.falseCondL16

movq 	$1, -232(%rbp)

mov		-232(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -240(%rbp)

mov		-32(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -248(%rbp)

mov		-32(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -256(%rbp)

mov		-256(%rbp), %r10 
mov		-248(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -264(%rbp)

mov		-240(%rbp), %r10 
mov		-264(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -272(%rbp)

mov		-272(%rbp), %r10
mov		%r10, -8(%rbp)

.falseCondL16: 

.endIfL15: 

jmp 		.beginWhileL10

.endWhileL9: 

mov		-40(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -280(%rbp)

mov		-32(%rbp), %r10 
mov		-280(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -288(%rbp)

mov		-288(%rbp), %r10
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

