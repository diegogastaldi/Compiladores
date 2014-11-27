.SL12: 
		.string "15 = %d\n" 

.SL11: 
		.string "5 = %d\n" 

.SL4: 
		.string "5 = %d\n" 

.text

.globl	break1
.type	break1, @function 
break1: 
enter   $(8 * 10), $0 


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

movq 	$5, -56(%rbp)

mov 		-24(%rbp), %rax
cmp		-56(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 		-64(%rbp), %r10

jne 		.falseCondL2

jmp 		.endWhileL0

jmp 		.endIfL3

.falseCondL2: 

movq 	$1, -72(%rbp)

mov		-24(%rbp), %r10 
mov		-72(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -24(%rbp)

.endIfL3: 

jmp 		.beginWhileL1

.endWhileL0: 

mov		$.SL4, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	break2
.type	break2, @function 
break2: 
enter   $(8 * 16), $0 


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

.beginWhileL6: 

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.endWhileL5

movq 	$0, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL8: 

movq 	$10000, -72(%rbp)

mov		-32(%rbp), %rax
cmp		-72(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.endWhileL7

movq 	$5, -88(%rbp)

mov 		-32(%rbp), %rax
cmp		-88(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.falseCondL9

jmp 		.endWhileL7

jmp 		.endIfL10

.falseCondL9: 

movq 	$1, -104(%rbp)

mov		-32(%rbp), %r10 
mov		-104(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL10: 

jmp 		.beginWhileL8

.endWhileL7: 

movq 	$1, -120(%rbp)

mov		-24(%rbp), %r10 
mov		-120(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.beginWhileL6

.endWhileL5: 

mov		$.SL11, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov		$.SL12, %r10
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

call 	break1

mov 		$0, %rax 

call 	break2

mov 		$0, %rax
leave
ret

