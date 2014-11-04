.SL110: 
		.string "true | false = %d \n" 

.SL106: 
		.string "true & false = %d \n" 

.SL103: 
		.string "2.2 != 3.8 = %d \n" 

.FL99: 
		.float 2.2 

.FL98: 
		.float 3.8 

.SL97: 
		.string "2 != 3 = %d \n" 

.SL96: 
		.string "2.2 == 3.8 = %d \n" 

.FL93: 
		.float 2.2 

.FL92: 
		.float 3.8 

.SL91: 
		.string "2 == 3 = %d \n" 

.SL90: 
		.string "2.2 > 3.8 = %d\n" 

.FL89: 
		.float 2.2 

.FL88: 
		.float 3.8 

.SL87: 
		.string "2 > 3 = %d \n" 

.SL86: 
		.string "2.2 >= 3.8 = %d \n" 

.FL85: 
		.float 2.2 

.FL84: 
		.float 3.8 

.SL83: 
		.string "2 >= 3 = %d \n" 

.SL82: 
		.string "2.2 <= 3.8 = %d \n" 

.FL81: 
		.float 2.2 

.FL80: 
		.float 3.8 

.SL79: 
		.string "2 <= 3 = %d \n" 

.SL78: 
		.string "2.2 < 3.8 = %d\n" 

.FL77: 
		.float 2.2 

.FL76: 
		.float 3.8 

.SL75: 
		.string "2 < 3 = %d \n" 

.SL74: 
		.string "2 % 3 = %d \n" 

.SL73: 
		.string "2.2 / 3.8 = %f \n" 

.FL72: 
		.float 2.2 

.FL71: 
		.float 3.8 

.SL70: 
		.string "2 / 3 = %d \n" 

.SL69: 
		.string "2.2 * 3.8 = %f \n" 

.FL68: 
		.float 2.2 

.FL67: 
		.float 3.8 

.SL66: 
		.string "2 * 3 = %d \n" 

.SL65: 
		.string "2.2 - 3.8 = %f \n" 

.FL64: 
		.float 2.2 

.FL63: 
		.float 3.8 

.SL62: 
		.string "2 - 3 = %d \n" 

.SL61: 
		.string "2.2 + 3.8 = %f \n" 

.FL60: 
		.float 2.2 

.FL59: 
		.float 3.8 

.SL58: 
		.string "2 + 3 = %d \n" 

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
		.float 3.8 

.FL13: 
		.float 2.2 

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
		.float 3.8 

.FL5: 
		.float 2.2 

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
enter   $(8 * 10), $0 


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
mov	%r10, -48(%rbp)

mov	.FL2(%rip), %r10
mov	%r10, -56(%rbp)

movss		-48(%rbp), %xmm0 
addss		-56(%rbp), %xmm0 
movss		%xmm0, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

mov		$.SL3, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	minus
.type	minus, @function 
minus: 
enter   $(8 * 10), $0 


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
mov	%r10, -48(%rbp)

mov	.FL6(%rip), %r10
mov	%r10, -56(%rbp)

movss		-48(%rbp), %xmm0 
subss		-56(%rbp), %xmm0 
movss		%xmm0, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

mov		$.SL7, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	multiply
.type	multiply, @function 
multiply: 
enter   $(8 * 10), $0 


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
mov	%r10, -48(%rbp)

mov	.FL10(%rip), %r10
mov	%r10, -56(%rbp)

movss		-48(%rbp), %xmm0 
mulss		-56(%rbp), %xmm0 
movss		%xmm0, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

mov		$.SL11, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	div
.type	div, @function 
div: 
enter   $(8 * 10), $0 


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
mov	%r10, -48(%rbp)

mov	.FL14(%rip), %r10
mov	%r10, -56(%rbp)

movss		-48(%rbp), %xmm0 
divss		-56(%rbp), %xmm0 
movss		%xmm0, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

mov		$.SL15, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	unaryminus
.type	unaryminus, @function 
unaryminus: 
enter   $(8 * 8), $0 


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
mov	%r10, -40(%rbp)

