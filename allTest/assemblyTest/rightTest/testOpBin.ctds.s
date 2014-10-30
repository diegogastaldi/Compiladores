.SL57: 
		.string "!true = %d \n" 

.SL56: 
		.string "true | false = %d \n" 

.SL52: 
		.string "true & false = %d \n" 

.SL49: 
		.string "2.2 != 3.8 = %d \n" 

.FL45: 
		.float 3.8 

.FL44: 
		.float 2.2 

.SL43: 
		.string "2 != 3 = %d \n" 

.SL42: 
		.string "2.2 == 3.8 = %d \n" 

.FL39: 
		.float 3.8 

.FL38: 
		.float 2.2 

.SL37: 
		.string "2 == 3 = %d \n" 

.SL36: 
		.string "2.2 > 3.8 = %d \n" 

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
		.string "2.2 < 3.8 = %d \n" 

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
		.float 3.8 

.FL9: 
		.float 2.2 

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
		.float 3.8 

.FL1: 
		.float 2.2 

.SL0: 
		.string "2 + 3 = %d \n" 

.text

.comm f1, 8

.comm i1, 8

.globl	sum
.type	sum, @function 
sum: 
enter   $(8 * 16), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$2, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		-48(%rbp), %r10 
mov		-24(%rbp), %r11 
add		%r10, %r11 
mov		%r11, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov		$.SL0, %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL1(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL2(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-96(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -112(%rbp) 

mov		$.SL3, %r10
mov	 	%r10, %rdi

movss		-112(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	minus
.type	minus, @function 
minus: 
enter   $(8 * 16), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$2, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		-24(%rbp), %r10 
mov		-48(%rbp), %r11 
sub		%r10, %r11 
mov		%r11, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov		$.SL4, %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL5(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL6(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-16(%rbp), %xmm0 
subss		-96(%rbp), %xmm0 
movss		%xmm0, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -112(%rbp) 

mov		$.SL7, %r10
mov	 	%r10, %rdi

movss		-112(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	multiply
.type	multiply, @function 
multiply: 
enter   $(8 * 16), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$2, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		-48(%rbp), %r10 
mov		-24(%rbp), %r11 
imul		%r11, %r10 
mov		%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov		$.SL8, %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL9(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL10(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-96(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -112(%rbp) 

mov		$.SL11, %r10
mov	 	%r10, %rdi

movss		-112(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	div
.type	div, @function 
div: 
enter   $(8 * 16), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$2, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov		-48(%rbp), %rax 
cltd
idivq	-24(%rbp) 
mov		%rax, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -64(%rbp) 

mov		$.SL12, %r10
mov	 	%r10, %rdi

mov		-64(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL13(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL14(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-16(%rbp), %xmm0 
divss		-96(%rbp), %xmm0 
movss		%xmm0, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -112(%rbp) 

mov		$.SL15, %r10
mov	 	%r10, %rdi

movss		-112(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	unaryminus
.type	unaryminus, @function 
unaryminus: 
enter   $(8 * 12), $0 

movq 	$2, -16(%rbp)

mov		-16(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -24(%rbp) 

mov		-24(%rbp), %rax 
neg		%rax 
mov		%rax, -32(%rbp) 

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		$.SL16, %r10
mov	 	%r10, %rdi

mov		-40(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL17(%rip), %r10
mov	%r10, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -64(%rbp) 

movss		-64(%rbp), %xmm1 
movss		.FL18(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -72(%rbp) 

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -80(%rbp) 

mov		$.SL19, %r10
mov	 	%r10, %rdi

movss		-80(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mod
.type	mod, @function 
mod: 
enter   $(8 * 8), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		-40(%rbp), %rax 
cltd
idivq	-16(%rbp)
movl		%edx, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		$.SL20, %r10
mov	 	%r10, %rdi

mov		-56(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	menor
.type	menor, @function 
menor: 
enter   $(8 * 14), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		-56(%rbp), %rax
cmp		-24(%rbp), %rax
setl		%al
movzb 	%al, %rax
mov		%rax, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL21, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL22(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL23(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-96(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL24, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	menorigual
.type	menorigual, @function 
menorigual: 
enter   $(8 * 14), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		-56(%rbp), %rax
cmp		-24(%rbp), %rax
setle 	%al
movzb  %al, %rax
mov		%rax, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL25, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL26(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL27(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-96(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL28, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mayorigual
.type	mayorigual, @function 
mayorigual: 
enter   $(8 * 14), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		-56(%rbp), %rax
cmp		-24(%rbp), %rax
setge 	%al
movzb 	%al, %rax
mov		%rax, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL29, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL30(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL31(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-96(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL32, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	mayor
.type	mayor, @function 
mayor: 
enter   $(8 * 14), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		-56(%rbp), %rax
cmp		-24(%rbp), %rax
setg		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL33, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL34(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL35(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-96(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL36, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	igual
.type	igual, @function 
igual: 
enter   $(8 * 14), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov 		-56(%rbp), %rax
cmp		-24(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL37, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL38(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL39(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

movss		-96(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
jp	.L40 
movss		-96(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
jne	.L40 
movq		$1, %rax 
jmp	.L41 
.L40: 
movq		$0, %rax 
.L41: 
mov	%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL42, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	distinto
.type	distinto, @function 
distinto: 
enter   $(8 * 14), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq		$0, %r10
mov		%r10, -24(%rbp)

movq 	$2, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$3, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		-56(%rbp), %rax
cmp		-24(%rbp), %rax
setne 	%al
movzb 	%al, %rax
mov		%rax, -64(%rbp)

mov		-64(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL43, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL44(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL45(%rip), %r10
mov	%r10, -88(%rbp)

mov		-88(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -96(%rbp) 

	movss		-96(%rbp), %xmm0 
	ucomiss		-16(%rbp), %xmm0 
	jp	.L46 
	movss		-96(%rbp), %xmm0 
	ucomiss		-16(%rbp), %xmm0 
	je	.L47 
.L46: 
	movq		$1, %rax 
	jmp	.L48 
.L47: 
	movq		$0, %rax 
.L48: 
	mov		%rax, -104(%rbp) 

mov		-104(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL49, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	and
.type	and, @function 
and: 
enter   $(8 * 8), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

cmpq		$0, -24(%rbp)
je 		.L50
cmpq		$0, -16(%rbp)
je 		.L50
mov		$1, %r10
jmp		.L51
.L50:
mov		$0, %r10
.L51:
mov		%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL52, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	or
.type	or, @function 
or: 
enter   $(8 * 8), $0 

movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -24(%rbp)

movq 	$0, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

cmpq		$0, -24(%rbp)
jne 		.L53
cmpq		$0, -16(%rbp)
je 		.L54
.L53: 
mov		$1, %r10
jmp 		.L55
.L54:
mov		$0, %r10
.L55:
mov		%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL56, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
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

mov		-24(%rbp), %r10
mov		%r10, -16(%rbp)

cmpq		$0, -16(%rbp) 
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

