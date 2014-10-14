.L0L5: 
		.string "%d%f" 

.L0L4: 
		.string "mcd" 

.text

.comm a, 4

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(4 * 11), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
cmp 	-16(%rbp), %r10

jne 		.falseCondL0

mov		-12(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -24(%rbp)

jmp 		.endIfL1

.falseCondL0: 

mov		-8(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -24(%rbp)

.endIfL1: 

movl 	$1, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -20(%rbp)

.beginWhileL3: 

movl 	$0, -28(%rbp)

mov		-20(%rbp), %rax
cmp		-28(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -32(%rbp)

movl 	$1, -36(%rbp)

mov		-36(%rbp), %r10
cmp 	-32(%rbp), %r10

jne 		.endWhileL2

mov		-24(%rbp), %rax 
cltd
idivl	-16(%rbp)
mov		%rax, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, -20(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -24(%rbp)

jmp 		.beginWhileL3

.endWhileL2: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 16), $0 

movl 	$3, -8(%rbp)

movl 	$7, -12(%rbp)

movl 	$6, -16(%rbp)

mov		-12(%rbp), %rax 
cltd
idivl	-16(%rbp) 
mov		%rax, -20(%rbp)

mov		-20(%rbp), %r10 
mov		null(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-8(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -28(%rbp)

mov		-28(%rbp), %r10
mov	 	%r10, %rdi

movl 	$9, -36(%rbp)

mov		-36(%rbp), %r10
mov	 	%r10, %rdi

movl 	$6, -44(%rbp)

mov		-44(%rbp), %r10
mov	 	%r10, %rsi

call 	maxcomdiv
mov 	%rax, -52(%rbp) 

mov		-52(%rbp), %r10
mov	 	%r10, %rsi

mov		$.L0L4, %r10
mov	 	%r10, %rdx

mov		$.L0L5, %r10
mov	 	%r10, %rcx

call 	printf

mov 		$0, %rax
leave
ret

