.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 7), $0 
mov 		%rdi, -8(%rbp) 

movl 	$0, -12(%rbp)

mov		-8(%rbp), %rax
cmp		-12(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
cmp 	-16(%rbp), %r10

jne 		.falseCondL0

movl 	$0, -24(%rbp)

mov		-8(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -28(%rbp)

mov		-28(%rbp), %rax
leave
ret

.falseCondL0: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

