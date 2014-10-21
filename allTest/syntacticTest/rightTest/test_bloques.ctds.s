.L0L4: 
		.string "%f resultado : " 

.text

.globl	breaks
.type	breaks, @function 
breaks: 
enter   $(8 * 13), $0 
mov 		%rdi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$0, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

.beginWhileL1: 

movq 	$10, -48(%rbp)

mov		-24(%rbp), %rax
cmp		-48(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.endWhileL0

movq 	$1, -72(%rbp)

mov		-24(%rbp), %r10 
mov		-72(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -88(%rbp)

mov		-16(%rbp), %rax
cmp		-88(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.falseCondL2

jmp 		.endWhileL0

jmp 		.endIfL3

.falseCondL2: 

jmp 		.beginWhileL1

.endIfL3: 

jmp 		.beginWhileL1

.endWhileL0: 

mov		-24(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 9), $0 

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	breaks
mov 	%rax, -40(%rbp) 

mov		$.L0L4, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -64(%rbp) 

mov 		$0, %rax
leave
ret

