.text

.globl	inc
.type	inc, @function 
inc: 
pushq	%rbp
movq		%rsp, %rbp

.beginWhile2: 

movl 	$1, -12(%rbp)

movl		-12(%rbp), %eax
cmpl 	-8(%rbp), %eax

jne 		.endWhile1

movl		-16(%rbp), %eax
leave
ret

jmp 		.endWhile1

jmp 		.beginWhile2

.endWhile1: 

movl 	$1, -20(%rbp)

movl		-20(%rbp), %eax
leave
ret

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

