.SL78: 
		.string "true | false = %d \n" 

.SL77: 
		.string "true & false = %d \n" 

.SL76: 
		.string "2.2 != 3.8 = %d \n" 

.FL72: 
		.float 2.2 

.FL71: 
		.float 3.8 

.SL70: 
		.string "2 != 3 = %d \n" 

.SL69: 
		.string "2.2 == 3.8 = %d \n" 

.FL66: 
		.float 2.2 

.FL65: 
		.float 3.8 

.SL64: 
		.string "2 == 3 = %d \n" 

.SL63: 
		.string "2.2 > 3.8 = %d\n" 

.FL62: 
		.float 2.2 

.FL61: 
		.float 3.8 

.SL60: 
		.string "2 > 3 = %d \n" 

.SL59: 
		.string "2.2 >= 3.8 = %d \n" 

.FL58: 
		.float 2.2 

.FL57: 
		.float 3.8 

.SL56: 
		.string "2 >= 3 = %d \n" 

.SL55: 
		.string "2.2 <= 3.8 = %d \n" 

.FL54: 
		.float 2.2 

.FL53: 
		.float 3.8 

.SL52: 
		.string "2 <= 3 = %d \n" 

.SL51: 
		.string "2.2 < 3.8 = %d\n" 

.FL50: 
		.float 2.2 

.FL49: 
		.float 3.8 

.SL48: 
		.string "2 < 3 = %d \n" 

.SL47: 
		.string "2 % 3 = %d \n" 

.SL46: 
		.string "2.2 / 3.8 = %f \n" 

.FL45: 
		.float 2.2 

.FL44: 
		.float 3.8 

.SL43: 
		.string "2 / 3 = %d \n" 

.SL42: 
		.string "2.2 * 3.8 = %f \n" 

.FL41: 
		.float 2.2 

.FL40: 
		.float 3.8 

.SL39: 
		.string "2 * 3 = %d \n" 

.SL38: 
		.string "2.2 - 3.8 = %f \n" 

.FL37: 
		.float 2.2 

.FL36: 
		.float 3.8 

.SL35: 
		.string "2 - 3 = %d \n" 

.SL34: 
		.string "2.2 + 3.8 = %f \n" 

.FL33: 
		.float 2.2 

.FL32: 
		.float 3.8 

.SL31: 
		.string "2 + 3 = %d \n" 

.SL30: 
		.string "!true = %d \n" 

.SL29: 
		.string "true | false = %d \n" 

.SL28: 
		.string "true & false = %d \n" 

.SL27: 
		.string "2.2 != 3.8 = %d \n" 

.SL26: 
		.string "2 != 3 = %d \n" 

.SL25: 
		.string "2.2 == 3.8 = %d \n" 

.SL24: 
		.string "2 == 3 = %d \n" 

.SL23: 
		.string "2.2 > 3.8 = %d\n" 

.SL22: 
		.string "2 > 3 = %d \n" 

.SL21: 
		.string "2.2 >= 3.8 = %d \n" 

.SL20: 
		.string "2 >= 3 = %d \n" 

.SL19: 
		.string "2.2 <= 3.8 = %d \n" 

.SL18: 
		.string "2 <= 3 = %d \n" 

.SL17: 
		.string "2.2 < 3.8 = %d\n" 

.SL16: 
		.string "2 < 3 = %d \n" 

.SL15: 
		.string "2 % 3 = %d \n" 

.SL14: 
		.string "- 2.2 = %f \n" 

.FL13: 
		.float -2.2 

.SL12: 
		.string "- 2 = %d \n" 

.SL11: 
		.string "2.2 / 3.8 = %f \n" 

.FL10: 
		.float 0.57894737 

.SL9: 
		.string "2 / 3 = %d \n" 

.SL8: 
		.string "2.2 * 3.8 = %f \n" 

.FL7: 
		.float 8.36 

.SL6: 
		.string "2 * 3 = %d \n" 

.SL5: 
		.string "2.2 - 3.8 = %f \n" 

