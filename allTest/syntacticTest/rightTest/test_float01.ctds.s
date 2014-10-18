.L0L5: 
		.string "%f" 

.text

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(8 * 27), $0 
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

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -128(%rbp) 

mov		-128(%rbp), %r10
mov		%r10, -40(%rbp)

.falseCondL0: 

.beginWhileL2: 

mov		-32(%rbp), %rax
cmp		-16(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -136(%rbp)

movq 	$1, -144(%rbp)

mov		-144(%rbp), %r10
cmp 	-136(%rbp), %r10

jne 		.endWhileL1

mov		-48(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -152(%rbp)

mov		-152(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -160(%rbp)

mov		-32(%rbp), %r10 
mov		-160(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -168(%rbp)

mov		-168(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL2

.endWhileL1: 

cmpq		$0, -40(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -176(%rbp) 

movq 	$1, -184(%rbp)

mov		-184(%rbp), %r10
cmp 	-176(%rbp), %r10

jne 		.falseCondL3

movq 	$1.0, -192(%rbp)

mov		-192(%rbp), %rax 
cltd
idivq	-48(%rbp) 
mov		%rax, -200(%rbp)

mov		-200(%rbp), %rax
leave
ret

jmp 		.endIfL4

.falseCondL3: 

mov		-48(%rbp), %rax
leave
ret

.endIfL4: 

movq 	$100.1, -208(%rbp)

mov		-208(%rbp), %rax 
neg		%rax 
mov		%rax, -216(%rbp) 

mov		-216(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 13), $0 

movq 	$8.0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$2, -48(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	potencia
mov 	%rax, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.L0L5, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -96(%rbp) 

mov 		$0, %rax
leave
ret

