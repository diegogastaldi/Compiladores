.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(4 * 19), $0 

movl 	$4, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$5, -32(%rbp)

mov		-32(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-12(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -36(%rbp)

mov		-36(%rbp), %rax
mov		%rax, -4(%rbp)

mov		-4(%rbp), %r10 
mov		0(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %rax
mov		%rax, 0(%rbp)

movl 	$3, -44(%rbp)

mov		-44(%rbp), %rax
mov		%rax, -20(%rbp)

movl 	$2, -48(%rbp)

mov		-48(%rbp), %r10 
mov		-20(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -52(%rbp)

mov		-52(%rbp), %rax
mov		%rax, -8(%rbp)

mov		-4(%rbp), %rax 
cltd
idivl	-8(%rbp) 
mov		%rax, -56(%rbp)

movl 	$5, -60(%rbp)

mov		-56(%rbp), %rax
cmp		-60(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

movl 	$1, -68(%rbp)

mov		-68(%rbp), %r10
cmp 	-64(%rbp), %r10

jne 		.falseCond0

movl 	$1, -72(%rbp)

mov		-72(%rbp), %rax
leave
ret

jmp 		.endIf1

.falseCond0: 

movl 	$0, -76(%rbp)

mov		-76(%rbp), %rax
leave
ret

.endIf1: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$6, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

call 	prueba
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

