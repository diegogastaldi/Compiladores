.text

.globl	pruebaLogica
.type	pruebaLogica, @function 
pruebaLogica: 
enter   $(4 * 10), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

mov		-12(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$0, -16(%rbp)

cmpl		$0, -16(%rbp)
jne 		.L0
cmpl		$0, -12(%rbp)
je 		.L1
.L0: 
mov		$1, %r10
jmp 		.L2
.L1:
mov		$0, %r10
.L2:
mov		%r10, -20(%rbp)

movl 	$1, -24(%rbp)

cmpl		$0, -24(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -28(%rbp) 

cmpl		$0, -20(%rbp)
je 		.L3
cmpl		$0, -28(%rbp)
je 		.L3
mov		$1, %r10
jmp		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -32(%rbp)

cmpl		$0, -8(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -36(%rbp) 

cmpl		$0, -32(%rbp)
je 		.L5
cmpl		$0, -36(%rbp)
je 		.L5
mov		$1, %r10
jmp		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -40(%rbp)

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

mov 		$0, %rax 
call 	pruebaLogica
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

