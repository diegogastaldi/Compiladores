.L0L2: 
		.string "%d resultado : " 

.text

.comm A, 20

.comm B, 224

.comm C, 40

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 18), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$2, -16(%rbp)

movl 	$0, -20(%rbp)

mov 		-16(%rbp), %rbx 
mov 		-20(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, A(, %r10, 4) 

movl 	$1, -24(%rbp)

mov 		-24(%rbp), %r10 
imul		$4, %r10 
mov 		A(,%r10,4) , %r11
mov 		%r11, -28(%rbp) 

mov		-28(%rbp), %rax
leave
ret

movl 	$1, -32(%rbp)

movl 	$0, -36(%rbp)

movl 	$10, -40(%rbp)

mov		-40(%rbp), %rax 
neg		%rax 
mov		%rax, -44(%rbp) 

movl 	$11, -48(%rbp)

movl 	$2, -52(%rbp)

mov		-48(%rbp), %r10 
mov		-52(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -56(%rbp)

mov		-44(%rbp), %r10 
mov		-56(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -60(%rbp)

jmp 		.endForL0

.beginForL1: 

movl 	$2, -64(%rbp)

mov		-16(%rbp), %r10 
mov		-64(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -68(%rbp)

mov 		-68(%rbp), %rbx 
mov 		-16(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, A(, %r10, 4) 

mov		-36(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -36(%rbp)

.endForL0: 

mov		-60(%rbp), %r10
cmp 	-36(%rbp), %r10

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

