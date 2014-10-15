.L0L2: 
		.string "%d resultado : " 

.text

.comm A, 20

.comm B, 224

.comm C, 40

.globl	par
.type	par, @function 
par: 
enter   $(4 * 1), $0 

movl 	$15, -8(%rbp)

mov		-8(%rbp), %rax
leave
ret

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 15), $0 
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

mov 		$0, %rax 
call 	par
mov 	%rax, -28(%rbp) 

mov 		$0, %rax 
call 	par
mov 	%rax, -36(%rbp) 

movl 	$5, -44(%rbp)

mov		-36(%rbp), %r10 
mov		-44(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -48(%rbp)

jmp 		.endForL0

.beginForL1: 

movl 	$2, -52(%rbp)

mov		-16(%rbp), %r10 
mov		-52(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -56(%rbp)

mov 		-56, %rbx 
mov 		-16, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

mov		-28(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -28(%rbp)

.endForL0: 

mov		-48(%rbp), %r10
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

