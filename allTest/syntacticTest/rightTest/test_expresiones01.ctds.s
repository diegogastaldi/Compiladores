.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$50, -3(%rbp)

movl		-3(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$0, -7(%rbp)

movl		-8(%rbp), %eax
cmpl		-7(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -11(%rbp)

movl 	$1, -15(%rbp)

movl		-15(%rbp), %eax
cmpl 	-11(%rbp), %eax

jne 		.falseCond0

movl 	$4, -19(%rbp)

movl		-19(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$4, -23(%rbp)

movl 	0(%rbp), %eax
cmpl		-23(%rbp), %eax
sete		%al
movzbl	%al, %eax
movl		%eax, -27(%rbp)

movl 	$1, -31(%rbp)

movl		-31(%rbp), %eax
cmpl 	-27(%rbp), %eax

jne 		.falseCond1

.beginWhile3: 

movl 	$4, -35(%rbp)

movl		0(%rbp), %eax
cmpl		-35(%rbp), %eax
setl		%al
movzbl %al, %eax
movl		%eax, -39(%rbp)

movl 	$1, -43(%rbp)

movl		-43(%rbp), %eax
cmpl 	-39(%rbp), %eax

jne 		.endWhile2

.beginWhile5: 

movl 	$4, -47(%rbp)

movl		-8(%rbp), %eax
cmpl		-47(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -51(%rbp)

movl 	$1, -55(%rbp)

movl		-55(%rbp), %eax
cmpl 	-51(%rbp), %eax

jne 		.endWhile4

movl 	$1, -59(%rbp)

movl		-59(%rbp), %eax 
movl		-8(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -63(%rbp)

movl		-63(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$2, -67(%rbp)

movl		0(%rbp), %eax 
movl		-67(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -71(%rbp)

movl		-71(%rbp), %eax
movl		%eax, -4(%rbp)

jmp 		.beginWhile5

.endWhile4: 

movl 	$1, -75(%rbp)

movl		0(%rbp), %eax 
movl		-75(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -79(%rbp)

movl		-79(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$2, -83(%rbp)

movl		-4(%rbp), %eax 
cltd
idivl	-83
movl		%eax, -87(%rbp)

movl		-87(%rbp), %eax
movl		%eax, -4(%rbp)

jmp 		.beginWhile3

.endWhile2: 

.falseCond1: 

.falseCond0: 

movl		-4(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$6, 0(%rbp)

movl		0(%rbp), %edi
movl	 	%edi, -4(%rsp)

call 	prueba
movl 	%eax, -8(%rbp) 

movl		-8(%rbp), %edi
movl	 	%edi, -16(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

