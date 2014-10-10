.text

.globl	pruContinue
.type	pruContinue, @function 
pruContinue: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1.0, -3(%rbp)

movl		-3(%rbp), %eax 
negl		%eax 
movl		%eax, -7(%rbp) 

movl		-7(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$23, -11(%rbp)

movl		-11(%rbp), %eax
movl		%eax, -4(%rbp)

movl 	$23.0, -15(%rbp)

movl		-15(%rbp), %eax
movl		%eax, 0(%rbp)

.beginWhile1: 

movl 	$0, -19(%rbp)

movl		0(%rbp), %eax
cmpl		-19(%rbp), %eax
setge 	%al
movzbl %al, %eax
movl		%eax, -23(%rbp)

movl 	$1, -27(%rbp)

movl		-27(%rbp), %eax
cmpl 	-23(%rbp), %eax

jne 		.endWhile0

movl 	$1.0, -31(%rbp)

movl		-31(%rbp), %eax 
movl		0(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -35(%rbp)

movl		-35(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$2.0, -39(%rbp)

movl		4(%rbp), %eax
cmpl		-39(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -43(%rbp)

movl 	$1, -47(%rbp)

movl		-47(%rbp), %eax
cmpl 	-43(%rbp), %eax

jne 		.falseCond2

movl 	$0.0, -51(%rbp)

movl		0(%rbp), %eax
cmpl		-51(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -55(%rbp)

movl 	$1, -59(%rbp)

movl		-59(%rbp), %eax
cmpl 	-55(%rbp), %eax

jne 		.falseCond3

movl		4(%rbp), %eax 
movl		0(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -63(%rbp)

movl		-8(%rbp), %eax 
movl		-63(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -67(%rbp)

movl		-67(%rbp), %eax
movl		%eax, -8(%rbp)

.falseCond3: 

jmp 		.beginWhile1

jmp 		.endIf4

.falseCond2: 

movl 	$1000.2343, -71(%rbp)

movl		-71(%rbp), %eax 
negl		%eax 
movl		%eax, -75(%rbp) 

movl 	$6752.0, -79(%rbp)

movl		-75(%rbp), %eax 
movl		-79(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -83(%rbp)

movl		-83(%rbp), %eax
movl		%eax, -8(%rbp)

jmp 		.endWhile0

.endIf4: 

jmp 		.beginWhile1

.endWhile0: 

movl 	$2.0, -87(%rbp)

movl		-87(%rbp), %eax 
movl		-8(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -91(%rbp)

movl		-91(%rbp), %eax 
negl		%eax 
movl		%eax, -95(%rbp) 

movl		-95(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 2), $0 
pushq	%rbp
movq		%rsp, %rbp

movl		-4(%rbp), %edi
movl	 	%edi, -2(%rsp)

movl		0(%rbp), %edi
movl	 	%edi, -6(%rsp)

call 	pruContinue
movl 	%eax, -10(%rbp) 

movl		-10(%rbp), %edi
movl	 	%edi, -18(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

