.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 8), $0 

mov 		%rdi, -8(%rbp) 

movq 	$0, -32(%rbp)

mov		-8(%rbp), %rax
cmp		-32(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -40(%rbp)

movq 	$1, -48(%rbp)

mov		-48(%rbp), %r10
cmp 		-40(%rbp), %r10

jne 		.falseCondL0

movq 	$0, -48(%rbp)

mov		-8(%rbp), %rax
cmp		-48(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -56(%rbp)

mov		-56(%rbp), %rax
leave
ret

.falseCondL0: 

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax
leave
ret

