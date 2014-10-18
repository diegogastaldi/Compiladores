.L0L14: 
		.string "%f resultado : " 

.text

.globl	promedio
.type	promedio, @function 
promedio: 
enter   $(8 * 34), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 
mov 		%rdx, -32(%rbp) 

mov		-32(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

mov		-24(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

cmpq		$0, -64(%rbp)
je 		.L0
cmpq		$0, -72(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 	-80(%rbp), %r10

jne 		.falseCondL2

mov		-32(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

movq 	$2.0, -104(%rbp)

mov		-96(%rbp), %rax 
cltd
idivq	-104(%rbp) 
mov		%rax, -112(%rbp)

mov		-112(%rbp), %rax
leave
ret

.falseCondL2: 

mov		-32(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -120(%rbp)

mov		-16(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -128(%rbp)

cmpq		$0, -120(%rbp)
je 		.L3
cmpq		$0, -128(%rbp)
je 		.L3
mov		$1, %r10
jmp		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -136(%rbp)

movq 	$1, -144(%rbp)

mov		-144(%rbp), %r10
cmp 	-136(%rbp), %r10

jne 		.falseCondL5

mov		-32(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -152(%rbp)

movq 	$2.0, -160(%rbp)

mov		-152(%rbp), %rax 
cltd
idivq	-160(%rbp) 
mov		%rax, -168(%rbp)

mov		-168(%rbp), %rax
leave
ret

.falseCondL5: 

mov		-24(%rbp), %rax
cmp		-32(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -176(%rbp)

mov		-16(%rbp), %rax
cmp		-32(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -184(%rbp)

cmpq		$0, -176(%rbp)
je 		.L6
cmpq		$0, -184(%rbp)
je 		.L6
mov		$1, %r10
jmp		.L7
.L6:
mov		$0, %r10
.L7:
mov		%r10, -192(%rbp)

movq 	$1, -200(%rbp)

mov		-200(%rbp), %r10
cmp 	-192(%rbp), %r10

jne 		.falseCondL8

mov		-16(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -208(%rbp)

movq 	$2.0, -216(%rbp)

mov		-208(%rbp), %rax 
cltd
idivq	-216(%rbp) 
mov		%rax, -224(%rbp)

mov		-224(%rbp), %rax
leave
ret

.falseCondL8: 

mov 		-32(%rbp), %rax
cmp		-24(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -232(%rbp)

mov 		-32(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -240(%rbp)

mov 		-24(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -248(%rbp)

cmpq		$0, -240(%rbp)
je 		.L9
cmpq		$0, -248(%rbp)
je 		.L9
mov		$1, %r10
jmp		.L10
.L9:
mov		$0, %r10
.L10:
mov		%r10, -256(%rbp)

cmpq		$0, -232(%rbp)
je 		.L11
cmpq		$0, -256(%rbp)
je 		.L11
mov		$1, %r10
jmp		.L12
.L11:
mov		$0, %r10
.L12:
mov		%r10, -264(%rbp)

movq 	$1, -272(%rbp)

mov		-272(%rbp), %r10
cmp 	-264(%rbp), %r10

jne 		.falseCondL13

mov		-32(%rbp), %rax
leave
ret

.falseCondL13: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 13), $0 

movq 	$3.3, -24(%rbp)

movq 	$0.66, -40(%rbp)

movq 	$10.0, -56(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov		-56(%rbp), %r10
mov	 	%r10, %rdx

mov 		$0, %rax 
call 	promedio
mov 	%rax, -72(%rbp) 

mov		$.L0L14, %r10
mov	 	%r10, %rdi

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -96(%rbp) 

mov 		$0, %rax
leave
ret

