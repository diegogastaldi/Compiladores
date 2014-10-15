.L0L5: 
		.string "%f" 

.text

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(4 * 23), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -20(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -16(%rbp)

movl 	$1.0, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -24(%rbp)

movl 	$0, -28(%rbp)

mov		-8(%rbp), %rax
cmp		-28(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -32(%rbp)

movl 	$1, -36(%rbp)

mov		-36(%rbp), %r10
cmp 	-32(%rbp), %r10

jne 		.falseCondL0

mov		-8(%rbp), %rax 
neg		%rax 
mov		%rax, -40(%rbp) 

mov		-40(%rbp), %rax
mov		%rax, -8(%rbp)

cmpl		$0, -20(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -44(%rbp) 

mov		-44(%rbp), %rax
mov		%rax, -20(%rbp)

.falseCondL0: 

.beginWhileL2: 

mov		-16(%rbp), %rax
cmp		-8(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -48(%rbp)

movl 	$1, -52(%rbp)

mov		-52(%rbp), %r10
cmp 	-48(%rbp), %r10

jne 		.endWhileL1

mov		-24(%rbp), %r10 
mov		-12(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -56(%rbp)

mov		-56(%rbp), %rax
mov		%rax, -24(%rbp)

movl 	$1, -60(%rbp)

mov		-16(%rbp), %r10 
mov		-60(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -64(%rbp)

mov		-64(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.beginWhileL2

.endWhileL1: 

cmpl		$0, -20(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -68(%rbp) 

movl 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 	-68(%rbp), %r10

jne 		.falseCondL3

movl 	$1.0, -76(%rbp)

mov		-76(%rbp), %rax 
cltd
idivl	-24(%rbp) 
mov		%rax, -80(%rbp)

mov		-80(%rbp), %rax
leave
ret

jmp 		.endIfL4

.falseCondL3: 

mov		-24(%rbp), %rax
leave
ret

.endIfL4: 

movl 	$100.1, -84(%rbp)

mov		-84(%rbp), %rax 
neg		%rax 
mov		%rax, -88(%rbp) 

mov		-88(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 8), $0 

movl 	$8.0, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

movl 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	potencia
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %rax
mov		%rax, -8(%rbp)

mov		$.L0L5, %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

