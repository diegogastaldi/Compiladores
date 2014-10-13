.L027: 
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

.globl	multiples
.type	multiples, @function 
multiples: 
enter   $(4 * 78), $0 

movl 	$20.0, -48(%rbp)

mov		-48(%rbp), %rax 
neg		%rax 
mov		%rax, -52(%rbp) 

mov		-52(%rbp), %rax
mov		%rax, -16(%rbp)

movl 	$2, -56(%rbp)

mov		-56(%rbp), %rax 
neg		%rax 
mov		%rax, -60(%rbp) 

mov		-60(%rbp), %rax
mov		%rax, -24(%rbp)

movl 	$3.0, -64(%rbp)

mov		-64(%rbp), %rax 
neg		%rax 
mov		%rax, -68(%rbp) 

mov		-68(%rbp), %rax
mov		%rax, -28(%rbp)

movl 	$3.0, -72(%rbp)

mov		-72(%rbp), %rax 
neg		%rax 
mov		%rax, -76(%rbp) 

mov		-76(%rbp), %rax
mov		%rax, -20(%rbp)

mov		-28(%rbp), %r10 
mov		-20(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -80(%rbp)

mov		-16(%rbp), %r10 
mov		-80(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -84(%rbp)

mov		-84(%rbp), %rax
mov		%rax, -32(%rbp)

movl 	$0, -88(%rbp)

mov		-88(%rbp), %rax
mov		%rax, -40(%rbp)

movl 	$0, -92(%rbp)

mov		-92(%rbp), %rax
mov		%rax, -52(%rbp)

movl 	$0, -96(%rbp)

mov		-96(%rbp), %rax
mov		%rax, -48(%rbp)

movl 	$5, -100(%rbp)

mov		-100(%rbp), %rax
mov		%rax, -44(%rbp)

mov		1(%rbp), %rax
cmp		0(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -104(%rbp)

movl 	$1, -108(%rbp)

mov		-108(%rbp), %r10
cmp 	-104(%rbp), %r10

jne 		.falseCond8

mov		-32(%rbp), %rax
cmp		-16(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -112(%rbp)

movl 	$1, -116(%rbp)

mov		-116(%rbp), %r10
cmp 	-112(%rbp), %r10

jne 		.falseCond9

mov		1(%rbp), %rax
mov		%rax, -36(%rbp)

jmp 		.endIf10

.falseCond9: 

mov		0(%rbp), %rax
mov		%rax, -36(%rbp)

.endIf10: 

jmp 		.endIf11

.falseCond8: 

.beginWhile13: 

mov		-40(%rbp), %rax
cmp		-44(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -120(%rbp)

movl 	$1, -124(%rbp)

mov		-124(%rbp), %r10
cmp 	-120(%rbp), %r10

jne 		.endWhile12

.beginWhile15: 

mov		-52(%rbp), %rax
cmp		-44(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -128(%rbp)

movl 	$1, -132(%rbp)

mov		-132(%rbp), %r10
cmp 	-128(%rbp), %r10

jne 		.endWhile14

.beginWhile17: 

mov		-48(%rbp), %rax
cmp		-44(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -136(%rbp)

mov 		-48(%rbp), %rax
cmp		-44(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -140(%rbp)

cmpl		$0, -136(%rbp)
jne 		.18
cmpl		$0, -140(%rbp)
je 		.19
.18: 
mov		$1, %r10
jmp 		.20
.19:
mov		$0, %r10
.20:
mov		%r10, -144(%rbp)

movl 	$1, -148(%rbp)

mov		-148(%rbp), %r10
cmp 	-144(%rbp), %r10

jne 		.endWhile16

movl 	$3, -152(%rbp)

mov 		-24(%rbp), %rax
cmp		-152(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -156(%rbp)

movl 	$1, -160(%rbp)

mov		-160(%rbp), %r10
cmp 	-156(%rbp), %r10

jne 		.falseCond21

movl 	$2.0, -164(%rbp)

mov		-36(%rbp), %r10 
mov		-164(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -168(%rbp)

mov		-168(%rbp), %rax
mov		%rax, -36(%rbp)

jmp 		.endIf22

.falseCond21: 

movl 	$10.0, -172(%rbp)

movl 	$2.0, -176(%rbp)

mov		-172(%rbp), %rax 
cltd
idivl	-176(%rbp) 
mov		%rax, -180(%rbp)

mov		-180(%rbp), %r10 
mov		-36(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -184(%rbp)

mov		-184(%rbp), %rax
mov		%rax, -36(%rbp)

.endIf22: 

movl 	$1, -188(%rbp)

mov		$1, %rax
mov		%rax, -196(%rbp)

mov		-188(%rbp), %r10 
mov		-196(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -192(%rbp)

mov		-192(%rbp), %rax
mov		%rax, -48(%rbp)

jmp 		.beginWhile17

.endWhile16: 

mov		-16(%rbp), %rax
cmp		1(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -200(%rbp)

movl 	$0.0, -204(%rbp)

mov		-204(%rbp), %rax
cmp		1(%rbp), %rax
setl		%al
movzb %al, %rax
mov		%rax, -208(%rbp)

cmpl		$0, -200(%rbp)
je 		.23
cmpl		$0, -208(%rbp)
je 		.23
mov		$1, %r10
jmp		.24
.23:
mov		$0, %r10
.24:
mov		%r11, -212(%rbp)

movl 	$1, -216(%rbp)

mov		-216(%rbp), %r10
cmp 	-212(%rbp), %r10

jne 		.falseCond25

movl 	$35.0, -220(%rbp)

movl 	$4.0, -224(%rbp)

movl 	$498.0, -228(%rbp)

mov		-228(%rbp), %r10 
mov		-36(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -232(%rbp)

mov		-224(%rbp), %r10 
mov		-232(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -236(%rbp)

mov		-220(%rbp), %r10 
mov		-236(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -240(%rbp)

mov		-240(%rbp), %rax
mov		%rax, -36(%rbp)

jmp 		.endIf26

.falseCond25: 

movl 	$3.2, -244(%rbp)

movl 	$12345.356, -248(%rbp)

mov		-248(%rbp), %r10 
mov		-36(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -252(%rbp)

mov		-252(%rbp), %r10 
mov		-244(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -256(%rbp)

mov		-256(%rbp), %rax
mov		%rax, -36(%rbp)

.endIf26: 

movl 	$1, -260(%rbp)

mov		-52(%rbp), %r10 
mov		-260(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -264(%rbp)

mov		-264(%rbp), %rax
mov		%rax, -52(%rbp)

jmp 		.beginWhile15

.endWhile14: 

mov		1(%rbp), %rax 
neg		%rax 
mov		%rax, -268(%rbp) 

movl 	$23.0, -272(%rbp)

movl 	$2.0, -276(%rbp)

movl 	$4.0, -280(%rbp)

mov		-276(%rbp), %rax 
cltd
idivl	-280(%rbp) 
mov		%rax, -284(%rbp)

mov		0(%rbp), %r10 
mov		-284(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -288(%rbp)

mov		-272(%rbp), %r10 
mov		-288(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -292(%rbp)

mov		-268(%rbp), %r10 
mov		-292(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -296(%rbp)

mov		-36(%rbp), %r10 
mov		-296(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -300(%rbp)

mov		-300(%rbp), %rax
mov		%rax, -36(%rbp)

movl 	$1, -304(%rbp)

mov		-40(%rbp), %r10 
mov		-304(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -308(%rbp)

mov		-308(%rbp), %rax
mov		%rax, -40(%rbp)

jmp 		.beginWhile13

.endWhile12: 

.endIf11: 

mov		-36(%rbp), %rax 
neg		%rax 
mov		%rax, -312(%rbp) 

.globl	main
.type	main, @function 
main: 
enter   $(4 * 20), $0 

mov		-312(%rbp), %rax
leave
ret

movl 	$80.0, -16(%rbp)

mov		-16(%rbp), %rax
mov		%rax, -20(%rbp)

movl 	$15.0, -20(%rbp)

mov		-20(%rbp), %rax 
neg		%rax 
mov		%rax, -24(%rbp) 

mov		-24(%rbp), %rax
mov		%rax, -12(%rbp)

movl 	$4.3, -28(%rbp)

mov		-28(%rbp), %rax
mov		%rax, -4(%rbp)

movl 	$7.6, -32(%rbp)

mov		-32(%rbp), %rax 
neg		%rax 
mov		%rax, -36(%rbp) 

mov		-36(%rbp), %rax
mov		%rax, -8(%rbp)

movl 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov	 	%r10, %rdi

mov		-20(%rbp), %r10
mov	 	%r10, %rsi

call 	potencia
mov 	%rax, -52(%rbp) 

mov		-52(%rbp), %rax
mov		%rax, -16(%rbp)

movl 	$2.0, -60(%rbp)

mov		-16(%rbp), %r10 
mov		-60(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -64(%rbp)

mov		-64(%rbp), %r10
mov	 	%r10, %rdi

mov		-20(%rbp), %r10
mov	 	%r10, %rsi

call 	multiples
mov 	%rax, -76(%rbp) 

mov		-76(%rbp), %r10
mov	 	%r10, %rdi

mov		$.L027, %r10
mov	 	%r10, %rsi

call 	printf

mov 		$0, %rax
leave
ret

