.text

.globl	suma
.type	suma, @function 
suma: 
enter   $(8 * 12), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq 	$0, -48(%rbp)

mov 		-24(%rbp), %rax
cmp		-48(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.falseCondL0

mov		-16(%rbp), %rax
leave
ret

jmp 		.endIfL1

.falseCondL0: 

movq 	$0, -72(%rbp)

mov 		-16(%rbp), %rax
cmp		-72(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.falseCondL2

mov		-24(%rbp), %rax
leave
ret

jmp 		.endIfL3

.falseCondL2: 

mov		-24(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %rax
leave
ret

.endIfL3: 

.endIfL1: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 8), $0 

movq 	$4, -16(%rbp)

movq 	$9, -24(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	suma
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -56(%rbp) 

mov 		$0, %rax
leave
ret
