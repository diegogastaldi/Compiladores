.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(8 * 12), $0 

mov 		%rdi, -8(%rbp) 

.beginWhileL1: 

movq 	$4, -32(%rbp)

mov		-8(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

movq 	$2, -48(%rbp)

mov		-40(%rbp), %rax
cmp		-48(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -56(%rbp)

movq 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 		-56(%rbp), %r10

jne 		.endWhileL0

movq 	$1, -64(%rbp)

mov		-8(%rbp), %r10 
mov		-64(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -72(%rbp)

movq 	$2, -80(%rbp)

mov		-72(%rbp), %rax
cmp		-80(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -88(%rbp)

mov		-88(%rbp), %rax
leave
ret

jmp 		.beginWhileL1

.endWhileL0: 

movq 	$1, -96(%rbp)

mov		-96(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 


mov 		$0, %rax
leave
ret

