.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(8 * 28), $0 
mov 		%rdi, -16(%rbp) 

movq 	$50, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$0, -64(%rbp)

mov		-40(%rbp), %rax
cmp		-64(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
cmp 	-72(%rbp), %r10

jne 		.falseCondL0

movq 	$4, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$4, -96(%rbp)

mov 		-24(%rbp), %rax
cmp		-96(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 	-104(%rbp), %r10

jne 		.falseCondL1

.beginWhileL3: 

movq 	$4, -120(%rbp)

mov		-24(%rbp), %rax
cmp		-120(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -128(%rbp)

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10
cmp 	-128(%rbp), %r10

jne 		.endWhileL2

.beginWhileL5: 

movq 	$4, -144(%rbp)

mov		-40(%rbp), %rax
cmp		-144(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 	-152(%rbp), %r10

jne 		.endWhileL4

movq 	$1, -168(%rbp)

mov		-168(%rbp), %r10 
mov		-40(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -176(%rbp)

mov		-176(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$2, -184(%rbp)

mov		-24(%rbp), %r10 
mov		-184(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL5

.endWhileL4: 

movq 	$1, -200(%rbp)

mov		-24(%rbp), %r10 
mov		-200(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2, -216(%rbp)

mov		-32(%rbp), %rax 
cltd
idivq	-216(%rbp) 
mov		%rax, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

.falseCondL1: 

.falseCondL0: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 8), $0 

movq 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	prueba
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -56(%rbp) 

mov 		$0, %rax
leave
ret

