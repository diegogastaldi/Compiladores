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
enter   $(4 * 16), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$8.87, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, -16(%rbp)

movl 	$4, -20(%rbp)

movl 	$0, -24(%rbp)

mov 		-20(%rbp), %rbx 
mov 		-24(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, A(, %r10, 4) 

movl 	$2.6, -28(%rbp)

mov		-28(%rbp), %r10 
mov		-16(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

movl 	$55, -36(%rbp)

mov 		-32(%rbp), %rbx 
mov 		-36(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, B(, %r10, 4) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -40(%rbp)

movl 	$0, -44(%rbp)

mov 		-40(%rbp), %rbx 
mov 		-44(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, C(, %r10, 4) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -48(%rbp)

movl 	$1, -52(%rbp)

mov 		-48(%rbp), %rbx 
mov 		-52(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, C(, %r10, 4) 

movl 	$0, -56(%rbp)

mov 		-56(%rbp), %r10 
imul		$4, %r10 
mov 		A(,%r10,4) , %r11
mov 		%r11, -60(%rbp) 

mov		-60(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 39), $0 

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
mov 		-28(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, A(, %r10, 4) 

movl 	$2.6, -32(%rbp)

mov		-32(%rbp), %rax 
neg		%rax 
mov		%rax, -36(%rbp) 

movl 	$0, -40(%rbp)

mov 		-36(%rbp), %rbx 
mov 		-40(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, B(, %r10, 4) 

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
mov 		-60(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, C(, %r10, 4) 

movl 	$5, -64(%rbp)

movl 	$7, -68(%rbp)

movl 	$3, -72(%rbp)

movl 	$3, -76(%rbp)

mov		-72(%rbp), %r10 
mov		-76(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-80(%rbp), %r10 
mov		-68(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -84(%rbp)

mov 		-84(%rbp), %r10 
imul		$4, %r10 
mov 		A(,%r10,4) , %r11
mov 		%r11, -88(%rbp) 

mov		-64(%rbp), %rax
cmp		-88(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -92(%rbp)

movl 	$1, -96(%rbp)

cmpl		$0, -92(%rbp)
jne 		.L0
cmpl		$0, -96(%rbp)
je 		.L1
.L0: 
mov		$1, %r10
jmp 		.L2
.L1:
mov		$0, %r10
.L2:
mov		%r10, -100(%rbp)

movl 	$3, -104(%rbp)

mov 		-100(%rbp), %rbx 
mov 		-104(%rbp), %r10 
imul		$4, %r10 
mov 		%rbx, C(, %r10, 4) 

mov		$.L0L3, %r10
mov	 	%r10, %rdi

movl 	$4, -112(%rbp)

mov		-112(%rbp), %r10
mov	 	%r10, %rdi

movl 	$8, -120(%rbp)

movl 	$6, -124(%rbp)

mov		-120(%rbp), %r10 
mov		-124(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -128(%rbp)

movl 	$7, -132(%rbp)

movl 	$2, -136(%rbp)

mov		-136(%rbp), %rax 
cltd
idivl	-132(%rbp)
mov		%rax, -140(%rbp)

mov		-128(%rbp), %rax 
cltd
idivl	-140(%rbp) 
mov		%rax, -144(%rbp)

mov		-144(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -152(%rbp) 

mov		-152(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

