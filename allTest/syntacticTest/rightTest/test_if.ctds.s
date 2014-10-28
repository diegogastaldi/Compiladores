.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 15), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

mov		-8(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.falseCondL0

mov		0(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -32(%rbp)

.falseCondL0: 

mov 		-8(%rbp), %rax
cmp		0(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.falseCondL1

movq 	$5, -96(%rbp)

mov		-8(%rbp), %r10 
mov		-96(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.endIfL2

.falseCondL1: 

mov		-8(%rbp), %r10 
mov		0(%rbp), %r11 
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
enter   $(8 * 15), $0 

movq 	$4, -16(%rbp)

movq 	$8, -24(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	pruAritmetica
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax 

call 	printf

movq 	$4, -56(%rbp)

movq 	$4, -64(%rbp)

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	pruAritmetica
mov 	%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

movq 	$8, -88(%rbp)

movq 	$5, -96(%rbp)

mov		-88(%rbp), %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	pruAritmetica
mov 	%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

