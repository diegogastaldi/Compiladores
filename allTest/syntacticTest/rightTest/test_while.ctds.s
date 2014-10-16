.L0L2: 
		.string "%d Mcd" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(8 * 17), $0 
mov 		%rdi, -16(%rbp) 
mov 		%rsi, -24(%rbp) 

mov		-24(%rbp), %r10
mov		%r10, -32(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -48(%rbp)

movq 	$1, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -40(%rbp)

.beginWhileL1: 

movq 	$0, -80(%rbp)

mov		-40(%rbp), %rax
cmp		-80(%rbp), %rax
setne 	%al
movzb %al, %rax
mov		%rax, -88(%rbp)

movq 	$1, -96(%rbp)

mov		-96(%rbp), %r10
cmp 	-88(%rbp), %r10

jne 		.endWhileL0

movq 	$1, -104(%rbp)

movq 	$1, -120(%rbp)

mov		-104(%rbp), %r10 
mov		-120(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -112(%rbp)

mov		-112(%rbp), %r10
mov		%r10, -40(%rbp)

movq 	$1, -136(%rbp)

mov		-136(%rbp), %r10 
mov		-48(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -128(%rbp)

mov		-128(%rbp), %r10
mov		%r10, -32(%rbp)

jmp 		.beginWhileL1

jmp 		.beginWhileL1

.endWhileL0: 

mov		-32(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 11), $0 

movq 	$6, -24(%rbp)

movq 	$10, -40(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	maxcomdiv
mov 	%rax, -56(%rbp) 

mov		$.L0L2, %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf
mov 	%rax, -80(%rbp) 

mov 		$0, %rax
leave
ret

