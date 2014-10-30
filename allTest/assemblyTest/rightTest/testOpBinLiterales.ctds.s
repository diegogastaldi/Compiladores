.SL57: 
		.string "!true = %d \n" 

.SL56: 
		.string "true | false = %d \n" 

.SL52: 
		.string "true & false = %d \n" 

.SL49: 
		.string "2.2 != 3.8 = %d \n" 

.FL45: 
		.float 2.2 

.FL44: 
		.float 3.8 

.SL43: 
		.string "2 != 3 = %d \n" 

.SL42: 
		.string "2.2 == 3.8 = %d \n" 

.FL39: 
		.float 2.2 

.FL38: 
		.float 3.8 

.SL37: 
		.string "2 == 3 = %d \n" 

.SL36: 
		.string "2.2 > 3.8 = %d\n" 

.FL35: 
		.float 3.8 

.FL34: 
		.float 2.2 

.SL33: 
		.string "2 > 3 = %d \n" 

.SL32: 
		.string "2.2 >= 3.8 = %d \n" 

.FL31: 
		.float 3.8 

.FL30: 
		.float 2.2 

.SL29: 
		.string "2 >= 3 = %d \n" 

.SL28: 
		.string "2.2 <= 3.8 = %d \n" 

.FL27: 
		.float 3.8 

.FL26: 
		.float 2.2 

.SL25: 
		.string "2 <= 3 = %d \n" 

.SL24: 
		.string "2.2 < 3.8 = %d\n" 

.FL23: 
		.float 3.8 

.FL22: 
		.float 2.2 

.SL21: 
		.string "2 < 3 = %d \n" 

.SL20: 
		.string "2 % 3 = %d \n" 

.SL19: 
		.string "- 2.2 = %f \n" 

.FL18: 
		.float 0 

.FL17: 
		.float 2.2 

.SL16: 
		.string "- 2 = %d \n" 

.SL15: 
		.string "2.2 / 3.8 = %f \n" 

.FL14: 
		.float 2.2 

.FL13: 
		.float 3.8 

.SL12: 
		.string "2 / 3 = %d \n" 

.SL11: 
		.string "2.2 * 3.8 = %f \n" 

.FL10: 
		.float 2.2 

.FL9: 
		.float 3.8 

.SL8: 
		.string "2 * 3 = %d \n" 

.SL7: 
		.string "2.2 - 3.8 = %f \n" 

.FL6: 
		.float 2.2 

.FL5: 
		.float 3.8 

.SL4: 
		.string "2 - 3 = %d \n" 

.SL3: 
		.string "2.2 + 3.8 = %f \n" 

.FL2: 
		.float 2.2 

.FL1: 
		.float 3.8 

.SL0: 
		.string "2 + 3 = %d \n" 

.text

.comm f1, 8

.comm i1, 8

.globl	sum
.type	sum, @function 
sum: 
enter   $(8 * 12), $0 

movq 	$2, -16(%rbp)

movq 	$3, -24(%rbp)

