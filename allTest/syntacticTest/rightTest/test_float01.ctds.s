.L05: 
		.string "%f" 

.text

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(4 * 23), $0 

movl 	$0, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$1.0, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$0, -32(%rbp)

mov		0(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.falseCond0

mov		0(%rbp), %rax 
neg		%rax 
mov		%rax, -44(%rbp) 

mov		-44(%rbp), %rax
mov		%rax, 0(%rbp)

cmpl		$0, -8(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -48(%rbp) 

mov		-48(%rbp), %rax
mov		%rax, -8(%rbp)

.falseCond0: 

.beginWhile2: 

mov		-4(%rbp), %rax
cmp		0(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -52(%rbp)

movl 	$1, -56(%rbp)

mov		-56(%rbp), %r10
cmp 	-52(%rbp), %r10

jne 		.endWhile1

mov		-12(%rbp), %r10 
mov		1(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -60(%rbp)

mov		-60(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$1, -64(%rbp)

mov		-4(%rbp), %r10 
mov		-64(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -68(%rbp)

mov		-68(%rbp), %rax
mov		%rax, -4(%rbp)

jmp 		.beginWhile2

.endWhile1: 

cmpl		$0, -8(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -72(%rbp) 

movl 	$1, -76(%rbp)

mov		-76(%rbp), %r10
cmp 	-72(%rbp), %r10

jne 		.falseCond3

movl 	$1.0, -80(%rbp)

mov		-80(%rbp), %rax 
cltd
idivl	-12(%rbp) 
mov		%rax, -84(%rbp)

mov		-84(%rbp), %rax
leave
ret

jmp 		.endIf4

.falseCond3: 

mov		-12(%rbp), %rax
leave
ret

.endIf4: 

movl 	$100.1, -88(%rbp)

mov		-88(%rbp), %rax 
neg		%rax 
mov		%rax, -92(%rbp) 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 10), $0 

mov		-92(%rbp), %rax
leave
ret

movl 	$8.0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$2, -20(%rbp)

mov		-20(%rbp), %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

call 	potencia
mov 	%rax, -32(%rbp) 

mov		-32(%rbp), %rax
mov		%rax, -4(%rbp)

mov		-4(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L05, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

