.L0L2: 
		.string "%d resultado : " 

.text

.comm A, 20

.comm B, 224

.comm C, 40

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 12), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$2, -16(%rbp)

movl 	$0, -20(%rbp)

mov 		-16, %rbx 
mov 		-20, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

mov 		$0, %rax
leave
ret

movl 	$1, -24(%rbp)

movl 	$5, -28(%rbp)

movl 	$10, -32(%rbp)

mov		-32(%rbp), %rax 
neg		%rax 
mov		%rax, -36(%rbp) 

jmp 		.endForL0

.beginForL1: 

movl 	$2, -40(%rbp)

mov		-16(%rbp), %r10 
mov		-40(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -44(%rbp)

mov 		-44, %rbx 
mov 		-16, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

mov		-28(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -28(%rbp)

.endForL0: 

mov		-36(%rbp), %r10
cmp 	-28(%rbp), %r10

jle 		.beginForL1

.globl	main
.type	main, @function 
main: 
enter   $(4 * 8), $0 

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

mov		$.L0L2, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

