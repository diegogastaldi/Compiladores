.L014: 
		.string "%f resultado : " 

.text

.globl	promedio
.type	promedio, @function 
promedio: 
enter   $(4 * 28), $0 

mov		2(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -8(%rbp)

mov		1(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -12(%rbp)

cmpl		$0, -8(%rbp)
je 		.0
cmpl		$0, -12(%rbp)
je 		.0
mov		$1, %r10
jmp		.1
.0:
mov		$0, %r10
.1:
mov		%r11, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
cmp 	-16(%rbp), %r10

jne 		.falseCond2

mov		2(%rbp), %r10 
mov		1(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -24(%rbp)

movl 	$2.0, -28(%rbp)

mov		-24(%rbp), %rax 
cltd
idivl	-28(%rbp) 
mov		%rax, -32(%rbp)

mov		-32(%rbp), %rax
leave
ret

.falseCond2: 

mov		2(%rbp), %rax
cmp		1(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -36(%rbp)

mov		0(%rbp), %rax
cmp		1(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -40(%rbp)

cmpl		$0, -36(%rbp)
je 		.3
cmpl		$0, -40(%rbp)
je 		.3
mov		$1, %r10
jmp		.4
.3:
mov		$0, %r10
.4:
mov		%r11, -44(%rbp)

movl 	$1, -48(%rbp)

mov		-48(%rbp), %r10
cmp 	-44(%rbp), %r10

jne 		.falseCond5

mov		2(%rbp), %r10 
mov		0(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -52(%rbp)

movl 	$2.0, -56(%rbp)

mov		-52(%rbp), %rax 
cltd
idivl	-56(%rbp) 
mov		%rax, -60(%rbp)

mov		-60(%rbp), %rax
leave
ret

.falseCond5: 

mov		1(%rbp), %rax
cmp		2(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

mov		0(%rbp), %rax
cmp		2(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -68(%rbp)

cmpl		$0, -64(%rbp)
je 		.6
cmpl		$0, -68(%rbp)
je 		.6
mov		$1, %r10
jmp		.7
.6:
mov		$0, %r10
.7:
mov		%r11, -72(%rbp)

movl 	$1, -76(%rbp)

mov		-76(%rbp), %r10
cmp 	-72(%rbp), %r10

jne 		.falseCond8

mov		0(%rbp), %r10 
mov		1(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -80(%rbp)

movl 	$2.0, -84(%rbp)

mov		-80(%rbp), %rax 
cltd
idivl	-84(%rbp) 
mov		%rax, -88(%rbp)

mov		-88(%rbp), %rax
leave
ret

.falseCond8: 

mov 		2(%rbp), %rax
cmp		1(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -92(%rbp)

mov 		2(%rbp), %rax
cmp		0(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

mov 		1(%rbp), %rax
cmp		0(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -100(%rbp)

cmpl		$0, -96(%rbp)
je 		.9
cmpl		$0, -100(%rbp)
je 		.9
mov		$1, %r10
jmp		.10
.9:
mov		$0, %r10
.10:
mov		%r11, -104(%rbp)

cmpl		$0, -92(%rbp)
je 		.11
cmpl		$0, -104(%rbp)
je 		.11
mov		$1, %r10
jmp		.12
.11:
mov		$0, %r10
.12:
mov		%r11, -108(%rbp)

movl 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 	-108(%rbp), %r10

jne 		.falseCond13

mov		2(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 10), $0 

.falseCond13: 

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

mov		$.L014, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

