.text

.globl	main
.type	main, @function 
main: 
enter   $(4 * 12), $0 

movl 	$1, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -4(%rbp)

cmpl		$0, -4(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -32(%rbp) 

mov		-32(%rbp), %rax
mov		%rax, -12(%rbp)

cmpl		$0, -4(%rbp)
je 		.0
cmpl		$0, -12(%rbp)
je 		.0
mov		$1, %r10
jmp		.1
.0:
mov		$0, %r10
.1:
mov		%r11, -36(%rbp)

cmpl		$0, -12(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -40(%rbp) 

cmpl		$0, -36(%rbp)
jne 		.2
cmpl		$0, -40(%rbp)
je 		.3
.2: 
mov		$1, %r10
jmp 		.4
.3:
mov		$0, %r10
.4:
mov		%r10, -44(%rbp)

mov		-44(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