mov		-16(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL1(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -64(%rbp)

movss		-56(%rbp), %xmm0 
addss		-64(%rbp), %xmm0 
movss		%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -80(%rbp) 

mov		$.SL3, %r10
mov	 	%r10, %rdi

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	minus
.type	minus, @function 
minus: 
enter   $(8 * 12), $0 

movq 	$2, -16(%rbp)

movq 	$3, -24(%rbp)

mov		-24(%rbp), %r10 
mov		-16(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL4, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL5(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL6(%rip), %r10
mov	%r10, -64(%rbp)

movss		-64(%rbp), %xmm0 
subss		-56(%rbp), %xmm0 
movss		%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -80(%rbp) 

mov		$.SL7, %r10
mov	 	%r10, %rdi

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	multiply
.type	multiply, @function 
multiply: 
enter   $(8 * 12), $0 

movq 	$2, -16(%rbp)

movq 	$3, -24(%rbp)

mov		-16(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL8, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL9(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL10(%rip), %r10
mov	%r10, -64(%rbp)

movss		-56(%rbp), %xmm0 
mulss		-64(%rbp), %xmm0 
movss		%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -80(%rbp) 

mov		$.SL11, %r10
mov	 	%r10, %rdi

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	div
.type	div, @function 
div: 
enter   $(8 * 12), $0 

movq 	$2, -16(%rbp)

movq 	$3, -24(%rbp)

mov		-16(%rbp), %rax 
cltd
idivq	-24(%rbp) 
mov		%rax, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL12, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL13(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL14(%rip), %r10
mov	%r10, -64(%rbp)

movss		-64(%rbp), %xmm0 
divss		-56(%rbp), %xmm0 
movss		%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -80(%rbp) 

mov		$.SL15, %r10
mov	 	%r10, %rdi

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	unaryminus
.type	unaryminus, @function 
unaryminus: 
enter   $(8 * 10), $0 

movq 	$2, -16(%rbp)

mov		-16(%rbp), %rax 
neg		%rax 
mov		%rax, -24(%rbp) 

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -32(%rbp) 

mov		$.SL16, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL17(%rip), %r10
mov	%r10, -48(%rbp)

movss		-48(%rbp), %xmm1 
movss		.FL18(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -56(%rbp) 

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov		$.SL19, %r10
mov	 	%r10, %rdi

movss		-64(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mod
.type	mod, @function 
mod: 
enter   $(8 * 6), $0 

movq 	$2, -16(%rbp)

movq 	$3, -24(%rbp)

mov		-16(%rbp), %rax 
cltd
idivq	-24(%rbp)
movl		%edx, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL20, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	menor
.type	menor, @function 
menor: 
enter   $(8 * 10), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

movq 	$3, -32(%rbp)

mov		-24(%rbp), %rax
cmp		-32(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL21, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL22(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL23(%rip), %r10
mov	%r10, -64(%rbp)

movss		-64(%rbp), %xmm0 
ucomiss		-56(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL24, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	menorigual
.type	menorigual, @function 
menorigual: 
enter   $(8 * 10), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

movq 	$3, -32(%rbp)

mov		-24(%rbp), %rax
cmp		-32(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL25, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL26(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL27(%rip), %r10
mov	%r10, -64(%rbp)

movss		-64(%rbp), %xmm0 
ucomiss		-56(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL28, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mayorigual
.type	mayorigual, @function 
mayorigual: 
enter   $(8 * 10), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

movq 	$3, -32(%rbp)

mov		-24(%rbp), %rax
cmp		-32(%rbp), %rax
setge 	%al
movzb 	%al, %rax
mov		%rax, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL29, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL30(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL31(%rip), %r10
mov	%r10, -64(%rbp)

movss		-56(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL32, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mayor
.type	mayor, @function 
mayor: 
enter   $(8 * 10), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

movq 	$3, -32(%rbp)

mov		-24(%rbp), %rax
cmp		-32(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL33, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL34(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL35(%rip), %r10
mov	%r10, -64(%rbp)

movss		-56(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL36, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	igual
.type	igual, @function 
igual: 
enter   $(8 * 10), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

movq 	$3, -32(%rbp)

mov 		-24(%rbp), %rax
cmp		-32(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL37, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL38(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL39(%rip), %r10
mov	%r10, -64(%rbp)

movss		-56(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
jp	.L40 
movss		-56(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
jne	.L40 
movq		$1, %rax 
jmp	.L41 
.L40: 
movq		$0, %rax 
.L41: 
mov	%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL42, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	distinto
.type	distinto, @function 
distinto: 
enter   $(8 * 10), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

movq 	$3, -32(%rbp)

mov		-24(%rbp), %rax
cmp		-32(%rbp), %rax
setne 	%al
movzb 	%al, %rax
mov		%rax, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL43, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL44(%rip), %r10
mov	%r10, -56(%rbp)

mov	.FL45(%rip), %r10
mov	%r10, -64(%rbp)

	movss		-56(%rbp), %xmm0 
	ucomiss		-64(%rbp), %xmm0 
	jp	.L46 
	movss		-56(%rbp), %xmm0 
	ucomiss		-64(%rbp), %xmm0 
	je	.L47 
.L46: 
	movq		$1, %rax 
	jmp	.L48 
.L47: 
	movq		$0, %rax 
.L48: 
	mov		%rax, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL49, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	and
.type	and, @function 
and: 
enter   $(8 * 6), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

movq 	$0, -32(%rbp)

cmpq		$0, -24(%rbp)
je 		.L50
cmpq		$0, -32(%rbp)
je 		.L50
mov		$1, %r10
jmp		.L51
.L50:
mov		$0, %r10
.L51:
mov		%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL52, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	or
.type	or, @function 
or: 
enter   $(8 * 6), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

movq 	$0, -32(%rbp)

cmpq		$0, -24(%rbp)
jne 		.L53
cmpq		$0, -32(%rbp)
je 		.L54
.L53: 
mov		$1, %r10
jmp 		.L55
.L54:
mov		$0, %r10
.L55:
mov		%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL56, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	not
.type	not, @function 
not: 
enter   $(8 * 6), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

cmpq		$0, -24(%rbp) 
sete		%al 
movzb	%al, %rax 
mov		%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL57, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(8 * 2), $0 

mov		$0, %r10
mov		%r10, f1(%rip)

mov		$0, %r10
mov		%r10, i1(%rip)

mov 		$0, %rax 

call 	sum

mov 		$0, %rax 

call 	minus

mov 		$0, %rax 

call 	unaryminus

mov 		$0, %rax 

call 	multiply

mov 		$0, %rax 

call 	div

mov 		$0, %rax 

call 	mod

mov 		$0, %rax 

call 	menor

mov 		$0, %rax 

call 	menorigual

mov 		$0, %rax 

call 	mayor

mov 		$0, %rax 

call 	mayorigual

mov 		$0, %rax 

call 	igual

mov 		$0, %rax 

call 	distinto

mov 		$0, %rax 

call 	and

mov 		$0, %rax 

call 	or

mov 		$0, %rax 

call 	not

mov 		$0, %rax
leave
ret

