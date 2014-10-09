.text

.globl	alo
.type	alo, @function 
alo: 
pushq	%rbp
movq		%rsp, %rbp

movl 	$1, -12(%rbp)

movl		-8(%rbp), %eax 
movl		-12(%rbp), %edx 
addl		%eax, %edx 
movl		%edx, -16(%rbp)

movl		-16(%rbp), %eax
movl		%eax, -20(%rbp)

mov 		$0, %eax
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

