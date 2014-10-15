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

mov 		-16(%rbp), %rbx 
mov 		%rbx, A-80(%rip) 

mov		-8(%rbp), %rax
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

mov 		-44(%rbp), %rbx 
mov 		%rbx, A-64(%rip) 

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

mov		$.L0L2, %r10
mov	 	%r10, %rdi

movl 	$4, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

movl 	$8, -20(%rbp)

mov		-20(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -28(%rbp) 

mov		-28(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

