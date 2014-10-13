.text

.globl	pruebaLogica
.type	pruebaLogica, @function 
pruebaLogica: 
enter   $(4 * 10), $0 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$0, -16(%rbp)

cmpl		$0, -16(%rbp)
jne 		.0
cmpl		$0, -4(%rbp)
je 		.1
.0: 
mov		$1, %r10
jmp 		.2
.1:
mov		$0, %r10
.2:
mov		%r10, -20(%rbp)

movl 	$1, -24(%rbp)

cmpl		$0, -24(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -28(%rbp) 

cmpl		$0, -20(%rbp)
je 		.3
cmpl		$0, -28(%rbp)
je 		.3
mov		$1, %r10
jmp		.4
.3:
mov		$0, %r10
.4:
mov		%r11, -32(%rbp)

cmpl		$0, 0(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -36(%rbp) 

cmpl		$0, -32(%rbp)
je 		.5
cmpl		$0, -36(%rbp)
je 		.5
mov		$1, %r10
jmp		.6
.5:
mov		$0, %r10
.6:
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$0, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	pruebaLogica
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

