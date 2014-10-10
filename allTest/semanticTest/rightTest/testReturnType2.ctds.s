.text

.globl	a
.type	a, @function 
a: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -4(%rbp)

movl 	$1, -8(%rbp)

movl		-8(%rbp), %eax
cmpl 	-4(%rbp), %eax

jne 		.falseCond1

movl 	$0, -12(%rbp)

movl		-12(%rbp), %eax
leave
ret

jmp 		.endIf2

.falseCond1: 

movl 	$0, -16(%rbp)

movl		-16(%rbp), %eax
leave
ret

.endIf2: 

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

