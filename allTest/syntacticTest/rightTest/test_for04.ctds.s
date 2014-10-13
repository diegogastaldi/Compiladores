.L02: 
		.string "%d resultado : " 

.text

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 14), $0 

movl 	$2, -12(%rbp)

movl 	$0, -16(%rbp)

mov 		-12, %rbx 
mov 		-16, %rdx 
mov 		%rbx, -4(%rbp, %rdx, 4) 

mov		-4(%rbp), %rax
leave
ret

movl 	$1, -20(%rbp)

movl 	$0, -24(%rbp)

movl 	$10, -28(%rbp)

mov		-28(%rbp), %rax 
neg		%rax 
mov		%rax, -32(%rbp) 

movl 	$11, -36(%rbp)

movl 	$2, -40(%rbp)

mov		-36(%rbp), %r10 
mov		-40(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -44(%rbp)

mov		-32(%rbp), %r10 
mov		-44(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -48(%rbp)

jmp 		.endFor0

.beginFor1: 

movl 	$2, -52(%rbp)

mov		-288(%rbp), %r10 
mov		-52(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -56(%rbp)

mov 		-56, %rbx 
mov 		-288, %rdx 
mov 		%rbx, -4(%rbp, %rdx, 4) 

mov		-24(%rbp), %r10 
mov		-20(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -24(%rbp)

.endFor0: 

mov		-48(%rbp), %r10
cmp 	-24(%rbp), %r10

.globl	main
.type	main, @function 
main: 
enter   $(4 * 8), $0 

jle 		.beginFor1

movl 	$8, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$4, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

call 	pruArreglos
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L02, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

