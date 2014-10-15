.L0L6: 
		.string "%dMcd" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(4 * 19), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$1, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -20(%rbp)

.beginWhileL1: 

movl 	$0, -20(%rbp)

mov		-20(%rbp), %rax
cmp		-20(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -24(%rbp)

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10
cmp 	-24(%rbp), %r10

jne 		.endWhileL0

mov		-24(%rbp), %rax 
cltd
idivl	-16(%rbp)
mov		%rax, -32(%rbp)

mov		$1, %rax
mov		%rax, -40(%rbp)

mov		-32(%rbp), %r10 
mov		-40(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -36(%rbp)

mov		-36(%rbp), %rax
mov		%rax, -20(%rbp)

mov		$1, %rax
mov		%rax, -48(%rbp)

mov		-48(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -44(%rbp)

mov		-44(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.beginWhileL1

jmp 		.beginWhileL1

.endWhileL0: 

.beginWhileL3: 

movl 	$0, -52(%rbp)

mov		-20(%rbp), %rax
cmp		-52(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -56(%rbp)

movl 	$1, -60(%rbp)

mov		-60(%rbp), %r10
cmp 	-56(%rbp), %r10

jne 		.endWhileL2

jmp 		.endWhileL2

jmp 		.beginWhileL3

.endWhileL2: 

.beginWhileL5: 

movl 	$0, -64(%rbp)

mov		-20(%rbp), %rax
cmp		-64(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -68(%rbp)

movl 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 	-68(%rbp), %r10

jne 		.endWhileL4

jmp 		.beginWhileL5

.endWhileL4: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 8), $0 

mov		$.L0L6, %r10
mov	 	%r10, %rdi

movl 	$6, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

movl 	$9, -20(%rbp)

mov		-20(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	maxcomdiv
mov 	%rax, -28(%rbp) 

mov		-28(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

