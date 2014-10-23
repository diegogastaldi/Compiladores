.L0L2: 
		.string "%d resultado : " 

.text

.comm A, 40

.comm B, 448

.comm C, 80

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(8 * 15), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq 	$2, -56(%rbp)

movq 	$0, -64(%rbp)

mov 		-56(%rbp), %r10 
mov 		-64(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

movq 	$1, -72(%rbp)

mov 		-72(%rbp), %edx 
cltq 
mov 		A(,%rdx,8) , %r11
mov 		%r11, -80(%rbp) 

mov		-80(%rbp), %rax
leave
ret

movq 	$1, -88(%rbp)

movq 	$5, -96(%rbp)

movq 	$10, -104(%rbp)

jmp 		.endForL0

.beginForL1: 

movq 	$2, -112(%rbp)

mov		-32(%rbp), %r10 
mov		-112(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -120(%rbp)

mov 		-120(%rbp), %r10 
mov 		-32(%rbp), %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov		-96(%rbp), %r10 
mov		-88(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

.endForL0: 

mov		-96(%rbp), %r10
cmp 		-104(%rbp), %r10

jle 		.beginForL1

.globl	main
.type	main, @function 
main: 
enter   $(8 * 9), $0 

mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov 		$0, %r10 
mov 		$56, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

mov 		$0, %r10 
mov 		$10, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$4, -24(%rbp)

movq 	$8, -32(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -40(%rbp) 

mov		$.L0L2, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -64(%rbp) 

mov 		$0, %rax
leave
ret

