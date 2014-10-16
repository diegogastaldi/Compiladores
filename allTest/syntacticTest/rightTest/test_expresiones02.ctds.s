.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(4 * 15), $0 
mov 		%rdi, -8(%rbp) 

movl 	$4, -12(%rbp)

mov		-12(%rbp), %r10
mov		%r10, -20(%rbp)

movl 	$5, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-20(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -20(%rbp)

mov		-20(%rbp), %r10
mov		%r10, -12(%rbp)

mov		-12(%rbp), %r10 
mov		-8(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -8(%rbp)

movl 	$3, -28(%rbp)

mov		-28(%rbp), %r10
mov		%r10, -28(%rbp)

movl 	$2, -32(%rbp)

mov		-32(%rbp), %r10 
mov		-28(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -36(%rbp)

mov		-36(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-12(%rbp), %rax 
cltd
idivl	-16(%rbp) 
mov		%rax, -40(%rbp)

movl 	$5, -44(%rbp)

mov		-40(%rbp), %rax
cmp		-44(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -48(%rbp)

movl 	$1, -52(%rbp)

mov		-52(%rbp), %r10
cmp 	-48(%rbp), %r10

jne 		.falseCondL0

movl 	$1, -56(%rbp)

mov		-56(%rbp), %rax
leave
ret

jmp 		.endIfL1

.falseCondL0: 

movl 	$0, -60(%rbp)

mov		-60(%rbp), %rax
leave
ret

.endIfL1: 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 5), $0 

movl 	$6, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	prueba
mov 	%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

