.SL54: 
		.string "!true = %d \n" 

.SL53: 
		.string "true | false = %d \n" 

.SL49: 
		.string "true & false = %d \n" 

.SL46: 
		.string "2.2 != 3.8 = %d \n" 

.FL42: 
		.float 3.8 

.FL41: 
		.float 2.2 

.SL40: 
		.string "2 != 3 = %d \n" 

.SL39: 
		.string "0 == 0 = %d \n" 

.SL38: 
		.string "2 == 3 = %d \n" 

.SL37: 
		.string "2.2 > 3.8 = %d \n" 

.FL36: 
		.float 3.8 

.FL35: 
		.float 2.2 

.SL34: 
		.string "2 > 3 = %d \n" 

.SL33: 
		.string "2.2 >= 3.8 = %d \n" 

.FL32: 
		.float 3.8 

.FL31: 
		.float 2.2 

.SL30: 
		.string "2 >= 3 = %d \n" 

.SL29: 
		.string "2.2 <= 3.8 = %d \n" 

.FL28: 
		.float 3.8 

.FL27: 
		.float 2.2 

.SL26: 
		.string "2 <= 3 = %d \n" 

.SL25: 
		.string "2.2 < 3.8 = %d \n" 

.FL24: 
		.float 3.8 

.FL23: 
		.float 2.2 

.SL22: 
		.string "2 < 3 = %d \n" 

.SL21: 
		.string "2 % 1 = %d \n" 

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
enter   $(8 * 14), $0 


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
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL2(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

movss		-88(%rbp), %xmm0 
addss		-16(%rbp), %xmm0 
movss		%xmm0, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -104(%rbp) 

mov		$.SL3, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	minus
.type	minus, @function 
minus: 
enter   $(8 * 14), $0 


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
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL6(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

movss		-16(%rbp), %xmm0 
subss		-88(%rbp), %xmm0 
movss		%xmm0, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -104(%rbp) 

mov		$.SL7, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	multiply
.type	multiply, @function 
multiply: 
enter   $(8 * 14), $0 


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
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL10(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

movss		-88(%rbp), %xmm0 
mulss		-16(%rbp), %xmm0 
movss		%xmm0, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -104(%rbp) 

mov		$.SL11, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
cvtps2pd	%xmm0, %xmm0 

mov 		$1, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	div
.type	div, @function 
div: 
enter   $(8 * 14), $0 


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
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL14(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

movss		-16(%rbp), %xmm0 
divss		-88(%rbp), %xmm0 
movss		%xmm0, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -104(%rbp) 

mov		$.SL15, %r10
mov	 	%r10, %rdi

movss		-104(%rbp), %xmm0
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
mov	%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -56(%rbp) 

movss		-56(%rbp), %xmm1 
movss		.FL18(%rip), %xmm0 
subss		%xmm1, %xmm0 
movss		%xmm0, -64(%rbp) 

mov		-64(%rbp), %r10
mov		%r10, f1(%rip)

mov 		f1(%rip), %r10 
mov		%r10, -72(%rbp) 

mov		$.SL19, %r10
mov	 	%r10, %rdi

movss		-72(%rbp), %xmm0
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
mov		%rdx, -48(%rbp)

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

.globl	mod2
.type	mod2, @function 
mod2: 
enter   $(8 * 8), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq 	$2, -24(%rbp)

mov		-24(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$1, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -40(%rbp) 

mov		-40(%rbp), %rax 
cltd
idivq	-16(%rbp)
mov		%rdx, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, i1(%rip)

mov 		i1(%rip), %r10 
mov		%r10, -56(%rbp) 

mov		$.SL21, %r10
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
enter   $(8 * 12), $0 


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

mov		$.SL22, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL23(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL24(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-88(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL25, %r10
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
enter   $(8 * 12), $0 


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

mov		$.SL26, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL27(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL28(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

movss		-16(%rbp), %xmm0 
ucomiss		-88(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL29, %r10
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
enter   $(8 * 12), $0 


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

mov		$.SL30, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL31(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL32(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

movss		-88(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
setae		%al 
movzb		%al, %rax 
mov 		%rax, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL33, %r10
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
enter   $(8 * 12), $0 


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

mov		$.SL34, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL35(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL36(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

movss		-88(%rbp), %xmm0 
ucomiss		-16(%rbp), %xmm0 
seta			%al 
movzb		%al, %rax 
mov 		%rax, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL37, %r10
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
enter   $(8 * 8), $0 


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

mov		$.SL38, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	igual2
.type	igual2, @function 
igual2: 
enter   $(8 * 8), $0 


movq		$0, %r10
mov		%r10, -8(%rbp)

movq		$0, %r10
mov		%r10, -16(%rbp)

movq 	$0, -32(%rbp)

mov		-32(%rbp), %r10
mov		%r10, i1(%rip)

movq 	$0, -40(%rbp)

mov		-40(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		i1(%rip), %r10 
mov		%r10, -48(%rbp) 

mov 		-48(%rbp), %rax
cmp		-16(%rbp), %rax
sete		%al
movzb	%al, %rax
mov		%rax, -56(%rbp)

mov		-56(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL39, %r10
mov	 	%r10, %rdi

mov		-24(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov 		$0, %rax
leave
ret

.globl	distinto
.type	distinto, @function 
distinto: 
enter   $(8 * 12), $0 


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

mov		$.SL40, %r10
mov	 	%r10, %rdi

mov		-32(%rbp), %r10
mov	 	%r10, %rsi

mov 		$0, %rax 

call 	printf

mov	.FL41(%rip), %r10
mov	%r10, -72(%rbp)

mov		-72(%rbp), %r10
mov		%r10, f1(%rip)

mov	.FL42(%rip), %r10
mov	%r10, -80(%rbp)

mov		-80(%rbp), %r10
mov		%r10, -16(%rbp)

mov 		f1(%rip), %r10 
mov		%r10, -88(%rbp) 

	movss		-88(%rbp), %xmm0 
	ucomiss		-16(%rbp), %xmm0 
	jp	.L43 
	movss		-88(%rbp), %xmm0 
	ucomiss		-16(%rbp), %xmm0 
	je	.L44 
.L43: 
	movq		$1, %rax 
	jmp	.L45 
.L44: 
	movq		$0, %rax 
.L45: 
	mov		%rax, -96(%rbp) 

mov		-96(%rbp), %r10
mov		%r10, -32(%rbp)

mov		$.SL46, %r10
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
enter   $(8 * 6), $0 


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
je 		.L47
cmpq		$0, -16(%rbp)
je 		.L47
mov		$1, %r10
jmp		.L48
.L47:
mov		$0, %r10
.L48:
mov		%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL49, %r10
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
enter   $(8 * 6), $0 


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
jne 		.L50
cmpq		$0, -16(%rbp)
je 		.L51
.L50: 
mov		$1, %r10
jmp 		.L52
.L51:
mov		$0, %r10
.L52:
mov		%r10, -48(%rbp)

mov		-48(%rbp), %r10
mov		%r10, -24(%rbp)

mov		$.SL53, %r10
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
enter   $(8 * 4), $0 


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

mov		$.SL54, %r10
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

call 	mod2

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

call 	igual2

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

