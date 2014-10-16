.text

.globl	pruContinue
.type	pruContinue, @function 
pruContinue: 
enter   $(4 * 28), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$1.0, -16(%rbp)

mov		-16(%rbp), %rax 
neg		%rax 
mov		%rax, -20(%rbp) 

mov		-20(%rbp), %r10
mov		%r10, -24(%rbp)

movl 	$23, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -20(%rbp)

movl 	$23.0, -28(%rbp)

mov		-28(%rbp), %r10
mov		%r10, -16(%rbp)

.beginWhileL1: 

movl 	$0, -32(%rbp)

mov		-16(%rbp), %rax
cmp		-32(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.endWhileL0

movl 	$1.0, -44(%rbp)

mov		-44(%rbp), %r10 
mov		-16(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

movl 	$2.0, -52(%rbp)

mov		-12(%rbp), %rax
cmp		-52(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -56(%rbp)

movl 	$1, -60(%rbp)

mov		-60(%rbp), %r10
cmp 	-56(%rbp), %r10

jne 		.falseCondL2

movl 	$0.0, -64(%rbp)

mov		-16(%rbp), %rax
cmp		-64(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -68(%rbp)

movl 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 	-68(%rbp), %r10

jne 		.falseCondL3

mov		-12(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -76(%rbp)

mov		-24(%rbp), %r10 
mov		-76(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -24(%rbp)

.falseCondL3: 

jmp 		.beginWhileL1

jmp 		.endIfL4

.falseCondL2: 

movl 	$1000.2343, -84(%rbp)

mov		-84(%rbp), %rax 
neg		%rax 
mov		%rax, -88(%rbp) 

movl 	$6752.0, -92(%rbp)

mov		-88(%rbp), %r10 
mov		-92(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -24(%rbp)

jmp 		.endWhileL0

.endIfL4: 

jmp 		.beginWhileL1

.endWhileL0: 

movl 	$2.0, -100(%rbp)

mov		-100(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -104(%rbp)

mov		-104(%rbp), %rax 
neg		%rax 
mov		%rax, -108(%rbp) 

mov		-108(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov		-12(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruContinue
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

