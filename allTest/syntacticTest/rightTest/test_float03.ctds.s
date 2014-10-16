.L0L27: 
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

.globl	multiples
.type	multiples, @function 
multiples: 
enter   $(4 * 71), $0 
mov 		%rdi, -8(%rbp) 
mov 		%rsi, -12(%rbp) 

movl 	$20.0, -16(%rbp)

mov		-16(%rbp), %rax 
neg		%rax 
mov		%rax, -20(%rbp) 

mov		-20(%rbp), %r10
mov		%r10, -16(%rbp)

movl 	$2, -24(%rbp)

mov		-24(%rbp), %rax 
neg		%rax 
mov		%rax, -28(%rbp) 

mov		-28(%rbp), %r10
mov		%r10, -24(%rbp)

movl 	$3.0, -32(%rbp)

mov		-32(%rbp), %rax 
neg		%rax 
mov		%rax, -36(%rbp) 

mov		-36(%rbp), %r10
mov		%r10, -28(%rbp)

movl 	$3.0, -40(%rbp)

mov		-40(%rbp), %rax 
neg		%rax 
mov		%rax, -44(%rbp) 

mov		-44(%rbp), %r10
mov		%r10, -20(%rbp)

mov		-28(%rbp), %r10 
mov		-20(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -48(%rbp)

mov		-16(%rbp), %r10 
mov		-48(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -52(%rbp)

mov		-52(%rbp), %r10
mov		%r10, -32(%rbp)

movl 	$0, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -40(%rbp)

movl 	$0, -60(%rbp)

mov		-60(%rbp), %r10
mov		%r10, -52(%rbp)

movl 	$0, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -48(%rbp)

movl 	$5, -68(%rbp)

mov		-68(%rbp), %r10
mov		%r10, -44(%rbp)

mov		-12(%rbp), %rax
cmp		-8(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -72(%rbp)

movl 	$1, -76(%rbp)

mov		-76(%rbp), %r10
cmp 	-72(%rbp), %r10

jne 		.falseCondL8

mov		-32(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -80(%rbp)

movl 	$1, -84(%rbp)

mov		-84(%rbp), %r10
cmp 	-80(%rbp), %r10

jne 		.falseCondL9

mov		-12(%rbp), %r10
mov		%r10, -36(%rbp)

jmp 		.endIfL10

.falseCondL9: 

mov		-8(%rbp), %r10
mov		%r10, -36(%rbp)

.endIfL10: 

jmp 		.endIfL11

.falseCondL8: 

.beginWhileL13: 

mov		-40(%rbp), %rax
cmp		-44(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -88(%rbp)

movl 	$1, -92(%rbp)

mov		-92(%rbp), %r10
cmp 	-88(%rbp), %r10

jne 		.endWhileL12

.beginWhileL15: 

mov		-52(%rbp), %rax
cmp		-44(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -96(%rbp)

movl 	$1, -100(%rbp)

mov		-100(%rbp), %r10
cmp 	-96(%rbp), %r10

jne 		.endWhileL14

.beginWhileL17: 

mov		-48(%rbp), %rax
cmp		-44(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -104(%rbp)

mov 		-48(%rbp), %rax
cmp		-44(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -108(%rbp)

cmpl		$0, -104(%rbp)
jne 		.L18
cmpl		$0, -108(%rbp)
je 		.L19
.L18: 
mov		$1, %r10
jmp 		.L20
.L19:
mov		$0, %r10
.L20:
mov		%r10, -112(%rbp)

movl 	$1, -116(%rbp)

mov		-116(%rbp), %r10
cmp 	-112(%rbp), %r10

jne 		.endWhileL16

movl 	$3, -120(%rbp)

mov 		-24(%rbp), %rax
cmp		-120(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -124(%rbp)

movl 	$1, -128(%rbp)

mov		-128(%rbp), %r10
cmp 	-124(%rbp), %r10

jne 		.falseCondL21

movl 	$2.0, -132(%rbp)

mov		-36(%rbp), %r10 
mov		-132(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -136(%rbp)

mov		-136(%rbp), %r10
mov		%r10, -36(%rbp)

jmp 		.endIfL22

.falseCondL21: 

movl 	$10.0, -140(%rbp)

movl 	$2.0, -144(%rbp)

mov		-140(%rbp), %rax 
cltd
idivl	-144(%rbp) 
mov		%rax, -148(%rbp)

mov		-148(%rbp), %r10 
mov		-36(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -152(%rbp)

mov		-152(%rbp), %r10
mov		%r10, -36(%rbp)

.endIfL22: 

movl 	$1, -156(%rbp)

movl 	$1, -164(%rbp)

mov		-156(%rbp), %r10 
mov		-164(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -160(%rbp)

mov		-160(%rbp), %r10
mov		%r10, -48(%rbp)

jmp 		.beginWhileL17

.endWhileL16: 

mov		-16(%rbp), %rax
cmp		-12(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -168(%rbp)

movl 	$0.0, -172(%rbp)

mov		-172(%rbp), %rax
cmp		-12(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -176(%rbp)

cmpl		$0, -168(%rbp)
je 		.L23
cmpl		$0, -176(%rbp)
je 		.L23
mov		$1, %r10
jmp		.L24
.L23:
mov		$0, %r10
.L24:
mov		%r10, -180(%rbp)

movl 	$1, -184(%rbp)

mov		-184(%rbp), %r10
cmp 	-180(%rbp), %r10

jne 		.falseCondL25

movl 	$35.0, -188(%rbp)

movl 	$4.0, -192(%rbp)

movl 	$498.0, -196(%rbp)

mov		-196(%rbp), %r10 
mov		-36(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -200(%rbp)

mov		-192(%rbp), %r10 
mov		-200(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -204(%rbp)

mov		-188(%rbp), %r10 
mov		-204(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -208(%rbp)

mov		-208(%rbp), %r10
mov		%r10, -36(%rbp)

jmp 		.endIfL26

.falseCondL25: 

movl 	$3.2, -212(%rbp)

movl 	$12345.356, -216(%rbp)

mov		-216(%rbp), %r10 
mov		-36(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -220(%rbp)

mov		-220(%rbp), %r10 
mov		-212(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -224(%rbp)

mov		-224(%rbp), %r10
mov		%r10, -36(%rbp)

.endIfL26: 

movl 	$1, -228(%rbp)

mov		-52(%rbp), %r10 
mov		-228(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -232(%rbp)

mov		-232(%rbp), %r10
mov		%r10, -52(%rbp)

jmp 		.beginWhileL15

.endWhileL14: 

mov		-12(%rbp), %rax 
neg		%rax 
mov		%rax, -236(%rbp) 

movl 	$23.0, -240(%rbp)

movl 	$2.0, -244(%rbp)

movl 	$4.0, -248(%rbp)

mov		-244(%rbp), %rax 
cltd
idivl	-248(%rbp) 
mov		%rax, -252(%rbp)

mov		-8(%rbp), %r10 
mov		-252(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -256(%rbp)

mov		-240(%rbp), %r10 
mov		-256(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -260(%rbp)

mov		-236(%rbp), %r10 
mov		-260(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -264(%rbp)

mov		-36(%rbp), %r10 
mov		-264(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -268(%rbp)

mov		-268(%rbp), %r10
mov		%r10, -36(%rbp)

movl 	$1, -272(%rbp)

mov		-40(%rbp), %r10 
mov		-272(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -276(%rbp)

mov		-276(%rbp), %r10
mov		%r10, -40(%rbp)

jmp 		.beginWhileL13

.endWhileL12: 

.endIfL11: 

mov		-36(%rbp), %rax 
neg		%rax 
mov		%rax, -280(%rbp) 

mov		-280(%rbp), %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 19), $0 

movl 	$80.0, -8(%rbp)

mov		-8(%rbp), %r10
mov		%r10, -12(%rbp)

movl 	$15.0, -12(%rbp)

mov		-12(%rbp), %rax 
neg		%rax 
mov		%rax, -16(%rbp) 

mov		-16(%rbp), %r10
mov		%r10, res(%rip)

movl 	$4.3, -20(%rbp)

mov		-20(%rbp), %r10
mov		%r10, w(%rip)

movl 	$7.6, -24(%rbp)

mov		-24(%rbp), %rax 
neg		%rax 
mov		%rax, -28(%rbp) 

mov		-28(%rbp), %r10
mov		%r10, m(%rip)

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

mov		$.L0L27, %r10
mov	 	%r10, %rdi

mov		-12(%rbp), %r10
mov	 	%r10, %rdi

movl 	$2.0, -60(%rbp)

mov		-8(%rbp), %r10 
mov		-60(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	multiples
mov 	%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 
call 	printf

mov 		$0, %rax
leave
ret

