.text

.globl	inc
.type	inc, @function 
inc: 
enter   $(4 * 0), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, 0(%rbp)

movl		0(%rbp), %eax 
movl		0(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -4(%rbp)

movl		-4(%rbp), %eax
leave
ret

.globl	resto
.type	resto, @function 
resto: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$3, -1(%rbp)

movl 	$2, -5(%rbp)

movl		-1(%rbp), %eax 
movl		-5(%rbp), %edx 
imull	%eax, %edx 
movl		%edx, -9(%rbp)

movl		4(%rbp), %eax
cmpl		-9(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -13(%rbp)

movl 	$1, -17(%rbp)

movl		-17(%rbp), %eax
cmpl 	-13(%rbp), %eax

jne 		.falseCond0

movl 	$3, -21(%rbp)

movl		4(%rbp), %eax 
cltd
idivl	-21
movl		%eax, -25(%rbp)

movl		-25(%rbp), %eax
movl		%eax, -4(%rbp)

jmp 		.endIf1

.falseCond0: 

movl 	$2, -29(%rbp)

movl		-29(%rbp), %eax 
cltd
idivl	4
movl		%edx, -33(%rbp)

movl		-33(%rbp), %eax
movl		%eax, -4(%rbp)

.endIf1: 

movl		-4(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
enter   $(4 * 1), $0 
pushq	%rbp
movq		%rsp, %rbp

movl 	$0, -1(%rbp)

movl		-1(%rbp), %eax
movl		%eax, 0(%rbp)

movl 	$10.2, -5(%rbp)

movl		-5(%rbp), %edi
movl	 	%edi, -9(%rsp)

movl 	$5, -13(%rbp)

movl		-13(%rbp), %edi
movl	 	%edi, -17(%rsp)

call 	inc
movl 	%eax, -21(%rbp) 

movl		-21(%rbp), %edi
movl	 	%edi, -29(%rsp)

call 	resto
movl 	%eax, -33(%rbp) 

movl 	$0, -41(%rbp)

movl 	-33, %ebx 
movl 	-41, %edx 
movl 	%ebx, -4(%rbp, %rdx, 4) 

mov 		$0, %eax
leave
ret

