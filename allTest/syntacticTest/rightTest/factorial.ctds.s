.text

.globl	main
.type	main, @function 
main: 
pushq	%rbp
movq		%rsp, %rbp

mov 		$0, %eax
leave
ret

.globl	met
.type	met, @function 
met: 
pushq	%rbp
movq		%rsp, %rbp

movl		-20(%rbp), %eax 
movl		-16(%rbp), %edx 
subl		%eax, %edx 
movl		%edx, -24(%rbp)

movl		-24(%rbp), %eax
movl		%eax, -28(%rbp)

movl		-32(%rbp), %eax
leave
ret

