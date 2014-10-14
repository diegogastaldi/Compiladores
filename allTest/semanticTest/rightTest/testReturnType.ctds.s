.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 7), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

movl 	$3, -16(%rbp)

mov		-12(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -20(%rbp)

movl 	$0, -24(%rbp)

cmpl		$0, -20(%rbp)
je 		.L0
cmpl		$0, -24(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -28(%rbp)

mov		-28(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

