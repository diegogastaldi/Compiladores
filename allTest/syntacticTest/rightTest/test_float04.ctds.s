.L08: 
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

.globl	multRepeat
.type	multRepeat, @function 
multRepeat: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		4(%rbp), %eax 
movl		0(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -1(%rbp)

movl		4(%rbp), %eax 
movl		-1(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -5(%rbp)

movl		4(%rbp), %eax 
movl		-5(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -9(%rbp)

movl		0(%rbp), %eax 
movl		-9(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -13(%rbp)

movl		0(%rbp), %eax 
movl		-13(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -17(%rbp)

movl		-17(%rbp), %eax
movl		%eax, -12(%rbp)

movl		-12(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$15.0, -2(%rbp)

movl		-2(%rbp), %eax 
negl		%eax 
movl		%eax, -6(%rbp) 

movl		-6(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$4.3, -10(%rbp)

movl		-10(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$7.6, -14(%rbp)

movl		-14(%rbp), %eax 
negl		%eax 
movl		%eax, -18(%rbp) 

movl		-18(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$80.0, -22(%rbp)

movl		-22(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$2, -26(%rbp)

movl		-26(%rbp), %edi
movl	 	%edi, -30(%rsp)

movl		-16(%rbp), %edi
movl	 	%edi, -34(%rsp)

call 	potencia
movl 	%eax, -38(%rbp) 

movl		-38(%rbp), %eax
movl		%eax, -12(%rbp)

movl		-12(%rbp), %edi
movl	 	%edi, -46(%rsp)

movl		-8(%rbp), %edi
movl	 	%edi, -50(%rsp)

call 	multRepeat
movl 	%eax, -54(%rbp) 

movl		-54(%rbp), %edi
movl	 	%edi, -62(%rsp)

movl		$.L08, %edi
movl	 	%edi, -66(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

