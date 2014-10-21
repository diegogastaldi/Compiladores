.text

.comm res, 8

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 5), $0 
mov 		%rdi, -16(%rbp) 

movq 	$1, -32(%rbp)

mov		-16(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	resto
.type	resto, @function 
resto: 
enter   $(8 * 14), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$3, -56(%rbp)

movq 	$2, -64(%rbp)

mov		-56(%rbp), %r10 
mov		-64(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -72(%rbp)

mov		-24(%rbp), %rax
cmp		-72(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 		-80(%rbp), %r10

jne 		.falseCondL0

movq 	$3, -96(%rbp)

mov		-24(%rbp), %rax 
cltd
idivq	-96(%rbp) 
mov		%rax, -104(%rbp)

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.endIfL1

.falseCondL0: 

movq 	$2.0, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -32(%rbp)

.endIfL1: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 13), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$0, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, res(%rip)

movq 	$5, -32(%rbp)

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	inc
mov 	%rax, -48(%rbp) 

movq 	$10.2, -72(%rbp)

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	resto
mov 	%rax, -88(%rbp) 

movq 	$0, -104(%rbp)

mov 		-88(%rbp), %r10 
movl		-104(%rbp), %edx 
cltq 
mov 		%r10, -16(%rbp, %rdx, 8) 

mov 		$0, %rax
leave
ret