.FL4: 
		.float -1.5999999 

.SL3: 
		.string "2 - 3 = %d \n" 

.SL2: 
		.string "2.2 + 3.8 = %f \n" 

.FL1: 
		.float 6.0 

.SL0: 
		.string "2 + 3 = %d \n" 

.text

.comm f1, 8

.comm i1, 8

.globl	sum
.type	sum, @function 
sum: 
enter   $(8 * 6), $0 


movq 	$5, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL1(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL2, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	minus
.type	minus, @function 
minus: 
enter   $(8 * 6), $0 


movq 	$-1, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

mov		$.SL3, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL4(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL5, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	multiply
.type	multiply, @function 
multiply: 
enter   $(8 * 6), $0 


movq 	$6, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

mov		$.SL6, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL7(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL8, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	div
.type	div, @function 
div: 
enter   $(8 * 6), $0 


movq 	$0, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

mov		$.SL9, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL10(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL11, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	unaryminus
.type	unaryminus, @function 
unaryminus: 
enter   $(8 * 6), $0 


movq 	$-2, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

mov		$.SL12, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL13(%rip), %r10
mov	%r10, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL14, %r10
mov	 	%r10, %rdi

movss		-40(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mod
.type	mod, @function 
mod: 
enter   $(8 * 4), $0 


movq 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

mov		$.SL15, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	menor
.type	menor, @function 
menor: 
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL16, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL17, %r10
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
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL18, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL19, %r10
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
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$0, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL20, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL21, %r10
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
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$0, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL22, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL23, %r10
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
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$0, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL24, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL25, %r10
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
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL26, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL27, %r10
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
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$0, -24(%rbp)

mov		-24(%rbp), %r10
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

.globl	or
.type	or, @function 
or: 
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL29, %r10
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

movq 	$0, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL30, %r10
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

mov		$.SL31, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL32(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL33(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
addss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

mov		$.SL34, %r10
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

mov		$.SL35, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL36(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL37(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
subss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

mov		$.SL38, %r10
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

mov		$.SL39, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL40(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL41(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
mulss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

mov		$.SL42, %r10
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

mov		$.SL43, %r10
mov	 	%r10, %rdi

mov		-48(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL44(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL45(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
divss		-72(%rbp), %xmm0 
movss		%xmm0, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

mov		$.SL46, %r10
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

mov		$.SL47, %r10
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

mov		$.SL48, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL49(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL50(%rip), %r10
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

mov		$.SL51, %r10
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

mov		$.SL52, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL53(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL54(%rip), %r10
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

mov		$.SL55, %r10
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

mov		$.SL56, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL57(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL58(%rip), %r10
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

mov		$.SL59, %r10
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

mov		$.SL60, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL61(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL62(%rip), %r10
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

mov		$.SL63, %r10
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

mov		$.SL64, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL65(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov	.FL66(%rip), %r10
mov	%r10, -72(%rbp)

movss		-64(%rbp), %xmm0 
ucomiss		-72(%rbp), %xmm0 
jp	.L67 
movss		-64(%rbp), %xmm0 
ucomiss		-72(%rbp), %xmm0 
jne	.L67 
movq		$1, %rax 
jmp	.L68 
.L67: 
movq		$0, %rax 
.L68: 
mov	%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL69, %r10
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

mov		$.SL70, %r10
mov	 	%r10, %rdi

mov		-16(%rbp), %r10
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
	ucomiss		-72(%rbp), %xmm0 
	jp	.L73 
	movss		-64(%rbp), %xmm0 
	ucomiss		-72(%rbp), %xmm0 
	je	.L74 
.L73: 
	movq		$1, %rax 
	jmp	.L75 
.L74: 
	movq		$0, %rax 
.L75: 
	mov		%rax, -80(%rbp) 

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL76, %r10
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
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

movq 	$0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov		$.SL77, %r10
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
enter   $(8 * 4), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$1, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

mov		-16(%rbp), %r10
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

