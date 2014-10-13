.L06: 
		.string "%f" 

.text

.globl	sumatoria
.type	sumatoria, @function 
sumatoria: 
enter   $(4 * 18), $0 

movl 	$0.0, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -4(%rbp)

mov		0(%rbp), %rax
mov		%rax, -8(%rbp)

.beginWhile1: 

movl 	$0, -24(%rbp)

mov		-8(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -28(%rbp)

movl 	$0, -32(%rbp)

mov		-8(%rbp), %rax
cmp		-32(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -36(%rbp)

cmpl		$0, -28(%rbp)
jne 		.2
cmpl		$0, -36(%rbp)
je 		.3
.2: 
mov		$1, %r10
jmp 		.4
.3:
mov		$0, %r10
.4:
mov		%r10, -40(%rbp)

movl 	$1, -44(%rbp)

mov		-44(%rbp), %r10
cmp 	-40(%rbp), %r10

jne 		.endWhile0

movl 	$0, -48(%rbp)

mov		-8(%rbp), %rax
cmp		-48(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -52(%rbp)

movl 	$1, -56(%rbp)

mov		-56(%rbp), %r10
cmp 	-52(%rbp), %r10

jne 		.falseCond5

mov		-4(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -60(%rbp)

mov		-60(%rbp), %rax
mov		%rax, -4(%rbp)

.falseCond5: 

movl 	$1.0, -64(%rbp)

mov		$1, %rax
mov		%rax, -72(%rbp)

mov		-72(%rbp), %r10 
mov		-64(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -68(%rbp)

mov		-68(%rbp), %rax
mov		%rax, -8(%rbp)

jmp 		.beginWhile1

.endWhile0: 

mov		-4(%rbp), %rax
mov		%rax, -12(%rbp)

.globl	main
.type	main, @function 
main: 
enter   $(4 * 8), $0 

mov		-12(%rbp), %rax
leave
ret

movl 	$8.0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	sumatoria
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %rax
mov		%rax, -4(%rbp)

mov		-4(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L06, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

