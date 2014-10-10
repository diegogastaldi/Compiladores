.L06: 
		.string "%dMcd" 

.text

.globl	maxcomdiv
.type	maxcomdiv, @function 
maxcomdiv: 
enter   $(4 * 3), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -3(%rbp)

movl		-3(%rbp), %eax
movl		%eax, -4(%rbp)

.beginWhile1: 

movl 	$0, -7(%rbp)

movl		-4(%rbp), %eax
cmpl		-7(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -11(%rbp)

movl 	$1, -15(%rbp)

movl		-15(%rbp), %eax
cmpl 	-11(%rbp), %eax

jne 		.endWhile0

movl		-8(%rbp), %eax 
cltd
idivl	0
movl		%edx, -19(%rbp)

movl		$1, %eax
movl		%eax, -27(%rbp)

movl		-19(%rbp), %eax 
movl		-27(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -23(%rbp)

movl		-23(%rbp), %eax
movl		%eax, -4(%rbp)

movl		$1, %eax
movl		%eax, -35(%rbp)

movl		-35(%rbp), %eax 
movl		-8(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -31(%rbp)

movl		-31(%rbp), %eax
movl		%eax, 0(%rbp)

jmp 		.beginWhile1

jmp 		.beginWhile1

.endWhile0: 

.beginWhile3: 

movl 	$0, -39(%rbp)

movl		-4(%rbp), %eax
cmpl		-39(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -43(%rbp)

movl 	$1, -47(%rbp)

movl		-47(%rbp), %eax
cmpl 	-43(%rbp), %eax

jne 		.endWhile2

jmp 		.endWhile2

jmp 		.beginWhile3

.endWhile2: 

.beginWhile5: 

movl 	$0, -51(%rbp)

movl		-4(%rbp), %eax
cmpl		-51(%rbp), %eax
setne 	%al
movzbl %al, %eax
movl		%eax, -55(%rbp)

movl 	$1, -59(%rbp)

movl		-59(%rbp), %eax
cmpl 	-55(%rbp), %eax

jne 		.endWhile4

jmp 		.beginWhile5

.endWhile4: 

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

movl		$.L06, %edi
movl	 	%edi, -28(%rsp)

call 	printf

mov 		$0, %eax
leave
ret

