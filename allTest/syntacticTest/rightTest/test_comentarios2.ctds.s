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

jne 		.falseCond1

movl		-32(%rbp), %eax
movl		%eax, -36(%rbp)

jmp 		.endIf2

.falseCond1: 

movl		-40(%rbp), %eax
movl		%eax, -44(%rbp)

.endIf2: 

movl		-48(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

call 	printf

mov 		$0, %eax
leave
ret

