.SL1: 
		.string "1-1 = %d" 

.text

.globl	nthprime
.type	nthprime, @function 
nthprime: 
enter   $(8 * 8), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$0, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

cmpq		$0, -24(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -48(%rbp) 

movq 	$1, -56(%rbp)

mov		-56(%rbp), %r10
cmp 		-48(%rbp), %r10

jne 		.falseCondL0

movq 	$1, -56(%rbp)

mov		-56(%rbp), %r10 
mov		-8(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -8(%rbp)

.falseCondL0: 

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


movq 	$1, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	nthprime
mov 	%rax, -24(%rbp) 

mov		$.SL1, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

