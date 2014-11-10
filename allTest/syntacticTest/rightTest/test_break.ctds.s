.SL2: 
		.string "%d resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(8 * 10), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$0, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$1, -48(%rbp)

mov		-24(%rbp), %r10 
mov		-48(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -64(%rbp)

mov		-8(%rbp), %rax
cmp		-64(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -72(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
cmp 		-72(%rbp), %r10

jne 		.falseCondL0

jmp 		.endIfL1

.falseCondL0: 

.endIfL1: 

mov		-24(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	breaks
mov 	%rax, -16(%rbp) 

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

