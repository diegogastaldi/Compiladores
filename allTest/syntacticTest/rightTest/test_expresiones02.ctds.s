.text

.globl	prueba
.type	prueba, @function 
prueba: 
enter   $(4 * 5), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$4, -5(%rbp)

movl		-5(%rbp), %eax
movl		%eax, -8(%rbp)

movl 	$5, -9(%rbp)

movl		-9(%rbp), %eax
movl		%eax, -12(%rbp)

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -13(%rbp)

movl		-13(%rbp), %eax
movl		%eax, 0(%rbp)

movl		0(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -17(%rbp)

movl		-17(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$3, -21(%rbp)

movl		-21(%rbp), %eax
movl		%eax, -16(%rbp)

movl 	$2, -25(%rbp)

movl		-25(%rbp), %eax 
movl		-16(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -29(%rbp)

movl		-29(%rbp), %eax
movl		%eax, -4(%rbp)

movl		0(%rbp), %eax 
cltd
idivl	-4
movl		%eax, -33(%rbp)

movl 	$5, -37(%rbp)

movl		-33(%rbp), %eax
cmpl		-37(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -41(%rbp)

movl 	$1, -45(%rbp)

movl		-45(%rbp), %eax
cmpl 	-41(%rbp), %eax

jne 		.falseCond0

movl 	$1, -49(%rbp)

movl		-49(%rbp), %eax
leave
ret

jmp 		.endIf1

.falseCond0: 

movl 	$0, -53(%rbp)

movl		-53(%rbp), %eax
leave
ret

.endIf1: 

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

