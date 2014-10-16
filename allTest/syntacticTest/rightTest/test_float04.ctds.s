.L0L8: 
		.string "%f" 

.text

.comm w, 4

.comm m, 4

.comm res, 4

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(4 * 28), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$0, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -20(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
mov		%r10, -16(%rbp)

movl 	$1.0, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -24(%rbp)

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

mov		-40(%rbp), %r10
mov		%r10, -8(%rbp)

movl 	$1, -44(%rbp)

mov		-44(%rbp), %r10
mov		%r10, -20(%rbp)

.falseCondL0: 

.beginWhileL2: 

mov		-16(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -48(%rbp)

mov 		-16(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -52(%rbp)

cmpl		$0, -48(%rbp)
jne 		.L3
cmpl		$0, -52(%rbp)
je 		.L4
.L3: 
mov		$1, %r10
jmp 		.L5
.L4:
mov		$0, %r10
.L5:
mov		%r10, -56(%rbp)

movl 	$1, -60(%rbp)

mov		-60(%rbp), %r10
cmp 	-56(%rbp), %r10

jne 		.endWhileL1

movl 	$2.0, -64(%rbp)

mov		-12(%rbp), %r10 
mov		-64(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -68(%rbp)

mov		-24(%rbp), %r10 
mov		-68(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, -24(%rbp)

movl 	$1, -76(%rbp)

mov		-16(%rbp), %r10 
mov		-76(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

jmp 		.beginWhileL2

.endWhileL1: 

cmpl		$0, -20(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -84(%rbp) 

cmpl		$0, -84(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -88(%rbp) 

movl 	$1, -92(%rbp)

mov		-92(%rbp), %r10
cmp 	-88(%rbp), %r10

jne 		.falseCondL6

movl 	$1.0, -96(%rbp)

mov		-96(%rbp), %rax 
cltd
idivl	-24(%rbp) 
mov		%rax, -100(%rbp)

mov		-100(%rbp), %rax
leave
ret

jmp 		.endIfL7

.falseCondL6: 

mov		-24(%rbp), %rax
leave
ret

.endIfL7: 

movl 	$100.1, -104(%rbp)

mov		-104(%rbp), %rax 
neg		%rax 
mov		%rax, -108(%rbp) 

mov		-108(%rbp), %rax
leave
ret

.globl	multRepeat
.type	multRepeat, @function 
multRepeat: 
enter   $(4 * 9), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-12(%rbp), %r10 
mov		-8(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -16(%rbp)

mov		-12(%rbp), %r10 
mov		-16(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -20(%rbp)

mov		-12(%rbp), %r10 
mov		-20(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -24(%rbp)

mov		-8(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -28(%rbp)

mov		-8(%rbp), %r10 
mov		-28(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 18), $0 

movl 	$15.0, -8(%rbp)

mov		-8(%rbp), %rax 
neg		%rax 
mov		%rax, -12(%rbp) 

mov		-12(%rbp), %r10
mov		%r10, res(%rip)

movl 	$4.3, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, w(%rip)

movl 	$7.6, -20(%rbp)

mov		-20(%rbp), %rax 
neg		%rax 
mov		%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov		%r10, m(%rip)

movl 	$80.0, -28(%rbp)

mov		-28(%rbp), %r10
mov		%r10, -12(%rbp)

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

movl 	$2, -36(%rbp)

mov		-36(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	potencia
mov 	%rax, -44(%rbp) 

mov		-44(%rbp), %r10
mov		%r10, -8(%rbp)

mov		$.L0L8, %r10
mov	 	%r10, %rdi

mov 		res(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		-56(%rbp), %r10
mov	 	%r10, %rdi

mov		-8(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	multRepeat
mov 	%rax, -68(%rbp) 

mov		-68(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

