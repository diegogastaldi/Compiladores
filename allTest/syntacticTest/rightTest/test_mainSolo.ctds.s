.text

.globl	main
.type	main, @function 
main: 
enter   $(8 * 14), $0 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq		$0, %r10
mov		%r10, -32(%rbp)

movq		$0, %r10
mov		%r10, -40(%rbp)

movq 	$1, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -16(%rbp)

cmpq		$0, -16(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

cmpq		$0, -16(%rbp)
je 		.L0
cmpq		$0, -32(%rbp)
je 		.L0
mov		$1, %r10
jmp		.L1
.L0:
mov		$0, %r10
.L1:
mov		%r10, -72(%rbp)

cmpq		$0, -32(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -80(%rbp) 

cmpq		$0, -72(%rbp)
jne 		.L2
cmpq		$0, -80(%rbp)
je 		.L3
.L2: 
mov		$1, %r10
jmp 		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -24(%rbp)

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf
mov 	%rax, -104(%rbp) 

mov 		$0, %rax
leave
ret

