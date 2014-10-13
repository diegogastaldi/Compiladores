.text

.globl	pruContinue
.type	pruContinue, @function 
pruContinue: 
enter   $(4 * 28), $0 

movl 	$1.0, -20(%rbp)

mov		-20(%rbp), %rax 
neg		%rax 
mov		%rax, -24(%rbp) 

mov		-24(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$23, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$23.0, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -4(%rbp)

.beginWhile1: 

movl 	$0, -36(%rbp)

mov		-4(%rbp), %rax
cmp		-36(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -40(%rbp)

movl 	$1, -44(%rbp)

mov		-44(%rbp), %r10
cmp 	-40(%rbp), %r10

jne 		.endWhile0

movl 	$1.0, -48(%rbp)

mov		-48(%rbp), %r10 
mov		-4(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -52(%rbp)

mov		-52(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$2.0, -56(%rbp)

mov		1(%rbp), %rax
cmp		-56(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -60(%rbp)

movl 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 	-60(%rbp), %r10

jne 		.falseCond2

movl 	$0.0, -68(%rbp)

mov		-4(%rbp), %rax
cmp		-68(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -72(%rbp)

movl 	$1, -76(%rbp)

mov		-76(%rbp), %r10
cmp 	-72(%rbp), %r10

jne 		.falseCond3

mov		1(%rbp), %r10 
mov		0(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -80(%rbp)

mov		-12(%rbp), %r10 
mov		-80(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -84(%rbp)

mov		-84(%rbp), %rax
mov		%rax, -12(%rbp)

.falseCond3: 

jmp 		.beginWhile1

jmp 		.endIf4

.falseCond2: 

movl 	$1000.2343, -88(%rbp)

mov		-88(%rbp), %rax 
neg		%rax 
mov		%rax, -92(%rbp) 

movl 	$6752.0, -96(%rbp)

mov		-92(%rbp), %r10 
mov		-96(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -100(%rbp)

mov		-100(%rbp), %rax
mov		%rax, -12(%rbp)

jmp 		.endWhile0

.endIf4: 

jmp 		.beginWhile1

.endWhile0: 

movl 	$2.0, -104(%rbp)

mov		-104(%rbp), %r10 
mov		-12(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -108(%rbp)

mov		-108(%rbp), %rax 
neg		%rax 
mov		%rax, -112(%rbp) 

mov		-112(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov		-4(%rbp), %r10
mov	 	%r10, %rsi

call 	pruContinue
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

