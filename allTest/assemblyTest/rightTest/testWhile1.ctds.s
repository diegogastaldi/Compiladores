.SL8: 
		.string "%d" 

.SL5: 
		.string "Entro en el segundo while con %d \n" 

.SL2: 
		.string "Entro en el primer while con %d : " 

.text

.globl	factorialArray
.type	factorialArray, @function 
factorialArray: 
enter   $(8 * 38), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq		$0, %r10
mov		%r10, -48(%rbp)

movq		$0, %r10
mov		%r10, -56(%rbp)

movq		$0, %r10
mov		%r10, -64(%rbp)

movq		$0, %r10
mov		%r10, -72(%rbp)

movq		$0, %r10
mov		%r10, -80(%rbp)

movq		$0, %r10
mov		%r10, -88(%rbp)

movq		$0, %r10
mov		%r10, -96(%rbp)

movq		$0, %r10
mov		%r10, -104(%rbp)

movq		$0, %r10
mov		%r10, -112(%rbp)

movq		$0, %r10
mov		%r10, -120(%rbp)

movq		$0, %r10
mov		%r10, -128(%rbp)

movq		$0, %r10
mov		%r10, -136(%rbp)

movq		$0, %r10
mov		%r10, -144(%rbp)

movq		$0, %r10
mov		%r10, -152(%rbp)

movq		$0, %r10
mov		%r10, -160(%rbp)

movq 	$15, -184(%rbp)

mov		-184(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -192(%rbp)

mov		-192(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL1: 

mov		-32(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -200(%rbp)

movq 	$1, -208(%rbp)

mov		-208(%rbp), %r10
cmp 		-200(%rbp), %r10

jne 		.endWhileL0

mov		$.SL2, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$0, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -160(%rbp)

movq 	$1, -216(%rbp)

mov		-216(%rbp), %r10
mov		%r10, -168(%rbp)

.beginWhileL4: 

mov		-160(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -224(%rbp)

movq 	$1, -232(%rbp)

mov		-232(%rbp), %r10
cmp 		-224(%rbp), %r10

jne 		.endWhileL3

mov		$.SL5, %r10
mov	 	%r10, %rdi

mov		-160(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$1, -232(%rbp)

mov		-160(%rbp), %r10 
mov		-232(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -240(%rbp)

mov		-240(%rbp), %r10
mov		%r10, -160(%rbp)

mov		-168(%rbp), %r10 
mov		-160(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -248(%rbp)

mov		-248(%rbp), %r10
mov		%r10, -168(%rbp)

jmp 		.beginWhileL4

.endWhileL3: 

mov 		-168(%rbp), %r10 
movl		-32(%rbp), %edx 
cltq 
mov 		%r10, -152(%rbp, %rdx, 8) 

movq 	$1, -256(%rbp)

mov		-32(%rbp), %r10 
mov		-256(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -264(%rbp)

mov		-264(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL1

.endWhileL0: 

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -280(%rbp)

mov		-8(%rbp), %rax
cmp		-280(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -288(%rbp)

movq 	$1, -296(%rbp)

mov		-296(%rbp), %r10
cmp 		-288(%rbp), %r10

jne 		.falseCondL6

movq 	$-1, -296(%rbp)

mov		-296(%rbp), %rax
leave
ret

jmp 		.endIfL7

.falseCondL6: 

movl		-8(%rbp), %edx 
cltq 
mov 		-152(%rbp,%rdx,8) , %r11
mov 		%r11, -304(%rbp) 

mov		-304(%rbp), %rax
leave
ret

.endIfL7: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


movq 	$1, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	factorialArray
mov 	%rax, -24(%rbp) 

mov		$.SL8, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

