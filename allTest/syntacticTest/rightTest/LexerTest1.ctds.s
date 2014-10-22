.L0L3: 
		.string "%d" 

.L0L2: 
		.string "entro al while  %d" 

.text

.comm A, 4712

.comm B, 448

.comm C, 40

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(8 * 22), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq		$0, %r10
mov		%r10, -48(%rbp)

movq		$0, %r10
mov		%r10, -56(%rbp)

movq		$0, %r10
mov		%r10, -64(%rbp)

movq		$0, %r10
mov		%r10, -72(%rbp)

movq		$0, %r10
mov		%r10, -80(%rbp)

movq		$0, %r10
mov		%r10, -88(%rbp)

movq 	$0, -120(%rbp)

mov		-120(%rbp), %r10
mov		%r10, -96(%rbp)

movq 	$1, -128(%rbp)

movq 	$0, -136(%rbp)

movq 	$10, -144(%rbp)

jmp 		.endForL0

.beginForL1: 

mov		$.L0L2, %r10
mov	 	%r10, %rdi

mov		-96(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -168(%rbp) 

mov		-136(%rbp), %r10 
mov		-128(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -96(%rbp)

.endForL0: 

mov		-136(%rbp), %r10
cmp 		-144(%rbp), %r10

jle 		.beginForL1

mov		-96(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 11), $0 

mov 		$0, %r10 
mov 		$589, %edx 
cltq 
mov 		%r10, A(, %rdx, 8) 

mov 		$0, %r10 
mov 		$56, %edx 
cltq 
mov 		%r10, B(, %rdx, 8) 

mov 		$0, %r10 
mov 		$5, %edx 
cltq 
mov 		%r10, C(, %rdx, 8) 

movq 	$2, -24(%rbp)

movq 	$3, -40(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -56(%rbp) 

mov		$.L0L3, %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -80(%rbp) 

mov 		$0, %rax
leave
ret

