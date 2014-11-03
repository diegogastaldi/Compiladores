.text

.globl	pruebaLogica
.type	pruebaLogica, @function 
pruebaLogica: 
enter   $(8 * 12), $0 

mov 		%rdi, -8(%rbp) 

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$1, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -48(%rbp)

cmpq		$0, -48(%rbp)
jne 		.L0
cmpq		$0, -24(%rbp)
je 		.L1
.L0: 
mov		$1, %r10
jmp 		.L2
.L1:
mov		$0, %r10
.L2:
mov		%r10, -56(%rbp)

movq 	$1, -64(%rbp)

cmpq		$0, -64(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -72(%rbp) 

cmpq		$0, -56(%rbp)
je 		.L3
cmpq		$0, -72(%rbp)
je 		.L3
mov		$1, %r10
jmp		.L4
.L3:
mov		$0, %r10
.L4:
mov		%r10, -80(%rbp)

cmpq		$0, -8(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -88(%rbp) 

cmpq		$0, -80(%rbp)
je 		.L5
cmpq		$0, -88(%rbp)
je 		.L5
mov		$1, %r10
jmp		.L6
.L5:
mov		$0, %r10
.L6:
mov		%r10, -96(%rbp)

mov		-96(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 4), $0 


movq 	$0, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	pruebaLogica
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

