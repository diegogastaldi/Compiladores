.text

.globl	method
.type	method, @function 
method: 
enter   $(4 * 8), $0 

mov		0(%rbp), %rax
cmp		1(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -12(%rbp)

movl 	$1, -16(%rbp)

mov		-16(%rbp), %r10
cmp 	-12(%rbp), %r10

jne 		.falseCond0

movl 	$1, -20(%rbp)

movl 	$1.0, -24(%rbp)

mov 		1(%rbp), %rax
cmp		-24(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -28(%rbp)

cmpl		$0, -20(%rbp)
je 		.1
cmpl		$0, -28(%rbp)
je 		.1
mov		$1, %r10
jmp		.2
.1:
mov		$0, %r10
.2:
mov		%r11, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -4(%rbp)

.falseCond0: 

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 1), $0 

mov 		$0, %rax
leave
ret

