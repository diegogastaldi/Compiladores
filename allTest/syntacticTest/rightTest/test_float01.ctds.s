.L05: 
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
movl		%eax, -4(%rbp)

movl 	$1, -7(%rbp)

movl		-7(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$1.0, -11(%rbp)

movl		-11(%rbp), %eax
movl		%eax, -8(%rbp)

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

cmpl		$0, -4(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -31(%rbp) 

movl		-31(%rbp), %eax
movl		%eax, -4(%rbp)

.falseCond0: 

.beginWhile2: 

movl		0(%rbp), %eax
cmpl		0(%rbp), %eax
setle 	%al
movzbl %al, %eax
movl		%eax, -35(%rbp)

movl 	$1, -39(%rbp)

movl		-39(%rbp), %eax
cmpl 	-35(%rbp), %eax

jne 		.endWhile1

movl		-8(%rbp), %eax 
movl		4(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -43(%rbp)

movl		-43(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$1, -47(%rbp)

movl		0(%rbp), %eax 
movl		-47(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -51(%rbp)

movl		-51(%rbp), %eax
movl		%eax, 0(%rbp)

jmp 		.beginWhile2

.endWhile1: 

cmpl		$0, -4(%rbp) 
sete		%al 
movzbl	%al, %eax 
movl		%eax, -55(%rbp) 

movl 	$1, -59(%rbp)

movl		-59(%rbp), %eax
cmpl 	-55(%rbp), %eax

jne 		.falseCond3

movl 	$1.0, -63(%rbp)

movl		-63(%rbp), %eax 
cltd
idivl	-8
movl		%eax, -67(%rbp)

movl		-67(%rbp), %eax
leave
ret

jmp 		.endIf4

.falseCond3: 

movl		-8(%rbp), %eax
leave
ret

.endIf4: 

movl 	$100.1, -71(%rbp)

movl		-71(%rbp), %eax 
negl		%eax 
movl		%eax, -75(%rbp) 

movl		-75(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$8.0, -2(%rbp)

movl		-2(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$2, -6(%rbp)

movl		-6(%rbp), %edi
movl	 	%edi, -10(%rsp)

movl		-4(%rbp), %edi
movl	 	%edi, -14(%rsp)

call 	potencia
movl 	%eax, -18(%rbp) 

movl		-18(%rbp), %eax
movl		%eax, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -26(%rsp)

movl		$.L05, %edi
movl	 	%edi, -30(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

