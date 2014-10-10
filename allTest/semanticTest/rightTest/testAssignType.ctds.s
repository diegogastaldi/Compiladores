.text

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

.globl	main2
.type	main2, @function 
main2: 
pushq	%rbp
movq		%rsp, %rbp

movl		-8(%rbp), %eax
movl		%eax, -12(%rbp)

mov 		$0, %eax
leave
ret

