.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 6), $0 
mov 		%rdi, -4(%rbp) 

movl 	$1, -8(%rbp)

movl 	$3, -12(%rbp)

mov		-8(%rbp), %rax
cmp		-12(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -16(%rbp)

movl 	$0, -20(%rbp)

cmpl		$0, -16(%rbp)
je 		.0
cmpl		$0, -20(%rbp)
je 		.0
mov		$1, %r10
jmp		.1
.0:
mov		$0, %r10
.1:
mov		%r11, -24(%rbp)

mov		-24(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

