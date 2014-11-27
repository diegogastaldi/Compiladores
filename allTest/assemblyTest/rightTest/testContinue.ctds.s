.SL8: 
		.string "15 = %d\n" 

.SL7: 
		.string "10 = %d\n" 

.SL2: 
		.string "15 = %d\n" 

.text

.globl	continue1
.type	continue1, @function 
continue1: 
enter   $(8 * 8), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$15, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

.beginWhileL1: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -48(%rbp)

movq 	$1, -56(%rbp)

mov		-56(%rbp), %r10
cmp 		-48(%rbp), %r10

jne 		.endWhileL0

movq 	$1, -56(%rbp)

mov		-24(%rbp), %r10 
mov		-56(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL1

jmp 		.beginWhileL1

.endWhileL0: 

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	continue2
.type	continue2, @function 
continue2: 
enter   $(8 * 14), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$0, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$15, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

.beginWhileL4: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.endWhileL3

movq 	$0, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL6: 

movq 	$10, -72(%rbp)

mov		-32(%rbp), %rax
cmp		-72(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.endWhileL5

movq 	$1, -88(%rbp)

mov		-32(%rbp), %r10 
mov		-88(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL6

jmp 		.beginWhileL6

.endWhileL5: 

movq 	$1, -104(%rbp)

mov		-24(%rbp), %r10 
mov		-104(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL4

.endWhileL3: 

mov		$.SL7, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL8, %r10
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

call 	continue1

mov 		$0, %rax 

call 	continue2

mov 		$0, %rax
leave
ret

