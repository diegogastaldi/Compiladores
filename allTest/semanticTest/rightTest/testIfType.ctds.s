.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 6), $0 
mov 		%rdi, -4(%rbp) 

movl 	$0, -8(%rbp)

mov		-4(%rbp), %rax
cmp		-8(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -12(%rbp)

movl 	$1, -16(%rbp)

mov		-16(%rbp), %r10
cmp 	-12(%rbp), %r10

jne 		.falseCond0

movl 	$0, -20(%rbp)

mov		-4(%rbp), %rax
cmp		-20(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -24(%rbp)

mov		-24(%rbp), %rax
leave
ret

.falseCond0: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 

mov 		$0, %rax
leave
ret

