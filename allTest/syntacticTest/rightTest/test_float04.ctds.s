.L08: 
		.string "%f" 

.text

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(4 * 28), $0 

movl 	$0, -20(%rbp)

mov		-20(%rbp), %rax
mov		%rax, -20(%rbp)

movl 	$1, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -16(%rbp)

movl 	$1.0, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -24(%rbp)

movl 	$0, -32(%rbp)

mov		0(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.falseCond0

mov		0(%rbp), %rax 
neg		%rax 
mov		%rax, -44(%rbp) 

mov		-44(%rbp), %rax
mov		%rax, 0(%rbp)

movl 	$1, -48(%rbp)

mov		-48(%rbp), %rax
mov		%rax, -20(%rbp)

.falseCond0: 

.beginWhile2: 

mov		-16(%rbp), %rax
cmp		0(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -52(%rbp)

mov 		-16(%rbp), %rax
cmp		0(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -56(%rbp)

cmpl		$0, -52(%rbp)
jne 		.3
cmpl		$0, -56(%rbp)
je 		.4
.3: 
mov		$1, %r10
jmp 		.5
.4:
mov		$0, %r10
.5:
mov		%r10, -60(%rbp)

movl 	$1, -64(%rbp)

mov		-64(%rbp), %r10
cmp 	-60(%rbp), %r10

jne 		.endWhile1

movl 	$2.0, -68(%rbp)

mov		1(%rbp), %r10 
mov		-68(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -72(%rbp)

mov		-24(%rbp), %r10 
mov		-72(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -76(%rbp)

mov		-76(%rbp), %rax
mov		%rax, -24(%rbp)

movl 	$1, -80(%rbp)

mov		-16(%rbp), %r10 
mov		-80(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -84(%rbp)

mov		-84(%rbp), %rax
mov		%rax, -16(%rbp)

jmp 		.beginWhile2

.endWhile1: 

cmpl		$0, -20(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -88(%rbp) 

cmpl		$0, -88(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -92(%rbp) 

movl 	$1, -96(%rbp)

mov		-96(%rbp), %r10
cmp 	-92(%rbp), %r10

jne 		.falseCond6

movl 	$1.0, -100(%rbp)

mov		-100(%rbp), %rax 
cltd
idivl	-24(%rbp) 
mov		%rax, -104(%rbp)

mov		-104(%rbp), %rax
leave
ret

jmp 		.endIf7

.falseCond6: 

mov		-24(%rbp), %rax
leave
ret

.endIf7: 

movl 	$100.1, -108(%rbp)

mov		-108(%rbp), %rax 
neg		%rax 
mov		%rax, -112(%rbp) 

mov		-112(%rbp), %rax
leave
ret

.globl	multRepeat
.type	multRepeat, @function 
multRepeat: 
enter   $(4 * 7), $0 

mov		1(%rbp), %r10 
mov		0(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -12(%rbp)

mov		1(%rbp), %r10 
mov		-12(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -16(%rbp)

mov		1(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -20(%rbp)

mov		0(%rbp), %r10 
mov		-20(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -24(%rbp)

mov		0(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -16(%rbp)

.globl	main
.type	main, @function 
main: 
enter   $(4 * 18), $0 

mov		-16(%rbp), %rax
leave
ret

movl 	$15.0, -16(%rbp)

mov		-16(%rbp), %rax 
neg		%rax 
mov		%rax, -20(%rbp) 

mov		-20(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$4.3, -24(%rbp)

mov		-24(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$7.6, -28(%rbp)

mov		-28(%rbp), %rax 
neg		%rax 
mov		%rax, -32(%rbp) 

mov		-32(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$80.0, -36(%rbp)

mov		-36(%rbp), %rax
mov		%rax, -20(%rbp)

movl 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov	 	%r10, %rdi

mov		-20(%rbp), %r10
mov	 	%r10, %rsi

call 	potencia
mov 	%rax, -52(%rbp) 

mov		-52(%rbp), %rax
mov		%rax, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rdi

mov		-12(%rbp), %r10
mov	 	%r10, %rsi

call 	multRepeat
mov 	%rax, -68(%rbp) 

mov		-68(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L08, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

