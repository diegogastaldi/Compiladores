.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 8), $0 

mov 		%rdi, -8(%rbp) 

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -8(%rbp)

jmp 		.endForL0

.beginForL1: 

movq 	$2, -40(%rbp)

mov 		-8(%rbp), %rax
cmp		-40(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -48(%rbp)

mov		-48(%rbp), %rax
leave
ret

.endForL0: 

mov		-8(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -8(%rbp)

mov		-8(%rbp), %r10
cmp 		-8(%rbp), %r10

jl 		.beginForL1

mov		-32(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -8(%rbp)

movq 	$1, -56(%rbp)

mov		-56(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax
leave
ret

