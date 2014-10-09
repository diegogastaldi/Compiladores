.text

.globl	pruAritmetica
.type	pruAritmetica, @function 
pruAritmetica: 
pushq	%rbp
movq		%rsp, %rbp

movl		-16(%rbp), %eax
cmpl		-20(%rbp), %eax
setg		%al
movzbl	%al, %eax
movl		%eax, -24(%rbp)

movl 	$1, -28(%rbp)

movl		-28(%rbp), %eax
cmpl 	-24(%rbp), %eax

jne 		falseCondL1

movl 	$5, -36(%rbp)

movl		-32(%rbp), %eax 
movl		-36(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -40(%rbp)

movl		-40(%rbp), %eax
movl		%eax, -44(%rbp)

jmp 		endIfL2

.falseCondL1: 

movl		-48(%rbp), %eax
movl		%eax, -52(%rbp)

.endIfL2: 

movl		-56(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf()

mov 		$0, %eax
leave
ret

