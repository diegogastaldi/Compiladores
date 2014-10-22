.L0L6: 
		.string "%f" 

.text

.globl	sumatoria
.type	sumatoria, @function 
sumatoria: 
enter   $(8 * 19), $0 
mov 		%rdi, -16(%rbp) 

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq 	$0.0, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -32(%rbp)

.beginWhileL1: 

movq 	$0, -64(%rbp)

mov		-32(%rbp), %rax
cmp		-64(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movq 	$0, -80(%rbp)

mov		-32(%rbp), %rax
cmp		-80(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -88(%rbp)

cmpq		$0, -72(%rbp)
jne 		.L2
cmpq		$0, -88(%rbp)
je 		.L3
.L2: 
mov		$1, %r10
jmp 		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -96(%rbp)

movq 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 		-96(%rbp), %r10

jne 		.endWhileL0

movq 	$0, -112(%rbp)

mov		-32(%rbp), %rax
cmp		-112(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -120(%rbp)

movq 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 		-120(%rbp), %r10

jne 		.falseCondL5

mov		-24(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -24(%rbp)

.falseCondL5: 

movq 	$1.0, -144(%rbp)

mov		-32(%rbp), %r10 
mov		-144(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL1

.endWhileL0: 

mov		-24(%rbp), %r10
mov		%r10, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 11), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$8.0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	sumatoria
mov 	%rax, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.L0L6, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -80(%rbp) 

mov 		$0, %rax
leave
ret

