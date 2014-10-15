.text

.comm A, 2356

.comm B, 224

.comm C, 20

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 48), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -16(%rbp)

movl 	$1, -20(%rbp)

mov		-20(%rbp), %r10
cmp 	-16(%rbp), %r10

jne 		.falseCondL0

movl 	$1, -24(%rbp)

mov		-8(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -28(%rbp)

movl 	$0, -32(%rbp)

mov 		-28, %rbx 
mov 		-32, %rdx 
mov 		%rbx, -16(%rbp, %rdx, 4) 

.falseCondL0: 

mov 		-12(%rbp), %rax
cmp		-8(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -36(%rbp)

movl 	$1, -40(%rbp)

mov		-40(%rbp), %r10
cmp 	-36(%rbp), %r10

jne 		.falseCondL1

movl 	$5, -44(%rbp)

mov		-12(%rbp), %r10 
mov		-44(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -48(%rbp)

movl 	$1, -52(%rbp)

movl 	$1, -56(%rbp)

mov		-56(%rbp), %r10 
mov		-52(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -60(%rbp)

mov 		-48, %rbx 
mov 		-60, %rdx 
mov 		%rbx, -16(%rbp, %rdx, 4) 

jmp 		.endIfL2

.falseCondL1: 

mov		-12(%rbp), %r10 
mov		-12(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -64(%rbp)

mov 		-8, %rbx 
mov 		-64, %rdx 
mov 		%rbx, -16(%rbp, %rdx, 4) 

.endIfL2: 

movl 	$0, -68(%rbp)

mov		-68(%rbp), %rax
mov		%rax, -48(%rbp)

.beginWhileL4: 

movl 	$589, -72(%rbp)

mov		-48(%rbp), %rax
cmp		-72(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -76(%rbp)

movl 	$1, -80(%rbp)

mov		-80(%rbp), %r10
cmp 	-76(%rbp), %r10

jne 		.endWhileL3

movl 	$2, -84(%rbp)

mov		-48(%rbp), %r10 
mov		-84(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -88(%rbp)

mov 		-88(%rbp), %rbx 
mov 		%rbx, A-192(%rip) 

movl 	$1, -92(%rbp)

mov		$1, %rax
mov		%rax, -100(%rbp)

mov		-92(%rbp), %r10 
mov		-100(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -96(%rbp)

mov		-96(%rbp), %rax
mov		%rax, -48(%rbp)

jmp 		.beginWhileL4

.endWhileL3: 

movl 	$8, -104(%rbp)

mov		-104(%rbp), %rax
mov		%rax, -48(%rbp)

.beginWhileL6: 

movl 	$0, -108(%rbp)

mov		-48(%rbp), %rax
cmp		-108(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -112(%rbp)

movl 	$1, -116(%rbp)

mov		-116(%rbp), %r10
cmp 	-112(%rbp), %r10

jne 		.endWhileL5

movl 	$3, -120(%rbp)

mov		-8(%rbp), %r10 
mov		-120(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -124(%rbp)

mov 		-124(%rbp), %rbx 
mov 		%rbx, B-192(%rip) 

movl 	$1, -128(%rbp)

mov		$1, %rax
mov		%rax, -136(%rbp)

mov		-136(%rbp), %r10 
mov		-128(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -132(%rbp)

mov		-132(%rbp), %rax
mov		%rax, -48(%rbp)

jmp 		.beginWhileL6

.endWhileL5: 

movl 	$0, -140(%rbp)

mov		-140(%rbp), %rax
mov		%rax, -48(%rbp)

.beginWhileL8: 

movl 	$5, -144(%rbp)

movl 	$9, -148(%rbp)

mov		-144(%rbp), %r10 
mov		-148(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -152(%rbp)

movl 	$40, -156(%rbp)

mov		-156(%rbp), %r10 
mov		-152(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -160(%rbp)

mov		-48(%rbp), %rax
cmp		-160(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -164(%rbp)

movl 	$1, -168(%rbp)

mov		-168(%rbp), %r10
cmp 	-164(%rbp), %r10

jne 		.endWhileL7

mov		-8(%rbp), %rax
cmp		-2364(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -172(%rbp)

mov		$1, %rax
mov		%rax, -180(%rbp)

mov		-172(%rbp), %r10 
mov		-180(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -176(%rbp)

mov 		-176(%rbp), %rbx 
mov 		%rbx, C-192(%rip) 

movl 	$1, -184(%rbp)

mov		-48(%rbp), %r10 
mov		-184(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -188(%rbp)

mov		-188(%rbp), %rax
mov		%rax, -48(%rbp)

jmp 		.beginWhileL8

.endWhileL7: 

mov		-16(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

movl 	$4, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$8, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	pruArreglos
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

