.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(8 * 20), $0 

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

movq 	$4, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$5, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -48(%rbp)

mov		-40(%rbp), %r10 
mov		-48(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-24(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$3, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -56(%rbp)

movq 	$2, -112(%rbp)

mov		-112(%rbp), %r10 
mov		-56(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-24(%rbp), %rax 
cltd
idivq	-32(%rbp) 
mov		%rax, -128(%rbp)

movq 	$5, -136(%rbp)

mov		-128(%rbp), %rax
cmp		-136(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -144(%rbp)

movq 	$1, -152(%rbp)

mov		-152(%rbp), %r10
cmp 		-144(%rbp), %r10

jne 		.falseCondL0

movq 	$1, -152(%rbp)

mov		-152(%rbp), %rax
leave
ret

jmp 		.endIfL1

.falseCondL0: 

movq 	$0, -160(%rbp)

mov		-160(%rbp), %rax
leave
ret

.endIfL1: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


movq 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	prueba
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

