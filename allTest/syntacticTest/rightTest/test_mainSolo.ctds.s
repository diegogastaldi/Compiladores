.text

.globl	main
.type	main, @function 
main: 
enter   $(4 * 6), $0 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -8(%rbp)

cmpl		$0, -8(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -12(%rbp) 

mov		-12(%rbp), %r10
mov		%r10, -16(%rbp)

cmpl		$0, -8(%rbp)
je 		.L0
cmpl		$0, -16(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -16(%rbp)

cmpl		$0, -16(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -20(%rbp) 

cmpl		$0, -16(%rbp)
jne 		.L2
cmpl		$0, -20(%rbp)
je 		.L3
.L2: 
mov		$1, %r10
jmp 		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

