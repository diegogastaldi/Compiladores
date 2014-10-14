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

mov 		-20, %rbx 
mov 		-24, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

movl 	$2.6, -28(%rbp)

mov		-28(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

movl 	$55, -36(%rbp)

mov 		-32, %rbx 
mov 		-36, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -40(%rbp)

movl 	$0, -44(%rbp)

mov 		-40, %rbx 
mov 		-44, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -48(%rbp)

movl 	$1, -52(%rbp)

mov 		-48, %rbx 
mov 		-52, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 33), $0 

movl 	$1, -8(%rbp)

mov		-8(%rbp), %rax
mov		%rax, null(%rbp)

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

mov 		-24, %rbx 
mov 		-28, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

movl 	$2.6, -32(%rbp)

mov		-32(%rbp), %rax 
neg		%rax 
mov		%rax, -36(%rbp) 

movl 	$0, -40(%rbp)

mov 		-36, %rbx 
mov 		-40, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

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

mov 		-56, %rbx 
mov 		-60, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

movl 	$5, -64(%rbp)

mov		-64(%rbp), %rax
cmp		null(%rbp), %rax
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

mov 		-76, %rbx 
mov 		-80, %rdx 
mov 		%rbx, null(%rbp, %rdx, 4) 

movl 	$8, -84(%rbp)

movl 	$6, -88(%rbp)

mov		-84(%rbp), %r10 
mov		-88(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -92(%rbp)

movl 	$7, -96(%rbp)

movl 	$2, -100(%rbp)

mov		-100(%rbp), %rax 
cltd
idivl	-96(%rbp)
mov		%rax, -104(%rbp)

mov		-92(%rbp), %rax 
cltd
idivl	-104(%rbp) 
mov		%rax, -108(%rbp)

mov		-108(%rbp), %r10
mov	 	%r10, %rdi

movl 	$4, -116(%rbp)

mov		-116(%rbp), %r10
mov	 	%r10, %rsi

call 	pruArreglos
mov 	%rax, -124(%rbp) 

mov		-124(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L0L3, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

