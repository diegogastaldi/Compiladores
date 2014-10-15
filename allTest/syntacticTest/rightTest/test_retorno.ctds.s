.text

.globl	id
.type	id, @function 
id: 
enter   $(4 * 37), $0 
mov 		%rdi, -8(%rbp) 

movl 	$100, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -20(%rbp)

.beginWhileL1: 

mov		-16(%rbp), %rax
cmp		-12(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 	-20(%rbp), %r10

jne 		.endWhileL0

mov		-8(%rbp), %rax
mov		%rax, -24(%rbp)

.beginWhileL3: 

movl 	$0, -28(%rbp)

mov		-8(%rbp), %rax
cmp		-28(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -32(%rbp)

movl 	$0, -36(%rbp)

mov		-8(%rbp), %rax
cmp		-36(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -40(%rbp)

cmpl		$0, -32(%rbp)
jne 		.L4
cmpl		$0, -40(%rbp)
je 		.L5
.L4: 
mov		$1, %r10
jmp 		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -44(%rbp)

movl 	$1, -48(%rbp)

mov		-48(%rbp), %r10
cmp 	-44(%rbp), %r10

jne 		.endWhileL2

movl 	$0, -52(%rbp)

mov		-8(%rbp), %rax
cmp		-52(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -56(%rbp)

movl 	$1, -60(%rbp)

mov		-60(%rbp), %r10
cmp 	-56(%rbp), %r10

jne 		.falseCondL7

movl 	$1, -64(%rbp)

mov		-64(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -68(%rbp)

mov		-68(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.endIfL8

.falseCondL7: 

movl 	$1, -72(%rbp)

mov		-8(%rbp), %r10 
mov		-72(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -76(%rbp)

mov		-76(%rbp), %rax
mov		%rax, -8(%rbp)

.endIfL8: 

jmp 		.beginWhileL3

.endWhileL2: 

.beginWhileL10: 

mov		-8(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -80(%rbp)

mov		-8(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -84(%rbp)

cmpl		$0, -80(%rbp)
jne 		.L11
cmpl		$0, -84(%rbp)
je 		.L12
.L11: 
mov		$1, %r10
jmp 		.L13
.L12:
mov		$0, %r10
.L13:
mov		%r10, -88(%rbp)

movl 	$1, -92(%rbp)

mov		-92(%rbp), %r10
cmp 	-88(%rbp), %r10

jne 		.endWhileL9

mov		-8(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -96(%rbp)

movl 	$1, -100(%rbp)

mov		-100(%rbp), %r10
cmp 	-96(%rbp), %r10

jne 		.falseCondL14

movl 	$1, -104(%rbp)

mov		-8(%rbp), %r10 
mov		-104(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -108(%rbp)

mov		-108(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.endIfL15

.falseCondL14: 

mov 		-8(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -112(%rbp)

movl 	$1, -116(%rbp)

mov		-116(%rbp), %r10
cmp 	-112(%rbp), %r10

jne 		.falseCondL16

movl 	$1, -120(%rbp)

mov		-16(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -124(%rbp)

mov		-124(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -128(%rbp)

mov		-16(%rbp), %r10 
mov		-128(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -132(%rbp)

mov		-120(%rbp), %r10 
mov		-132(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -136(%rbp)

mov		-136(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -140(%rbp)

mov		-140(%rbp), %rax
mov		%rax, -8(%rbp)

.falseCondL16: 

.endIfL15: 

jmp 		.beginWhileL10

.endWhileL9: 

mov		-20(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$1, -144(%rbp)

mov		-16(%rbp), %r10 
mov		-144(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -148(%rbp)

mov		-148(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.beginWhileL1

.endWhileL0: 

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$9, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	id
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

