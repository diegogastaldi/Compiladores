.L06: 
		.string "%dMcd" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(4 * 19), $0 

movl 	$1, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -8(%rbp)

.beginWhile1: 

movl 	$0, -24(%rbp)

mov		-8(%rbp), %rax
cmp		-24(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -28(%rbp)

movl 	$1, -32(%rbp)

mov		-32(%rbp), %r10
cmp 	-28(%rbp), %r10

jne 		.endWhile0

mov		-12(%rbp), %rax 
cltd
idivl	-4(%rbp)
mov		%rax, -36(%rbp)

mov		$1, %rax
mov		%rax, -44(%rbp)

mov		-36(%rbp), %r10 
mov		-44(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, -8(%rbp)

mov		$1, %rax
mov		%rax, -52(%rbp)

mov		-52(%rbp), %r10 
mov		-12(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-48(%rbp), %rax
mov		%rax, -4(%rbp)

jmp 		.beginWhile1

jmp 		.beginWhile1

.endWhile0: 

.beginWhile3: 

movl 	$0, -56(%rbp)

mov		-8(%rbp), %rax
cmp		-56(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -60(%rbp)

movl 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 	-60(%rbp), %r10

jne 		.endWhile2

jmp 		.endWhile2

jmp 		.beginWhile3

.endWhile2: 

.beginWhile5: 

movl 	$0, -68(%rbp)

mov		-8(%rbp), %rax
cmp		-68(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -72(%rbp)

movl 	$1, -76(%rbp)

mov		-76(%rbp), %r10
cmp 	-72(%rbp), %r10

jne 		.endWhile4

jmp 		.beginWhile5

.endWhile4: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 8), $0 

mov		-4(%rbp), %rax
leave
ret

movl 	$9, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

call 	maxcomdiv
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L06, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

