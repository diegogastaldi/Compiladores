.text

.globl	pruContinue
.type	pruContinue, @function 
pruContinue: 
enter   $(8 * 32), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq 	$1.0, -72(%rbp)

mov		-72(%rbp), %rax 
neg		%rax 
mov		%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$23, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$23.0, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL1: 

movq 	$0, -104(%rbp)

mov		-32(%rbp), %rax
cmp		-104(%rbp), %rax
setge 	%al
movzb 	%al, %rax
mov		%rax, -112(%rbp)

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.endWhileL0

movq 	$1.0, -128(%rbp)

mov		-128(%rbp), %r10 
mov		-32(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$2.0, -144(%rbp)

mov		-24(%rbp), %rax
cmp		-144(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -152(%rbp)

movq 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 		-152(%rbp), %r10

jne 		.falseCondL2

movq 	$0.0, -168(%rbp)

mov		-32(%rbp), %rax
cmp		-168(%rbp), %rax
setne 	%al
movzb 	%al, %rax
mov		%rax, -176(%rbp)

movq 	$1, -184(%rbp)

mov		-184(%rbp), %r10
cmp 		-176(%rbp), %r10

jne 		.falseCondL3

mov		-24(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -192(%rbp)

mov		-48(%rbp), %r10 
mov		-192(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -200(%rbp)

mov		-200(%rbp), %r10
mov		%r10, -48(%rbp)

.falseCondL3: 

jmp 		.beginWhileL1

jmp 		.endIfL4

.falseCondL2: 

movq 	$1000.2343, -208(%rbp)

mov		-208(%rbp), %rax 
neg		%rax 
mov		%rax, -216(%rbp) 

movq 	$6752.0, -224(%rbp)

mov		-216(%rbp), %r10 
mov		-224(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.endWhileL0

.endIfL4: 

jmp 		.beginWhileL1

.endWhileL0: 

movq 	$2.0, -240(%rbp)

mov		-240(%rbp), %r10 
mov		-48(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -248(%rbp)

mov		-248(%rbp), %rax 
neg		%rax 
mov		%rax, -256(%rbp) 

mov		-256(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 10), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruContinue
mov 	%rax, -48(%rbp) 

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -72(%rbp) 

mov 		$0, %rax
leave
ret

