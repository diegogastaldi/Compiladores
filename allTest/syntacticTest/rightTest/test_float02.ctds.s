.L0L6: 
		.string "%f" 

.text

.globl	sumatoria
.type	sumatoria, @function 
sumatoria: 
enter   $(4 * 16), $0 
mov 		%rdi, -8(%rbp) 

movl 	$0.0, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -12(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -16(%rbp)

.beginWhileL1: 

movl 	$0, -16(%rbp)

mov		-16(%rbp), %rax
cmp		-16(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -20(%rbp)

movl 	$0, -24(%rbp)

mov		-16(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -28(%rbp)

cmpl		$0, -20(%rbp)
jne 		.L2
cmpl		$0, -28(%rbp)
je 		.L3
.L2: 
mov		$1, %r10
jmp 		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -32(%rbp)

movl 	$1, -36(%rbp)

mov		-36(%rbp), %r10
cmp 	-32(%rbp), %r10

jne 		.endWhileL0

movl 	$0, -40(%rbp)

mov		-16(%rbp), %rax
cmp		-40(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -44(%rbp)

movl 	$1, -48(%rbp)

mov		-48(%rbp), %r10
cmp 	-44(%rbp), %r10

jne 		.falseCondL5

mov		-12(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -52(%rbp)

mov		-52(%rbp), %rax
mov		%rax, -12(%rbp)

.falseCondL5: 

movl 	$1.0, -56(%rbp)

mov		$1, %rax
mov		%rax, -64(%rbp)

mov		-64(%rbp), %r10 
mov		-56(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -60(%rbp)

mov		-60(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.beginWhileL1

.endWhileL0: 

mov		-12(%rbp), %rax
mov		%rax, -20(%rbp)

mov		-20(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 6), $0 

movl 	$8.0, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

call 	sumatoria
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L0L6, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

