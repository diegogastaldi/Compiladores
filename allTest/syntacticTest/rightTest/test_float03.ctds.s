.L027: 
		.string "%f" 

.text

.globl	potencia
.type	potencia, @function 
potencia: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -3(%rbp)

movl		-3(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$1, -7(%rbp)

movl		-7(%rbp), %eax
movl		%eax, -12(%rbp)

movl 	$1.0, -11(%rbp)

movl		-11(%rbp), %eax
movl		%eax, -20(%rbp)

movl 	$0, -15(%rbp)

movl		0(%rbp), %eax
cmpl		-15(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -19(%rbp)

movl 	$1, -23(%rbp)

movl		-23(%rbp), %eax
cmpl 	-19(%rbp), %eax

jne 		.falseCond0

movl		0(%rbp), %eax 
negl		%eax 
movl		%eax, -27(%rbp) 

movl		-27(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$1, -31(%rbp)

movl		-31(%rbp), %eax
movl		%eax, -16(%rbp)

.falseCond0: 

.beginWhile2: 

movl		-12(%rbp), %eax
cmpl		0(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -35(%rbp)

movl 	-12(%rbp), %eax
cmpl		0(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -39(%rbp)

cmpl		$0, -35(%rbp)
jne 		.3
cmpl		$0, -39(%rbp)
je 		.4
.3: 
movl		$1, %eax
jmp 		.5
.4:
movl		$0, %eax
.5:
movl		%eax, -43(%rbp)

movl 	$1, -47(%rbp)

movl		-47(%rbp), %eax
cmpl 	-43(%rbp), %eax

jne 		.endWhile1

movl 	$2.0, -51(%rbp)

movl		4(%rbp), %eax 
movl		-51(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -55(%rbp)

movl		-20(%rbp), %eax 
movl		-55(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -59(%rbp)

movl		-59(%rbp), %eax
movl		%eax, -20(%rbp)

movl 	$1, -63(%rbp)

movl		-12(%rbp), %eax 
movl		-63(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -67(%rbp)

movl		-67(%rbp), %eax
movl		%eax, -12(%rbp)

jmp 		.beginWhile2

.endWhile1: 

cmpl		$0, -16(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -71(%rbp) 

cmpl		$0, -71(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -75(%rbp) 

movl 	$1, -79(%rbp)

movl		-79(%rbp), %eax
cmpl 	-75(%rbp), %eax

jne 		.falseCond6

movl 	$1.0, -83(%rbp)

movl		-83(%rbp), %eax 
cltd
idivl	-20
movl		%eax, -87(%rbp)

movl		-87(%rbp), %eax
leave
ret

jmp 		.endIf7

.falseCond6: 

movl		-20(%rbp), %eax
leave
ret

.endIf7: 

movl 	$100.1, -91(%rbp)

movl		-91(%rbp), %eax 
negl		%eax 
movl		%eax, -95(%rbp) 

movl		-95(%rbp), %eax
leave
ret

.globl	multiples
.type	multiples, @function 
multiples: 
enter   $(4 * 10), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$20.0, -10(%rbp)

movl		-10(%rbp), %eax 
negl		%eax 
movl		%eax, -14(%rbp) 

movl		-14(%rbp), %eax
movl		%eax, -12(%rbp)

movl 	$2, -18(%rbp)

movl		-18(%rbp), %eax 
negl		%eax 
movl		%eax, -22(%rbp) 

movl		-22(%rbp), %eax
movl		%eax, -20(%rbp)

movl 	$3.0, -26(%rbp)

movl		-26(%rbp), %eax 
negl		%eax 
movl		%eax, -30(%rbp) 

movl		-30(%rbp), %eax
movl		%eax, -24(%rbp)

movl 	$3.0, -34(%rbp)

movl		-34(%rbp), %eax 
negl		%eax 
movl		%eax, -38(%rbp) 

movl		-38(%rbp), %eax
movl		%eax, -16(%rbp)

movl		-24(%rbp), %eax 
movl		-16(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -42(%rbp)

movl		-12(%rbp), %eax 
movl		-42(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -46(%rbp)

movl		-46(%rbp), %eax
movl		%eax, -28(%rbp)

movl 	$0, -50(%rbp)

movl		-50(%rbp), %eax
movl		%eax, -36(%rbp)

movl 	$0, -54(%rbp)

movl		-54(%rbp), %eax
movl		%eax, -48(%rbp)

movl 	$0, -58(%rbp)

movl		-58(%rbp), %eax
movl		%eax, -44(%rbp)

movl 	$5, -62(%rbp)

movl		-62(%rbp), %eax
movl		%eax, -40(%rbp)

movl		4(%rbp), %eax
cmpl		0(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -66(%rbp)

movl 	$1, -70(%rbp)

movl		-70(%rbp), %eax
cmpl 	-66(%rbp), %eax

jne 		.falseCond8

movl		-28(%rbp), %eax
cmpl		-12(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -74(%rbp)

movl 	$1, -78(%rbp)

movl		-78(%rbp), %eax
cmpl 	-74(%rbp), %eax

jne 		.falseCond9

movl		4(%rbp), %eax
movl		%eax, -32(%rbp)

jmp 		.endIf10

.falseCond9: 

movl		0(%rbp), %eax
movl		%eax, -32(%rbp)

.endIf10: 

jmp 		.endIf11

.falseCond8: 

.beginWhile13: 

movl		-36(%rbp), %eax
cmpl		-40(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -82(%rbp)

movl 	$1, -86(%rbp)

movl		-86(%rbp), %eax
cmpl 	-82(%rbp), %eax

jne 		.endWhile12

.beginWhile15: 

movl		-48(%rbp), %eax
cmpl		-40(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -90(%rbp)

movl 	$1, -94(%rbp)

movl		-94(%rbp), %eax
cmpl 	-90(%rbp), %eax

jne 		.endWhile14

.beginWhile17: 

movl		-44(%rbp), %eax
cmpl		-40(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -98(%rbp)

movl 	-44(%rbp), %eax
cmpl		-40(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -102(%rbp)

cmpl		$0, -98(%rbp)
jne 		.18
cmpl		$0, -102(%rbp)
je 		.19
.18: 
movl		$1, %eax
jmp 		.20
.19:
movl		$0, %eax
.20:
movl		%eax, -106(%rbp)

movl 	$1, -110(%rbp)

movl		-110(%rbp), %eax
cmpl 	-106(%rbp), %eax

jne 		.endWhile16

movl 	$3, -114(%rbp)

movl 	-20(%rbp), %eax
cmpl		-114(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -118(%rbp)

movl 	$1, -122(%rbp)

movl		-122(%rbp), %eax
cmpl 	-118(%rbp), %eax

jne 		.falseCond21

movl 	$2.0, -126(%rbp)

movl		-32(%rbp), %eax 
movl		-126(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -130(%rbp)

movl		-130(%rbp), %eax
movl		%eax, -32(%rbp)

jmp 		.endIf22

.falseCond21: 

movl 	$10.0, -134(%rbp)

movl 	$2.0, -138(%rbp)

movl		-134(%rbp), %eax 
cltd
idivl	-138
movl		%eax, -142(%rbp)

movl		-142(%rbp), %eax 
movl		-32(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -146(%rbp)

movl		-146(%rbp), %eax
movl		%eax, -32(%rbp)

.endIf22: 

movl 	$1, -150(%rbp)

movl		$1, %eax
movl		%eax, -158(%rbp)

movl		-150(%rbp), %eax 
movl		-158(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -154(%rbp)

movl		-154(%rbp), %eax
movl		%eax, -44(%rbp)

jmp 		.beginWhile17

.endWhile16: 

movl		-12(%rbp), %eax
cmpl		4(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -162(%rbp)

movl 	$0.0, -166(%rbp)

movl		-166(%rbp), %eax
cmpl		4(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -170(%rbp)

cmpl		$0, -162(%rbp)
je 		.23
cmpl		$0, -170(%rbp)
je 		.23
movl		$1, %eax
jmp		.24
.23:
movl		$0, %eax
.24:
movl		%eax, -174(%rbp)

movl 	$1, -178(%rbp)

movl		-178(%rbp), %eax
cmpl 	-174(%rbp), %eax

jne 		.falseCond25

movl 	$35.0, -182(%rbp)

movl 	$4.0, -186(%rbp)

movl 	$498.0, -190(%rbp)

movl		-190(%rbp), %eax 
movl		-32(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -194(%rbp)

movl		-186(%rbp), %eax 
movl		-194(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -198(%rbp)

movl		-182(%rbp), %eax 
movl		-198(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -202(%rbp)

movl		-202(%rbp), %eax
movl		%eax, -32(%rbp)

jmp 		.endIf26

.falseCond25: 

movl 	$3.2, -206(%rbp)

movl 	$12345.356, -210(%rbp)

movl		-210(%rbp), %eax 
movl		-32(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -214(%rbp)

movl		-214(%rbp), %eax 
movl		-206(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -218(%rbp)

movl		-218(%rbp), %eax
movl		%eax, -32(%rbp)

.endIf26: 

movl 	$1, -222(%rbp)

movl		-48(%rbp), %eax 
movl		-222(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -226(%rbp)

movl		-226(%rbp), %eax
movl		%eax, -48(%rbp)

jmp 		.beginWhile15

.endWhile14: 

movl		4(%rbp), %eax 
negl		%eax 
movl		%eax, -230(%rbp) 

movl 	$23.0, -234(%rbp)

movl 	$2.0, -238(%rbp)

movl 	$4.0, -242(%rbp)

movl		-238(%rbp), %eax 
cltd
idivl	-242
movl		%eax, -246(%rbp)

movl		0(%rbp), %eax 
movl		-246(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -250(%rbp)

movl		-234(%rbp), %eax 
movl		-250(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -254(%rbp)

movl		-230(%rbp), %eax 
movl		-254(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -258(%rbp)

movl		-32(%rbp), %eax 
movl		-258(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -262(%rbp)

movl		-262(%rbp), %eax
movl		%eax, -32(%rbp)

movl 	$1, -266(%rbp)

movl		-36(%rbp), %eax 
movl		-266(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -270(%rbp)

movl		-270(%rbp), %eax
movl		%eax, -36(%rbp)

jmp 		.beginWhile13

.endWhile12: 

.endIf11: 

movl		-32(%rbp), %eax 
negl		%eax 
movl		%eax, -274(%rbp) 

movl		-274(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$80.0, -2(%rbp)

movl		-2(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$15.0, -6(%rbp)

movl		-6(%rbp), %eax 
negl		%eax 
movl		%eax, -10(%rbp) 

movl		-10(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$4.3, -14(%rbp)

movl		-14(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$7.6, -18(%rbp)

movl		-18(%rbp), %eax 
negl		%eax 
movl		%eax, -22(%rbp) 

movl		-22(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$2, -26(%rbp)

movl		-26(%rbp), %edi
movl	 	%edi, -30(%rsp)

movl		-16(%rbp), %edi
movl	 	%edi, -34(%rsp)

call 	potencia
movl 	%eax, -38(%rbp) 

movl		-38(%rbp), %eax
movl		%eax, -12(%rbp)

movl 	$2.0, -46(%rbp)

movl		-12(%rbp), %eax 
movl		-46(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -50(%rbp)

movl		-50(%rbp), %edi
movl	 	%edi, -54(%rsp)

movl		-16(%rbp), %edi
movl	 	%edi, -58(%rsp)

call 	multiples
movl 	%eax, -62(%rbp) 

movl		-62(%rbp), %edi
movl	 	%edi, -70(%rsp)

movl		$.L027, %edi
movl	 	%edi, -74(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

