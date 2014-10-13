.text

.globl	id
.type	id, @function 
id: 
enter   $(4 * 40), $0 

movl 	$100, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$0, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -8(%rbp)

mov		0(%rbp), %rax
mov		%rax, -12(%rbp)

.beginWhile1: 

mov		-8(%rbp), %rax
cmp		-4(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -32(%rbp)

movl 	$1, -36(%rbp)

mov		-36(%rbp), %r10
cmp 	-32(%rbp), %r10

jne 		.endWhile0

mov		0(%rbp), %rax
mov		%rax, -16(%rbp)

.beginWhile3: 

movl 	$0, -40(%rbp)

mov		0(%rbp), %rax
cmp		-40(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -44(%rbp)

movl 	$0, -48(%rbp)

mov		0(%rbp), %rax
cmp		-48(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -52(%rbp)

cmpl		$0, -44(%rbp)
jne 		.4
cmpl		$0, -52(%rbp)
je 		.5
.4: 
mov		$1, %r10
jmp 		.6
.5:
mov		$0, %r10
.6:
mov		%r10, -56(%rbp)

movl 	$1, -60(%rbp)

mov		-60(%rbp), %r10
cmp 	-56(%rbp), %r10

jne 		.endWhile2

movl 	$0, -64(%rbp)

mov		0(%rbp), %rax
cmp		-64(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -68(%rbp)

movl 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 	-68(%rbp), %r10

jne 		.falseCond7

movl 	$1, -76(%rbp)

mov		-76(%rbp), %r10 
mov		0(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-80(%rbp), %rax
mov		%rax, 0(%rbp)

jmp 		.endIf8

.falseCond7: 

movl 	$1, -84(%rbp)

mov		0(%rbp), %r10 
mov		-84(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -88(%rbp)

mov		-88(%rbp), %rax
mov		%rax, 0(%rbp)

.endIf8: 

jmp 		.beginWhile3

.endWhile2: 

.beginWhile10: 

mov		0(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -92(%rbp)

mov		0(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -96(%rbp)

cmpl		$0, -92(%rbp)
jne 		.11
cmpl		$0, -96(%rbp)
je 		.12
.11: 
mov		$1, %r10
jmp 		.13
.12:
mov		$0, %r10
.13:
mov		%r10, -100(%rbp)

movl 	$1, -104(%rbp)

mov		-104(%rbp), %r10
cmp 	-100(%rbp), %r10

jne 		.endWhile9

mov		0(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -108(%rbp)

movl 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 	-108(%rbp), %r10

jne 		.falseCond14

movl 	$1, -116(%rbp)

mov		0(%rbp), %r10 
mov		-116(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -120(%rbp)

mov		-120(%rbp), %rax
mov		%rax, 0(%rbp)

jmp 		.endIf15

.falseCond14: 

mov 		0(%rbp), %rax
cmp		0(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -124(%rbp)

movl 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 	-124(%rbp), %r10

jne 		.falseCond16

movl 	$1, -132(%rbp)

mov		-8(%rbp), %r10 
mov		0(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -136(%rbp)

mov		-136(%rbp), %r10 
mov		0(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -140(%rbp)

mov		-8(%rbp), %r10 
mov		-140(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -144(%rbp)

mov		-132(%rbp), %r10 
mov		-144(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -148(%rbp)

mov		-148(%rbp), %r10 
mov		0(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %rax
mov		%rax, 0(%rbp)

.falseCond16: 

.endIf15: 

jmp 		.beginWhile10

.endWhile9: 

mov		-12(%rbp), %rax
mov		%rax, 0(%rbp)

movl 	$1, -156(%rbp)

mov		-8(%rbp), %r10 
mov		-156(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -160(%rbp)

mov		-160(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.beginWhile1

.endWhile0: 

mov		0(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$9, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	id
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

