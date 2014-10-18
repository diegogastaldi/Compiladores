.text

.globl	sumx
.type	sumx, @function 
sumx: 
enter   $(8 * 14), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq 	$0.0, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$0, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL1: 

mov		-40(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -80(%rbp)

movq 	$1, -88(%rbp)

mov		-88(%rbp), %r10
cmp 	-80(%rbp), %r10

jne 		.endWhileL0

mov		-32(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

movq 	$1, -104(%rbp)

mov		-40(%rbp), %r10 
mov		-104(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.beginWhileL1

.endWhileL0: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 10), $0 

movq 	$6.0, -16(%rbp)

movq 	$2, -32(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	sumx
mov 	%rax, -48(%rbp) 

mov		-48(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -72(%rbp) 

mov 		$0, %rax
leave
ret

