.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 12), $0 
mov 		%rdi, -8(%rbp) 

.beginWhileL1: 

movl 	$4, -12(%rbp)

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -16(%rbp)

movl 	$2, -20(%rbp)

mov		-16(%rbp), %rax
cmp		-20(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -24(%rbp)

movl 	$1, -28(%rbp)

mov		-28(%rbp), %r10
cmp 	-24(%rbp), %r10

jne 		.endWhileL0

movl 	$1, -32(%rbp)

mov		-8(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -36(%rbp)

movl 	$2, -40(%rbp)

mov		-36(%rbp), %rax
cmp		-40(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -44(%rbp)

mov		-44(%rbp), %rax
leave
ret

jmp 		.beginWhileL1

.endWhileL0: 

movl 	$1, -48(%rbp)

mov		-48(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

