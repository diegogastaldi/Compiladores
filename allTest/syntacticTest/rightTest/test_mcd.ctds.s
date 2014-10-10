.L04: 
		.string "mcd%d" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		4(%rbp), %eax
cmpl		0(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -3(%rbp)

movl 	$1, -7(%rbp)

movl		-7(%rbp), %eax
cmpl 	-3(%rbp), %eax

jne 		.falseCond0

movl		4(%rbp), %eax
movl		%eax, 0(%rbp)

movl		0(%rbp), %eax
movl		%eax, -8(%rbp)

jmp 		.endIf1

.falseCond0: 

movl		0(%rbp), %eax
movl		%eax, 0(%rbp)

movl		4(%rbp), %eax
movl		%eax, -8(%rbp)

.endIf1: 

movl 	$1, -11(%rbp)

movl		-11(%rbp), %eax
movl		%eax, -4(%rbp)

.beginWhile3: 

movl 	$0, -15(%rbp)

movl		-4(%rbp), %eax
cmpl		-15(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -19(%rbp)

movl 	$1, -23(%rbp)

movl		-23(%rbp), %eax
cmpl 	-19(%rbp), %eax

jne 		.endWhile2

movl		-8(%rbp), %eax 
cltd
idivl	0
movl		%edx, -27(%rbp)

movl		-27(%rbp), %eax
movl		%eax, -4(%rbp)

movl		-8(%rbp), %eax
movl		%eax, 0(%rbp)

movl		-4(%rbp), %eax
movl		%eax, -8(%rbp)

jmp 		.beginWhile3

.endWhile2: 

movl		0(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$9, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

movl 	$6, -8(%rbp)

movl		-8(%rbp), %edi
movl	 	%edi, -12(%rsp)

call 	maxcomdiv
movl 	%eax, -16(%rbp) 

movl		-16(%rbp), %edi
movl	 	%edi, -24(%rsp)

movl		$.L04, %edi
movl	 	%edi, -28(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

