.text

.globl	pruArreglos
.type	pruArreglos, @function 
pruArreglos: 
enter   $(4 * 53), $0 
mov 		%rdi, -4(%rbp) 
mov 		%rsi, -8(%rbp) 

mov		1(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -48(%rbp)

movl 	$1, -52(%rbp)

mov		-52(%rbp), %r10
cmp 	-48(%rbp), %r10

jne 		.falseCond0

movl 	$1, -56(%rbp)

mov		0(%rbp), %r10 
mov		-56(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -60(%rbp)

movl 	$0, -64(%rbp)

mov 		-60, %rbx 
mov 		-64, %rdx 
mov 		%rbx, 10428(%rbp, %rdx, 4) 

.falseCond0: 

mov 		1(%rbp), %rax
cmp		0(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -68(%rbp)

movl 	$1, -72(%rbp)

mov		-72(%rbp), %r10
cmp 	-68(%rbp), %r10

jne 		.falseCond1

movl 	$5, -76(%rbp)

mov		1(%rbp), %r10 
mov		-76(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -80(%rbp)

movl 	$1, -84(%rbp)

movl 	$1, -88(%rbp)

mov		-88(%rbp), %r10 
mov		-84(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -92(%rbp)

mov 		-80, %rbx 
mov 		-92, %rdx 
mov 		%rbx, 10428(%rbp, %rdx, 4) 

jmp 		.endIf2

.falseCond1: 

mov		1(%rbp), %r10 
mov		1(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -96(%rbp)

mov 		0, %rbx 
mov 		-96, %rdx 
mov 		%rbx, 10428(%rbp, %rdx, 4) 

.endIf2: 

movl 	$0, -100(%rbp)

mov		-100(%rbp), %rax
mov		%rax, -2640(%rbp)

.beginWhile4: 

movl 	$589, -104(%rbp)

mov		-2640(%rbp), %rax
cmp		-104(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -108(%rbp)

movl 	$1, -112(%rbp)

mov		-112(%rbp), %r10
cmp 	-108(%rbp), %r10

jne 		.endWhile3

movl 	$2, -116(%rbp)

mov		-2640(%rbp), %r10 
mov		-116(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -120(%rbp)

mov 		-120, %rbx 
mov 		-2640, %rdx 
mov 		%rbx, 12(%rbp, %rdx, 4) 

movl 	$1, -124(%rbp)

mov		$1, %rax
mov		%rax, -132(%rbp)

mov		-124(%rbp), %r10 
mov		-132(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -128(%rbp)

mov		-128(%rbp), %rax
mov		%rax, -2640(%rbp)

jmp 		.beginWhile4

.endWhile3: 

movl 	$8, -136(%rbp)

mov		-136(%rbp), %rax
mov		%rax, -2640(%rbp)

.beginWhile6: 

movl 	$0, -140(%rbp)

mov		-2640(%rbp), %rax
cmp		-140(%rbp), %rax
setge 	%al
movzb %al, %rax
mov		%rax, -144(%rbp)

movl 	$1, -148(%rbp)

mov		-148(%rbp), %r10
cmp 	-144(%rbp), %r10

jne 		.endWhile5

movl 	$3, -152(%rbp)

mov		12(%rbp), %r10 
mov		-152(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -156(%rbp)

mov 		-156, %rbx 
mov 		-2640, %rdx 
mov 		%rbx, 9436(%rbp, %rdx, 4) 

movl 	$1, -160(%rbp)

mov		$1, %rax
mov		%rax, -168(%rbp)

mov		-168(%rbp), %r10 
mov		-160(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -164(%rbp)

mov		-164(%rbp), %rax
mov		%rax, -2640(%rbp)

jmp 		.beginWhile6

.endWhile5: 

movl 	$0, -172(%rbp)

mov		-172(%rbp), %rax
mov		%rax, -2640(%rbp)

.beginWhile8: 

movl 	$5, -176(%rbp)

movl 	$9, -180(%rbp)

mov		-176(%rbp), %r10 
mov		-180(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -184(%rbp)

movl 	$40, -188(%rbp)

mov		-188(%rbp), %r10 
mov		-184(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -192(%rbp)

mov		-2640(%rbp), %rax
cmp		-192(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -196(%rbp)

movl 	$1, -200(%rbp)

mov		-200(%rbp), %r10
cmp 	-196(%rbp), %r10

jne 		.endWhile7

mov		12(%rbp), %rax
cmp		9436(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -204(%rbp)

mov 		-204, %rbx 
mov 		-2640, %rdx 
mov 		%rbx, 10332(%rbp, %rdx, 4) 

movl 	$1, -208(%rbp)

mov		-2640(%rbp), %r10 
mov		-208(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -212(%rbp)

mov		-212(%rbp), %rax
mov		%rax, -2640(%rbp)

jmp 		.beginWhile8

.endWhile7: 

mov		10428(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 7), $0 

movl 	$8, -8(%rbp)

mov		-8(%rbp), %r10
mov	 	%r10, %rdi

movl 	$4, -16(%rbp)

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

call 	pruArreglos
mov 	%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov	 	%r10, %rdi

call 	printf

mov 		$0, %rax
leave
ret

