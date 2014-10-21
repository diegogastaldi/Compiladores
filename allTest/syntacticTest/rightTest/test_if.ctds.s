.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 14), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.falseCondL0

mov		-16(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -32(%rbp)

.falseCondL0: 

mov 		-24(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.falseCondL1

movq 	$5, -96(%rbp)

mov		-24(%rbp), %r10 
mov		-96(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.endIfL2

.falseCondL1: 

mov		-24(%rbp), %r10 
mov		-16(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL2: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 30), $0 

movq 	$4, -16(%rbp)

movq 	$8, -32(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -48(%rbp) 

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -72(%rbp) 

mov 		$0, %rax 
call 	printf
mov 	%rax, -88(%rbp) 

movq 	$4, -104(%rbp)

movq 	$4, -120(%rbp)

mov		-104(%rbp), %r10
mov	 	%r10, %rdi

mov		-120(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -136(%rbp) 

mov		-136(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -160(%rbp) 

movq 	$8, -176(%rbp)

movq 	$5, -192(%rbp)

mov		-176(%rbp), %r10
mov	 	%r10, %rdi

mov		-192(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -208(%rbp) 

mov		-208(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -232(%rbp) 

mov 		$0, %rax
leave
ret

