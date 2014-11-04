.SL2: 
		.string "15 = %d" 

.text

.globl	for1
.type	for1, @function 
for1: 
enter   $(8 * 8), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$15, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$1, -48(%rbp)

movq 	$5, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-48(%rbp), %r10 
mov		-56(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -56(%rbp)

jmp 		.endForL0

.beginForL1: 

.endForL0: 

mov		-56(%rbp), %r10 
mov		-48(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-56(%rbp), %r10
cmp 		-64(%rbp), %r10

jl 		.beginForL1

mov		-48(%rbp), %r10 
mov		-56(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax 

call 	for1

mov 		$0, %rax
leave
ret

