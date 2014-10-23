.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
enter   $(8 * 14), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setne 	%al
movzb 	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.falseCondL0

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
cmp 		-72(%rbp), %r10

jne 		.falseCondL1

mov		-16(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.endIfL2

.falseCondL1: 

mov		-24(%rbp), %r10 
mov		-16(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL2: 

jmp 		.endIfL3

.falseCondL0: 

movq 	$5, -104(%rbp)

mov		-24(%rbp), %r10 
mov		-104(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL3: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 24), $0 

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
mov 	%rax, -56(%rbp) 

mov 		$0, %rax 
call 	printf
mov 	%rax, -72(%rbp) 

movq 	$4, -88(%rbp)

movq 	$4, -96(%rbp)

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
mov 	%rax, -128(%rbp) 

movq 	$8, -144(%rbp)

movq 	$5, -152(%rbp)

mov		-144(%rbp), %r10
mov	 	%r10, %rdi

mov		-152(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruAritmetica
mov 	%rax, -160(%rbp) 

mov		-160(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -184(%rbp) 

mov 		$0, %rax
leave
ret
