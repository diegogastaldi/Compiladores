.SL5: 
		.string "mcd" 

.SL4: 
		.string "%d%f" 

.text

.comm a, 8

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(8 * 16), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

mov		-8(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movq 	$1, -80(%rbp)

mov		-80(%rbp), %r10
cmp 		-72(%rbp), %r10

jne 		.falseCondL0

mov		-8(%rbp), %r10
mov		%r10, -32(%rbp)

mov		0(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.endIfL1

.falseCondL0: 

mov		0(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -48(%rbp)

.endIfL1: 

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL3: 

movq 	$0, -96(%rbp)

mov		-40(%rbp), %rax
cmp		-96(%rbp), %rax
setne 	%al
movzb 	%al, %rax
mov		%rax, -104(%rbp)

movq 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 		-104(%rbp), %r10

jne 		.endWhileL2

mov		-48(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rax, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 13), $0 

mov		$0, %r10
mov		%r10, a(%rip)

movq 	$6, -16(%rbp)

movq 	$9, -24(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	maxcomdiv
mov 	%rax, -32(%rbp) 

movq 	$3, -40(%rbp)

mov 		a(%rip), %r10 
mov		%r10, -48(%rbp) 

movq 	$7, -56(%rbp)

movq 	$6, -64(%rbp)

movss		-56(%rbp), %xmm0 
divss		-64(%rbp), %xmm0 
movss		%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10 
mov		-48(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-40(%rbp), %r10 
mov		-80(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -88(%rbp)

mov		$.SL4, %r10
mov	 	%r10, %rdi

mov		$.SL5, %r10
mov	 	%r10, %rsi

mov		-32(%rbp), %r10
mov	 	%r10, %rdx

mov		-88(%rbp), %r10
mov	 	%r10, %rcx

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

