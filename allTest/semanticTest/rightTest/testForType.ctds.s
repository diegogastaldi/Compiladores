.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 6), $0 
mov 		%rdi, -8(%rbp) 

movl 	$1, -12(%rbp)

jmp 		.endForL0

.beginForL1: 

movl 	$2, -16(%rbp)

mov 		-8(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -20(%rbp)

mov		-20(%rbp), %rax
leave
ret

mov		-8(%rbp), %r10 
mov		-12(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -8(%rbp)

.endForL0: 

mov		-8(%rbp), %r10
cmp 	-8(%rbp), %r10

jle 		.beginForL1

movl 	$1, -24(%rbp)

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