movss		-40(%rbp), %xmm1 
movss		.FL18(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -48(%rbp) 

mov		-48(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		$.SL19, %r10
mov	 	%r10, %rdi

movss		-56(%rbp), %xmm0
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
mov		%rdx, -32(%rbp)

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
enter   $(8 * 8), $0 


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
mov	%r10, -48(%rbp)

mov	.FL23(%rip), %r10
mov	%r10, -56(%rbp)

movss		-56(%rbp), %xmm0 
ucomiss		-48(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -64(%rbp) 

mov		-64(%rbp), %r10
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
enter   $(8 * 8), $0 


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
mov	%r10, -48(%rbp)

mov	.FL27(%rip), %r10
mov	%r10, -56(%rbp)

movss		-56(%rbp), %xmm0 
ucomiss		-48(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -64(%rbp) 

mov		-64(%rbp), %r10
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
enter   $(8 * 8), $0 


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
mov	%r10, -48(%rbp)

mov	.FL31(%rip), %r10
mov	%r10, -56(%rbp)

movss		-48(%rbp), %xmm0 
ucomiss		-56(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -64(%rbp) 

mov		-64(%rbp), %r10
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
enter   $(8 * 8), $0 


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
mov	%r10, -48(%rbp)

mov	.FL35(%rip), %r10
mov	%r10, -56(%rbp)

movss		-48(%rbp), %xmm0 
ucomiss		-56(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -64(%rbp) 

mov		-64(%rbp), %r10
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
enter   $(8 * 8), $0 


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
mov	%r10, -48(%rbp)

mov	.FL39(%rip), %r10
mov	%r10, -56(%rbp)

movss		-48(%rbp), %xmm0 
ucomiss		-56(%rbp), %xmm0 
jp	.L40 
movss		-48(%rbp), %xmm0 
ucomiss		-56(%rbp), %xmm0 
jne	.L40 
movq		$1, %rax 
jmp	.L41 
.L40: 
movq		$0, %rax 
.L41: 
mov	%rax, -64(%rbp) 

mov		-64(%rbp), %r10
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
enter   $(8 * 8), $0 


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
mov	%r10, -48(%rbp)

mov	.FL45(%rip), %r10
mov	%r10, -56(%rbp)

	movss		-48(%rbp), %xmm0 
	ucomiss		-56(%rbp), %xmm0 
	jp	.L46 
	movss		-48(%rbp), %xmm0 
	ucomiss		-56(%rbp), %xmm0 
	je	.L47 
.L46: 
	movq		$1, %rax 
	jmp	.L48 
.L47: 
	movq		$0, %rax 
.L48: 
	mov		%rax, -64(%rbp) 

mov		-64(%rbp), %r10
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
enter   $(8 * 4), $0 


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

.globl	sum1
.type	sum1, @function 
sum1: 
enter   $(8 * 12), $0 


movq 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

movq 	$3, -32(%rbp)

mov		-24(%rbp), %r10 
mov		-32(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		$.SL58, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL59(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL60(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
addss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

mov		$.SL61, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	minus1
.type	minus1, @function 
minus1: 
enter   $(8 * 12), $0 


movq 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

movq 	$3, -32(%rbp)

mov		-32(%rbp), %r10 
mov		-24(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		$.SL62, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL63(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL64(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
subss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

mov		$.SL65, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	multiply1
.type	multiply1, @function 
multiply1: 
enter   $(8 * 12), $0 


movq 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

movq 	$3, -32(%rbp)

mov		-24(%rbp), %r10 
mov		-32(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		$.SL66, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL67(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL68(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
mulss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

mov		$.SL69, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	div1
.type	div1, @function 
div1: 
enter   $(8 * 12), $0 


movq 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

movq 	$3, -32(%rbp)

mov		-24(%rbp), %rax 
cltd
idivq	-32(%rbp) 
mov		%rax, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		$.SL70, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL71(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL72(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
divss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

mov		$.SL73, %r10
mov	 	%r10, %rdi

movss		-88(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mod1
.type	mod1, @function 
mod1: 
enter   $(8 * 6), $0 


movq 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

movq 	$3, -32(%rbp)

mov		-24(%rbp), %rax 
cltd
idivq	-32(%rbp)
mov		%rdx, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		$.SL74, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	menor1
.type	menor1, @function 
menor1: 
enter   $(8 * 10), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -32(%rbp) 

movq 	$3, -40(%rbp)

mov		-32(%rbp), %rax
cmp		-40(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL75, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL76(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL77(%rip), %r10
mov	%r10, -64(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

movss		-72(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL78, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	menorigual1
.type	menorigual1, @function 
menorigual1: 
enter   $(8 * 10), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -32(%rbp) 

movq 	$3, -40(%rbp)

mov		-32(%rbp), %rax
cmp		-40(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL79, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL80(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL81(%rip), %r10
mov	%r10, -64(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

movss		-72(%rbp), %xmm0 
ucomiss		-64(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL82, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mayorigual1
.type	mayorigual1, @function 
mayorigual1: 
enter   $(8 * 10), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -32(%rbp) 

movq 	$3, -40(%rbp)

mov		-32(%rbp), %rax
cmp		-40(%rbp), %rax
setge 	%al
movzb 	%al, %rax
mov		%rax, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL83, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL84(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL85(%rip), %r10
mov	%r10, -64(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

movss		-64(%rbp), %xmm0 
ucomiss		-72(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL86, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mayor1
.type	mayor1, @function 
mayor1: 
enter   $(8 * 10), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -32(%rbp) 

movq 	$3, -40(%rbp)

mov		-32(%rbp), %rax
cmp		-40(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL87, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL88(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL89(%rip), %r10
mov	%r10, -64(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

movss		-64(%rbp), %xmm0 
ucomiss		-72(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL90, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	igual1
.type	igual1, @function 
igual1: 
enter   $(8 * 10), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -32(%rbp) 

movq 	$3, -40(%rbp)

mov 		-32(%rbp), %rax
cmp		-40(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL91, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL92(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL93(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
ucomiss		-72(%rbp), %xmm0 
jp	.L94 
movss		-64(%rbp), %xmm0 
ucomiss		-72(%rbp), %xmm0 
jne	.L94 
movq		$1, %rax 
jmp	.L95 
.L94: 
movq		$0, %rax 
.L95: 
mov	%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL96, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	distinto1
.type	distinto1, @function 
distinto1: 
enter   $(8 * 10), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -32(%rbp) 

movq 	$3, -40(%rbp)

mov		-32(%rbp), %rax
cmp		-40(%rbp), %rax
setne 	%al
movzb 	%al, %rax
mov		%rax, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL97, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL98(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL99(%rip), %r10
mov	%r10, -72(%rbp)

	movss		-64(%rbp), %xmm0 
	ucomiss		-72(%rbp), %xmm0 
	jp	.L100 
	movss		-64(%rbp), %xmm0 
	ucomiss		-72(%rbp), %xmm0 
	je	.L101 
.L100: 
	movq		$1, %rax 
	jmp	.L102 
.L101: 
	movq		$0, %rax 
.L102: 
	mov		%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL103, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	and1
.type	and1, @function 
and1: 
enter   $(8 * 6), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -32(%rbp)

cmpq		$0, -16(%rbp)
je 		.L104
cmpq		$0, -32(%rbp)
je 		.L104
mov		$1, %r10
jmp		.L105
.L104:
mov		$0, %r10
.L105:
mov		%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL106, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	or1
.type	or1, @function 
or1: 
enter   $(8 * 6), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -32(%rbp)

cmpq		$0, -16(%rbp)
jne 		.L107
cmpq		$0, -32(%rbp)
je 		.L108
.L107: 
mov		$1, %r10
jmp 		.L109
.L108:
mov		$0, %r10
.L109:
mov		%r10, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL110, %r10
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

call 	sum1

mov 		$0, %rax 

call 	minus1

mov 		$0, %rax 

call 	multiply1

mov 		$0, %rax 

call 	div1

mov 		$0, %rax 

call 	mod1

mov 		$0, %rax 

call 	menor1

mov 		$0, %rax 

call 	menorigual1

mov 		$0, %rax 

call 	mayor1

mov 		$0, %rax 

call 	mayorigual1

mov 		$0, %rax 

call 	igual1

mov 		$0, %rax 

call 	distinto1

mov 		$0, %rax 

call 	and1

mov 		$0, %rax 

call 	or1

mov 		$0, %rax
leave
ret

