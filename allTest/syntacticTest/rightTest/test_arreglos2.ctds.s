.L0L3: 
		.string "%d resultado : " 

.text

.comm A, 20

.comm B, 224

.comm C, 40

.comm y, 4

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 14), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$8.87, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -16(%rbp)

movl 	$4, -20(%rbp)

movl 	$0, -24(%rbp)

mov 		-20(%rbp), %rbx 
mov 		%rbx, A-96(%rip) 

movl 	$2.6, -28(%rbp)

mov		-28(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

movl 	$55, -36(%rbp)

mov 		-32(%rbp), %rbx 
mov 		%rbx, B-144(%rip) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -40(%rbp)

movl 	$0, -44(%rbp)

mov 		-40(%rbp), %rbx 
mov 		%rbx, C-176(%rip) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -48(%rbp)

movl 	$1, -52(%rbp)

mov 		-48(%rbp), %rbx 
mov 		%rbx, C-208(%rip) 

mov		-8(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 33), $0 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, y(%rip)

movl 	$58, -12(%rbp)

movl 	$6, -16(%rbp)

mov		-16(%rbp), %rax 
neg		%rax 
mov		%rax, -20(%rbp) 

mov		-20(%rbp), %r10 
mov		-12(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -24(%rbp)

movl 	$1, -28(%rbp)

mov 		-24(%rbp), %rbx 
mov 		%rbx, A-112(%rip) 

movl 	$2.6, -32(%rbp)

mov		-32(%rbp), %rax 
neg		%rax 
mov		%rax, -36(%rbp) 

movl 	$0, -40(%rbp)

mov 		-36(%rbp), %rbx 
mov 		%rbx, B-160(%rip) 

movl 	$4, -44(%rbp)

movl 	$6, -48(%rbp)

mov		-44(%rbp), %rax
cmp		-48(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -52(%rbp)

cmpl		$0, -52(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -56(%rbp) 

movl 	$2, -60(%rbp)

mov 		-56(%rbp), %rbx 
mov 		%rbx, C-240(%rip) 

movl 	$5, -64(%rbp)

mov		-64(%rbp), %rax
cmp		-8(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -68(%rbp)

movl 	$1, -72(%rbp)

cmpl		$0, -68(%rbp)
jne 		.L0
cmpl		$0, -72(%rbp)
je 		.L1
.L0: 
mov		$1, %r10
jmp 		.L2
.L1:
mov		$0, %r10
.L2:
mov		%r10, -76(%rbp)

movl 	$3, -80(%rbp)

mov 		-76(%rbp), %rbx 
mov 		%rbx, C-320(%rip) 

mov		$.L0L3, %r10
mov	 	%r10, %rdi

movl 	$4, -88(%rbp)

mov		-88(%rbp), %r10
mov	 	%r10, %rdi

movl 	$8, -96(%rbp)

movl 	$6, -100(%rbp)

mov		-96(%rbp), %r10 
mov		-100(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -104(%rbp)

movl 	$7, -108(%rbp)

movl 	$2, -112(%rbp)

mov		-112(%rbp), %rax 
cltd
idivl	-108(%rbp)
mov		%rax, -116(%rbp)

mov		-104(%rbp), %rax 
cltd
idivl	-116(%rbp) 
mov		%rax, -120(%rbp)

mov		-120(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -128(%rbp) 

mov		-128(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

