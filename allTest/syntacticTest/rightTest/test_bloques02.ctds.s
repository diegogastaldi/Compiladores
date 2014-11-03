.SL5: 
		.string "%d resultado : " 

.FL2: 
		.float 2.3 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(8 * 16), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$0, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL1: 

movq 	$10, -56(%rbp)

mov		-24(%rbp), %rax
cmp		-56(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -64(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 		-64(%rbp), %r10

jne 		.endWhileL0

movq 	$1, -80(%rbp)

mov		-24(%rbp), %r10 
mov		-80(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -24(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$0, -104(%rbp)

mov		-8(%rbp), %rax
cmp		-104(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -112(%rbp)

movq 	$1, -120(%rbp)

mov		-120(%rbp), %r10
cmp 		-112(%rbp), %r10

jne 		.falseCondL3

jmp 		.endWhileL0

jmp 		.endIfL4

.falseCondL3: 

jmp 		.beginWhileL1

.endIfL4: 

jmp 		.beginWhileL1

.endWhileL0: 

mov		-24(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


movq 	$1, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	breaks
mov 	%rax, -24(%rbp) 

mov		$.SL5, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

