.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(4 * 26), $0 

movl 	$50, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$0, -24(%rbp)

mov		-12(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -28(%rbp)

movl 	$1, -32(%rbp)

mov		-32(%rbp), %r10
cmp 	-28(%rbp), %r10

jne 		.falseCond0

movl 	$4, -36(%rbp)

mov		-36(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$4, -40(%rbp)

mov 		-4(%rbp), %rax
cmp		-40(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -44(%rbp)

movl 	$1, -48(%rbp)

mov		-48(%rbp), %r10
cmp 	-44(%rbp), %r10

jne 		.falseCond1

.beginWhile3: 

movl 	$4, -52(%rbp)

mov		-4(%rbp), %rax
cmp		-52(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -56(%rbp)

movl 	$1, -60(%rbp)

mov		-60(%rbp), %r10
cmp 	-56(%rbp), %r10

jne 		.endWhile2

.beginWhile5: 

movl 	$4, -64(%rbp)

mov		-12(%rbp), %rax
cmp		-64(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -68(%rbp)

movl 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 	-68(%rbp), %r10

jne 		.endWhile4

movl 	$1, -76(%rbp)

mov		-76(%rbp), %r10 
mov		-12(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-80(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$2, -84(%rbp)

mov		-4(%rbp), %r10 
mov		-84(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -88(%rbp)

mov		-88(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.beginWhile5

.endWhile4: 

movl 	$1, -92(%rbp)

mov		-4(%rbp), %r10 
mov		-92(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$2, -100(%rbp)

mov		-8(%rbp), %rax 
cltd
idivl	-100(%rbp) 
mov		%rax, -104(%rbp)

mov		-104(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.beginWhile3

.endWhile2: 

.falseCond1: 

.falseCond0: 

mov		-8(%rbp), %rax
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

