.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(4 * 24), $0 
mov 		%rdi, -8(%rbp) 

movl 	$50, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -20(%rbp)

movl 	$0, -16(%rbp)

mov		-20(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 	-20(%rbp), %r10

jne 		.falseCondL0

movl 	$4, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$4, -32(%rbp)

mov 		-12(%rbp), %rax
cmp		-32(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.falseCondL1

.beginWhileL3: 

movl 	$4, -44(%rbp)

mov		-12(%rbp), %rax
cmp		-44(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -48(%rbp)

movl 	$1, -52(%rbp)

mov		-52(%rbp), %r10
cmp 	-48(%rbp), %r10

jne 		.endWhileL2

.beginWhileL5: 

movl 	$4, -56(%rbp)

mov		-20(%rbp), %rax
cmp		-56(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -60(%rbp)

movl 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 	-60(%rbp), %r10

jne 		.endWhileL4

movl 	$1, -68(%rbp)

mov		-68(%rbp), %r10 
mov		-20(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -72(%rbp)

mov		-72(%rbp), %rax
mov		%rax, -20(%rbp)

movl 	$2, -76(%rbp)

mov		-12(%rbp), %r10 
mov		-76(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -80(%rbp)

mov		-80(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.beginWhileL5

.endWhileL4: 

movl 	$1, -84(%rbp)

mov		-12(%rbp), %r10 
mov		-84(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -88(%rbp)

mov		-88(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$2, -92(%rbp)

mov		-16(%rbp), %rax 
cltd
idivl	-92(%rbp) 
mov		%rax, -96(%rbp)

mov		-96(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

.falseCondL1: 

.falseCondL0: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$6, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	prueba
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

