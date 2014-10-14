.L0L14: 
		.string "%f resultado : " 

.text

.globl	promedio
.type	promedio, @function 
promedio: 
enter   $(4 * 33), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 
mov 		%rdx, -16(%rbp) 

mov		-16(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -20(%rbp)

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -24(%rbp)

cmpl		$0, -20(%rbp)
je 		.L0
cmpl		$0, -24(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -28(%rbp)

movl 	$1, -32(%rbp)

mov		-32(%rbp), %r10
cmp 	-28(%rbp), %r10

jne 		.falseCondL2

mov		-16(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -36(%rbp)

movl 	$2.0, -40(%rbp)

mov		-36(%rbp), %rax 
cltd
idivl	-40(%rbp) 
mov		%rax, -44(%rbp)

mov		-44(%rbp), %rax
leave
ret

.falseCondL2: 

mov		-16(%rbp), %rax
cmp		-12(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -48(%rbp)

mov		-8(%rbp), %rax
cmp		-12(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -52(%rbp)

cmpl		$0, -48(%rbp)
je 		.L3
cmpl		$0, -52(%rbp)
je 		.L3
mov		$1, %r10
jmp		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -56(%rbp)

movl 	$1, -60(%rbp)

mov		-60(%rbp), %r10
cmp 	-56(%rbp), %r10

jne 		.falseCondL5

mov		-16(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -64(%rbp)

movl 	$2.0, -68(%rbp)

mov		-64(%rbp), %rax 
cltd
idivl	-68(%rbp) 
mov		%rax, -72(%rbp)

mov		-72(%rbp), %rax
leave
ret

.falseCondL5: 

mov		-12(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -76(%rbp)

mov		-8(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -80(%rbp)

cmpl		$0, -76(%rbp)
je 		.L6
cmpl		$0, -80(%rbp)
je 		.L6
mov		$1, %r10
jmp		.L7
.L6:
mov		$0, %r10
.L7:
mov		%r10, -84(%rbp)

movl 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 	-84(%rbp), %r10

jne 		.falseCondL8

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -92(%rbp)

movl 	$2.0, -96(%rbp)

mov		-92(%rbp), %rax 
cltd
idivl	-96(%rbp) 
mov		%rax, -100(%rbp)

mov		-100(%rbp), %rax
leave
ret

.falseCondL8: 

mov 		-16(%rbp), %rax
cmp		-12(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -104(%rbp)

mov 		-16(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -108(%rbp)

mov 		-12(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -112(%rbp)

cmpl		$0, -108(%rbp)
je 		.L9
cmpl		$0, -112(%rbp)
je 		.L9
mov		$1, %r10
jmp		.L10
.L9:
mov		$0, %r10
.L10:
mov		%r10, -116(%rbp)

cmpl		$0, -104(%rbp)
je 		.L11
cmpl		$0, -116(%rbp)
je 		.L11
mov		$1, %r10
jmp		.L12
.L11:
mov		$0, %r10
.L12:
mov		%r10, -120(%rbp)

movl 	$1, -124(%rbp)

mov		-124(%rbp), %r10
cmp 	-120(%rbp), %r10

jne 		.falseCondL13

mov		-16(%rbp), %rax
leave
ret

.falseCondL13: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 10), $0 

movl 	$10.0, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$0.66, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

movl 	$3.3, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdx

call 	promedio
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L0L14, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

