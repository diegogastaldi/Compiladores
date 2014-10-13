.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 5), $0 
mov 		%rdi, -4(%rbp) 

movl 	$1, -8(%rbp)

jmp 		.endFor0

.beginFor1: 

movl 	$2, -12(%rbp)

mov 		-4(%rbp), %rax
cmp		-12(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

mov		-4(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -4(%rbp)

.endFor0: 

mov		-4(%rbp), %r10
cmp 	-4(%rbp), %r10

jle 		.beginFor1

movl 	$1, -20(%rbp)

mov		-20(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

