.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 11), $0 
mov 		%rdi, -4(%rbp) 

.beginWhile1: 

movl 	$4, -8(%rbp)

mov		-4(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -12(%rbp)

movl 	$2, -16(%rbp)

mov		-12(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %r10
cmp 	-20(%rbp), %r10

jne 		.endWhile0

movl 	$1, -28(%rbp)

mov		-4(%rbp), %r10 
mov		-28(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

movl 	$2, -36(%rbp)

mov		-32(%rbp), %rax
cmp		-36(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -40(%rbp)

mov		-40(%rbp), %rax
leave
ret

jmp 		.beginWhile1

.endWhile0: 

movl 	$1, -44(%rbp)

mov		-44(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

